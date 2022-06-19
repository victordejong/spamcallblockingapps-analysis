package com.callapp.contacts.popup.selection;

import android.app.Activity;
import android.content.Intent;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.select.MutualFriendsActivity;
import com.callapp.contacts.activity.select.PersonSelectActivity;
import com.callapp.contacts.manager.popup.ResultPopup;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.util.Activities;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/selection/PersonSelectPopup.class */
public class PersonSelectPopup extends ResultPopup {

    /* renamed from: a */
    public int f27357a;

    /* renamed from: b */
    public PersonSelectListener f27358b;

    /* renamed from: c */
    public boolean f27359c;

    /* renamed from: d */
    private List<PersonData> f27360d;

    /* renamed from: f */
    private String f27361f;

    /* renamed from: g */
    private String f27362g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener.class */
    public interface PersonSelectListener {
        /* renamed from: a */
        void mo27901a();

        /* renamed from: a */
        void mo27900a(String str);

        /* renamed from: b */
        void mo27899b();
    }

    public PersonSelectPopup() {
    }

    public PersonSelectPopup(List<PersonData> list) {
        this.f27360d = list;
    }

    @Override // com.callapp.contacts.manager.popup.ResultPopup
    /* renamed from: a */
    public final void mo27637a(Activity activity) {
        Intent addFlags = new Intent(CallAppApplication.get(), this.f27359c ? MutualFriendsActivity.class : PersonSelectActivity.class).putExtra("PERSON_SELECT_NET_ID", this.f27357a).putExtra("PERSON_SELECT_CONTACTS_FULL_NAME", this.f27361f).putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", this.f27362g).addFlags(Activities.getIntentFlagForNewDocument());
        List<PersonData> list = this.f27360d;
        if (list != null && !list.isEmpty()) {
            List<PersonData> list2 = this.f27360d;
            addFlags.putParcelableArrayListExtra("PERSON_SELECT_LIST_KEY", list2 instanceof ArrayList ? (ArrayList) list2 : new ArrayList<>(this.f27360d));
        }
        if (this.f27358b != null) {
            m28185a(activity, addFlags);
            return;
        }
        Activities.m27685a(activity, addFlags);
        activity.finish();
    }

    @Override // com.callapp.contacts.manager.popup.ResultPopup
    /* renamed from: a */
    public final void mo27902a(Intent intent) {
        intent.addFlags(Activities.getIntentFlagForNewDocument()).addFlags(536870912);
    }

    @Override // com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        activity.finish();
        if (i2 != -1) {
            PersonSelectListener personSelectListener = this.f27358b;
            if (personSelectListener == null) {
                return;
            }
            personSelectListener.mo27899b();
        } else if (this.f27358b == null) {
        } else {
            String stringExtra = intent.getStringExtra("PERSON_SELECT_SELECTED_USER_ID");
            if ("DONTHAVE".equals(stringExtra)) {
                this.f27358b.mo27901a();
            } else {
                this.f27358b.mo27900a(stringExtra);
            }
        }
    }

    public void setAutoSearchText(String str) {
        this.f27362g = str;
    }

    public void setContactsFullName(String str) {
        this.f27361f = str;
    }
}
