package com.callapp.contacts.popup.contact;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Intent;
import android.provider.ContactsContract;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.ResultPopup;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/BaseContactPopup.class */
public abstract class BaseContactPopup extends ResultPopup {

    /* renamed from: c  reason: collision with root package name */
    protected final ContactData f15424c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseContactPopup(ContactData contactData) {
        this.f15424c = contactData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent a(ContactData contactData) {
        Intent a2 = a(contactData, "android.intent.action.EDIT");
        return a2 != null ? a2 : a(contactData, "android.intent.action.VIEW");
    }

    private static Intent a(ContactData contactData, String str) {
        long deviceId = contactData.getDeviceId();
        if (contactData.getDeviceId() == 0) {
            return null;
        }
        contactData.assertDeviceDataExist();
        Intent intent = new Intent(str, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, deviceId));
        if (Activities.a(intent)) {
            return intent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(Intent intent) {
        if (intent == null || intent.getData() == null) {
            return 0L;
        }
        String lastPathSegment = intent.getData().getLastPathSegment();
        if (!StringUtils.b((CharSequence) lastPathSegment)) {
            return 0L;
        }
        try {
            return Long.parseLong(lastPathSegment);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    protected abstract void a(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j, final boolean z) {
        if (j != 0) {
            this.f15424c.setDeviceId(j);
            this.f15424c.fireChange(ContactField.deviceIdChanged);
            ContactData contactData = this.f15424c;
            UserCorrectedInfoUtil.a(contactData, contactData.getPhone(), false);
            return;
        }
        new Task() { // from class: com.callapp.contacts.popup.contact.BaseContactPopup.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                ContactDataUtils.verifyContactInDevice(BaseContactPopup.this.f15424c);
                if (BaseContactPopup.this.f15424c.getDeviceId() != 0) {
                    if (z) {
                        BaseContactPopup.this.f15424c.assertDeviceDataExist();
                        BaseContactPopup.this.f15424c.getDeviceData().setPhotoUrl(null);
                        BaseContactPopup.this.f15424c.resetDevicePhotoIfNeeded();
                    }
                    UserCorrectedInfoUtil.a(BaseContactPopup.this.f15424c, BaseContactPopup.this.f15424c.getPhone(), false);
                    BaseContactPopup.this.f15424c.updatePhoto();
                    FastCacheDataManager.b(BaseContactPopup.this.f15424c);
                    ContactUtils.b();
                    BaseContactPopup.this.f15424c.fireChange(EnumSet.of(ContactField.photoUrl, ContactField.deviceIdChanged));
                }
            }
        }.execute();
    }

    @Override // com.callapp.contacts.manager.popup.ResultPopup
    public abstract void a(Activity activity);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(long j) {
        a(j, false);
    }

    @Override // com.callapp.contacts.manager.popup.ActivityResult
    public abstract void onActivityResult(Activity activity, int i, int i2, Intent intent);
}
