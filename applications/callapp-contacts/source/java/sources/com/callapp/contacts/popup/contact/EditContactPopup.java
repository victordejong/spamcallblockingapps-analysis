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

    /* renamed from: a */
    private boolean f27264a;

    /* renamed from: b */
    private BaseContactPopup f27265b;

    /* renamed from: d */
    private String f27266d;

    /* renamed from: f */
    private String f27267f;

    public EditContactPopup(ContactData contactData) {
        this(contactData, false);
    }

    public EditContactPopup(ContactData contactData, boolean z) {
        super(contactData);
        this.f27266d = null;
        this.f27267f = contactData.getFullName();
        this.f27264a = z;
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup
    /* renamed from: a */
    protected final void mo27942a(long j) {
        m28008b(j);
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ResultPopup
    /* renamed from: a */
    public final void mo27637a(Activity activity) {
        if (!this.f27007c.isContactInDevice()) {
            if (this.f27264a) {
                this.f27265b = new AddContactPopup(this.f27007c) { // from class: com.callapp.contacts.popup.contact.EditContactPopup.1
                    @Override // com.callapp.contacts.popup.contact.AddContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                    /* renamed from: a */
                    public final void mo27942a(long j) {
                        EditContactPopup.this.mo27942a(j);
                    }
                };
            } else {
                this.f27265b = new NoDeviceContactPopup(this.f27007c) { // from class: com.callapp.contacts.popup.contact.EditContactPopup.2
                    @Override // com.callapp.contacts.popup.contact.NoDeviceContactPopup, com.callapp.contacts.popup.contact.BaseContactPopup
                    /* renamed from: a */
                    public final void mo27942a(long j) {
                        EditContactPopup.this.mo27942a(j);
                    }
                };
            }
            this.f27265b.mo27637a(activity);
        } else if (this.f27007c.getDeviceId() == 0) {
        } else {
            this.f27266d = ContactUtils.m28302e(this.f27007c.getDeviceId());
            Intent a = m28010a(this.f27007c);
            if (a != null) {
                m28185a(activity, a);
                return;
            }
            FeedbackManager.get().m28671a(Activities.getString(2131886512));
            activity.finish();
        }
    }

    @Override // com.callapp.contacts.popup.contact.BaseContactPopup, com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        BaseContactPopup baseContactPopup = this.f27265b;
        if (baseContactPopup != null) {
            baseContactPopup.onActivityResult(activity, i, i2, intent);
            return;
        }
        activity.finish();
        long b = m28007b(intent);
        String m28302e = ContactUtils.m28302e(this.f27007c.getDeviceId());
        long deviceId = this.f27007c.getDeviceId();
        if (deviceId != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(String.valueOf(deviceId));
            List<String> m28309b = ContactUtils.m28309b(arrayList);
            if (CollectionUtils.m26068b(m28309b)) {
                String str = m28309b.get(0);
                if (!StringUtils.m26042b(this.f27267f, str)) {
                    this.f27007c.assertIntentDataExists();
                    this.f27007c.getIntentData().setFullName(null);
                    this.f27007c.assertDeviceDataExist();
                    this.f27007c.getDeviceData().getNames().remove(this.f27267f);
                    this.f27007c.getDeviceData().setFullName(str);
                    this.f27007c.resetPhoto();
                    SuggestContactManager.m28471b(deviceId);
                    UserPositiveNegativeManager.m28890a(deviceId);
                    this.f27007c.resetOnlyNotSureNetworks();
                    this.f27007c.updateFullName();
                }
            }
        }
        m28011a(b, !StringUtils.m26042b(this.f27266d, m28302e));
    }
}
