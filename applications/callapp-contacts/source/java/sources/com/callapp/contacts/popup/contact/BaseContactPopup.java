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

    /* renamed from: c */
    protected final ContactData f27007c;

    public BaseContactPopup(ContactData contactData) {
        this.f27007c = contactData;
    }

    /* renamed from: a */
    public static Intent m28010a(ContactData contactData) {
        Intent m28009a = m28009a(contactData, "android.intent.action.EDIT");
        return m28009a != null ? m28009a : m28009a(contactData, "android.intent.action.VIEW");
    }

    /* renamed from: a */
    private static Intent m28009a(ContactData contactData, String str) {
        long deviceId = contactData.getDeviceId();
        if (contactData.getDeviceId() != 0) {
            contactData.assertDeviceDataExist();
            Intent intent = new Intent(str, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, deviceId));
            if (!Activities.m27672a(intent)) {
                return null;
            }
            return intent;
        }
        return null;
    }

    /* renamed from: b */
    public static long m28007b(Intent intent) {
        if (intent == null || intent.getData() == null) {
            return 0L;
        }
        String lastPathSegment = intent.getData().getLastPathSegment();
        if (!StringUtils.m26045b((CharSequence) lastPathSegment)) {
            return 0L;
        }
        try {
            return Long.parseLong(lastPathSegment);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    /* renamed from: a */
    protected abstract void mo27942a(long j);

    /* renamed from: a */
    public final void m28011a(long j, final boolean z) {
        if (j == 0) {
            new Task() { // from class: com.callapp.contacts.popup.contact.BaseContactPopup.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    ContactDataUtils.verifyContactInDevice(BaseContactPopup.this.f27007c);
                    if (BaseContactPopup.this.f27007c.getDeviceId() != 0) {
                        if (z) {
                            BaseContactPopup.this.f27007c.assertDeviceDataExist();
                            BaseContactPopup.this.f27007c.getDeviceData().setPhotoUrl(null);
                            BaseContactPopup.this.f27007c.resetDevicePhotoIfNeeded();
                        }
                        UserCorrectedInfoUtil.m27344a(BaseContactPopup.this.f27007c, BaseContactPopup.this.f27007c.getPhone(), false);
                        BaseContactPopup.this.f27007c.updatePhoto();
                        FastCacheDataManager.m28942b(BaseContactPopup.this.f27007c);
                        ContactUtils.m28312b();
                        BaseContactPopup.this.f27007c.fireChange(EnumSet.of(ContactField.photoUrl, ContactField.deviceIdChanged));
                    }
                }
            }.execute();
            return;
        }
        this.f27007c.setDeviceId(j);
        this.f27007c.fireChange(ContactField.deviceIdChanged);
        ContactData contactData = this.f27007c;
        UserCorrectedInfoUtil.m27344a(contactData, contactData.getPhone(), false);
    }

    @Override // com.callapp.contacts.manager.popup.ResultPopup
    /* renamed from: a */
    public abstract void mo27637a(Activity activity);

    /* renamed from: b */
    public final void m28008b(long j) {
        m28011a(j, false);
    }

    @Override // com.callapp.contacts.manager.popup.ActivityResult
    public abstract void onActivityResult(Activity activity, int i, int i2, Intent intent);
}
