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

    /* renamed from: a  reason: collision with root package name */
    public int f15618a;

    /* renamed from: b  reason: collision with root package name */
    public PersonSelectListener f15619b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f15620c;

    /* renamed from: d  reason: collision with root package name */
    private List<PersonData> f15621d;
    private String f;
    private String g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener.class */
    public interface PersonSelectListener {
        void a();

        void a(String str);

        void b();
    }

    public PersonSelectPopup() {
    }

    public PersonSelectPopup(List<PersonData> list) {
        this.f15621d = list;
    }

    @Override // com.callapp.contacts.manager.popup.ResultPopup
    public final void a(Activity activity) {
        Intent addFlags = new Intent(CallAppApplication.get(), this.f15620c ? MutualFriendsActivity.class : PersonSelectActivity.class).putExtra("PERSON_SELECT_NET_ID", this.f15618a).putExtra("PERSON_SELECT_CONTACTS_FULL_NAME", this.f).putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", this.g).addFlags(Activities.getIntentFlagForNewDocument());
        List<PersonData> list = this.f15621d;
        if (list != null && !list.isEmpty()) {
            List<PersonData> list2 = this.f15621d;
            addFlags.putParcelableArrayListExtra("PERSON_SELECT_LIST_KEY", list2 instanceof ArrayList ? (ArrayList) list2 : new ArrayList<>(this.f15621d));
        }
        if (this.f15619b == null) {
            Activities.a(activity, addFlags);
            activity.finish();
            return;
        }
        a(activity, addFlags);
    }

    @Override // com.callapp.contacts.manager.popup.ResultPopup
    public final void a(Intent intent) {
        intent.addFlags(Activities.getIntentFlagForNewDocument()).addFlags(536870912);
    }

    @Override // com.callapp.contacts.manager.popup.ActivityResult
    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
        activity.finish();
        if (i2 != -1) {
            PersonSelectListener personSelectListener = this.f15619b;
            if (personSelectListener != null) {
                personSelectListener.b();
            }
        } else if (this.f15619b != null) {
            String stringExtra = intent.getStringExtra("PERSON_SELECT_SELECTED_USER_ID");
            if ("DONTHAVE".equals(stringExtra)) {
                this.f15619b.a();
            } else {
                this.f15619b.a(stringExtra);
            }
        }
    }

    public void setAutoSearchText(String str) {
        this.g = str;
    }

    public void setContactsFullName(String str) {
        this.f = str;
    }
}
