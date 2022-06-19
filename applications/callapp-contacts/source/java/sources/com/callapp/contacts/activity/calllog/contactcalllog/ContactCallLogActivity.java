package com.callapp.contacts.activity.calllog.contactcalllog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseMultiSelectListAdapter;
import com.callapp.contacts.activity.base.TopBarFragmentActivity;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogActivity.class */
public class ContactCallLogActivity extends TopBarFragmentActivity<ContactCallLogFragment> implements View.OnClickListener {

    /* renamed from: a */
    private Phone f20774a;

    /* renamed from: b */
    private long f20775b;

    /* renamed from: c */
    private ContactData f20776c;

    /* renamed from: d */
    private ContactDataChangeListener f20777d;

    /* renamed from: e */
    private Menu f20778e;

    /* renamed from: a */
    private void m31314a(int i) {
        MenuItem findItem = this.f20778e.findItem(i);
        if (findItem != null) {
            findItem.setVisible(false);
        }
    }

    /* renamed from: a */
    public static void m31313a(Context context, long j, Phone phone) {
        Intent intent = new Intent(context, ContactCallLogActivity.class);
        intent.putExtra(Constants.EXTRA_PHONE_NUMBER, phone);
        intent.putExtra(Constants.EXTRA_CONTACT_ID, j);
        Activities.m27685a(context, intent);
    }

    /* renamed from: b */
    private void m31310b() {
        if (this.f20778e != null) {
            m31309b(2131363450);
            m31314a(2131362550);
        }
    }

    /* renamed from: b */
    private void m31309b(int i) {
        MenuItem findItem = this.f20778e.findItem(i);
        if (findItem != null) {
            findItem.setVisible(true);
            View actionView = findItem.getActionView();
            if (actionView == null) {
                return;
            }
            actionView.setOnClickListener(this);
        }
    }

    /* renamed from: c */
    private void m31307c() {
        if (this.f20778e != null) {
            m31309b(2131362550);
            m31314a(2131363450);
        }
    }

    public void setScreenMode(boolean z) {
        if (z) {
            m31307c();
            return;
        }
        m31310b();
        if (StringUtils.m26045b((CharSequence) this.f20776c.getFullName())) {
            setTitle(this.f20776c.getFullName());
            return;
        }
        Phone phone = this.f20774a;
        if (phone != null) {
            setTitle(phone.toString());
        } else {
            setTitle("");
        }
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity
    public ContactCallLogFragment getNewFragment() {
        return new ContactCallLogFragment();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (getFragment().isInMultiSelectMode()) {
            getFragment().showMultiSelect(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131362550) {
            getFragment().deleteSelectedCallLogEntries(this, new DialogInterface.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == -1) {
                        ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).showMultiSelect(false);
                    }
                }
            });
        } else if (id != 2131363450) {
        } else {
            final DialogList dialogList = new DialogList(null);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231472, Activities.getString(2131886751), 2131886751));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231790, Activities.getString(2131887375), 2131887375));
            AdapterIconAndText adapterIconAndText = new AdapterIconAndText(this, 2131558570, arrayList);
            adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.3
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    dialogList.dismiss();
                    if (i == 2131886751) {
                        ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).deleteAllPresentedCallLogEntries(ContactCallLogActivity.this, new DialogInterface.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.3.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                if (i2 == -1) {
                                    ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).showMultiSelect(false);
                                }
                            }
                        });
                    } else if (i != 2131887375) {
                    } else {
                        ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).showMultiSelect(true);
                    }
                }
            });
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().m28209a(this, dialogList);
        }
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f20774a = (Phone) extras.getSerializable(Constants.EXTRA_PHONE_NUMBER);
            this.f20775b = extras.getLong(Constants.EXTRA_CONTACT_ID, 0L);
            Phone phone = this.f20774a;
            if (phone != null) {
                setTitle(phone.toString());
            }
        }
        setKeyguardDismissAndScreenWindowFlags();
        this.f20777d = new ContactDataChangeListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.2
            @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
            public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
                ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).onContactChanged(contactData, set);
                if (set.contains(ContactField.fullName)) {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ContactCallLogActivity.this.setTitle(StringUtils.m26020j(contactData.getFullName()));
                            ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).setContact(contactData);
                        }
                    });
                }
            }
        };
        getFragment().setSingleContactPhone(this.f20774a);
        Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(this.f20774a, this.f20775b, this.f20777d, ContactFieldEnumSets.ALL);
        this.f20776c = (ContactData) registerForContactDetailsStack.first;
        if (((Set) registerForContactDetailsStack.second).size() > 0) {
            this.f20777d.onContactChanged(this.f20776c, (Set) registerForContactDetailsStack.second);
        }
        getFragment().setRetainInstance(true);
        getFragment().setMultiSelectListener(new BaseMultiSelectListAdapter.MultiSelectEvents() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.1
            @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
            public void onMultiSelectModeToggled(boolean z, int i) {
                ContactCallLogActivity.this.setScreenMode(z);
                if (z) {
                    ContactCallLogActivity contactCallLogActivity = ContactCallLogActivity.this;
                    contactCallLogActivity.setTitle(i + org.apache.commons.lang3.StringUtils.SPACE + Activities.getString(2131886671));
                }
            }

            @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
            public void onSelectedAmountChanged(int i) {
                ContactCallLogActivity contactCallLogActivity = ContactCallLogActivity.this;
                contactCallLogActivity.setTitle(i + org.apache.commons.lang3.StringUtils.SPACE + Activities.getString(2131886671));
            }
        });
        AnalyticsManager.get().mo28441b(Constants.CONTACT_CALL_LOG_SCREEN);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.f20778e = menu;
        getMenuInflater().inflate(2131623936, menu);
        if (!getFragment().isInMultiSelectMode()) {
            m31310b();
            return true;
        }
        m31307c();
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CONTACT_CALL_LOG_SCREEN);
        if (this.f20776c != null) {
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.f20776c, this.f20777d);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ContactCallLogFragment fragment = getFragment();
        if (fragment.isInMultiSelectMode()) {
            fragment.onSelectedAmountChanged(fragment.getSelectedCounter());
        }
    }
}
