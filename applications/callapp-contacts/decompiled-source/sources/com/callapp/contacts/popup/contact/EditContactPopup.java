package com.callapp.contacts.popup.contact;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.SuggestContactManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/EditContactPopup.class */
public class EditContactPopup extends BaseContactPopup {

    /* renamed from: a  reason: collision with root package name */
    private boolean f15536a;

    /* renamed from: b  reason: collision with root package name */
    private BaseContactPopup f15537b;

    /* renamed from: d  reason: collision with root package name */
    private String f15538d;
    private String f;

    public EditContactPopup(ContactData contactData) {
        this(contactData, false);
    }

    public EditContactPopup(ContactData contactData, boolean z) {
        super(contactData);
        this.f15538d = null;
        this.f = contactData.getFullName();
        this.f15536a = z;
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup
    protected final void a(long j) {
        b(j);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    public final void a(Activity activity) {
        if (!this.f15424c.isContactInDevice()) {
            if (this.f15536a) {
                this.f15537b = new AddContactPopup(this.f15424c) { // from class: com.callapp.contacts.popup.contact.EditContactPopup.1
                    @Override // com.callapp.contacts.popup.contact.AddContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                    public final void a(long j) {
                        EditContactPopup.this.a(j);
                    }
                };
            } else {
                this.f15537b = new NoDeviceContactPopup(this.f15424c) { // from class: com.callapp.contacts.popup.contact.EditContactPopup.2
                    @Override // com.callapp.contacts.popup.contact.NoDeviceContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                    public final void a(long j) {
                        EditContactPopup.this.a(j);
                    }
                };
            }
            this.f15537b.a(activity);
        } else if (this.f15424c.getDeviceId() != 0) {
            this.f15538d = ContactUtils.e(this.f15424c.getDeviceId());
            Intent a2 = a(this.f15424c);
            if (a2 != null) {
                a(activity, a2);
                return;
            }
            FeedbackManager.get().a(Activities.getString(2131886512));
            activity.finish();
        }
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        BaseContactPopup baseContactPopup = this.f15537b;
        if (baseContactPopup != null) {
            baseContactPopup.onActivityResult(activity, i, i2, intent);
            return;
        }
        activity.finish();
        long b2 = b(intent);
        String e = ContactUtils.e(this.f15424c.getDeviceId());
        long deviceId = this.f15424c.getDeviceId();
        if (deviceId != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(String.valueOf(deviceId));
            List<String> b3 = ContactUtils.b(arrayList);
            if (CollectionUtils.b(b3)) {
                String str = b3.get(0);
                if (!StringUtils.b(this.f, str)) {
                    this.f15424c.assertIntentDataExists();
                    this.f15424c.getIntentData().setFullName(null);
                    this.f15424c.assertDeviceDataExist();
                    this.f15424c.getDeviceData().getNames().remove(this.f);
                    this.f15424c.getDeviceData().setFullName(str);
                    this.f15424c.resetPhoto();
                    SuggestContactManager.b(deviceId);
                    UserPositiveNegativeManager.a(deviceId);
                    this.f15424c.resetOnlyNotSureNetworks();
                    this.f15424c.updateFullName();
                }
            }
        }
        a(b2, !StringUtils.b(this.f15538d, e));
    }
}
