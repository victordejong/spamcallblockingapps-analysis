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

    /* renamed from: a  reason: collision with root package name */
    private Phone f11411a;

    /* renamed from: b  reason: collision with root package name */
    private long f11412b;

    /* renamed from: c  reason: collision with root package name */
    private ContactData f11413c;

    /* renamed from: d  reason: collision with root package name */
    private ContactDataChangeListener f11414d;
    private Menu e;

    private void a(int i) {
        MenuItem findItem = this.e.findItem(i);
        if (findItem != null) {
            findItem.setVisible(false);
        }
    }

    public static void a(Context context, long j, Phone phone) {
        Intent intent = new Intent(context, ContactCallLogActivity.class);
        intent.putExtra(Constants.EXTRA_PHONE_NUMBER, phone);
        intent.putExtra(Constants.EXTRA_CONTACT_ID, j);
        Activities.a(context, intent);
    }

    private void b() {
        if (this.e != null) {
            b(2131363450);
            a(2131362550);
        }
    }

    private void b(int i) {
        MenuItem findItem = this.e.findItem(i);
        if (findItem != null) {
            findItem.setVisible(true);
            View actionView = findItem.getActionView();
            if (actionView != null) {
                actionView.setOnClickListener(this);
            }
        }
    }

    private void c() {
        if (this.e != null) {
            b(2131362550);
            a(2131363450);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenMode(boolean z) {
        if (z) {
            c();
            return;
        }
        b();
        if (StringUtils.b((CharSequence) this.f11413c.getFullName())) {
            setTitle(this.f11413c.getFullName());
            return;
        }
        Phone phone = this.f11411a;
        if (phone != null) {
            setTitle(phone.toString());
        } else {
            setTitle("");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
        } else if (id == 2131363450) {
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
                    } else if (i == 2131887375) {
                        ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).showMultiSelect(true);
                    }
                }
            });
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().a(this, dialogList);
        }
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f11411a = (Phone) extras.getSerializable(Constants.EXTRA_PHONE_NUMBER);
            this.f11412b = extras.getLong(Constants.EXTRA_CONTACT_ID, 0L);
            Phone phone = this.f11411a;
            if (phone != null) {
                setTitle(phone.toString());
            }
        }
        setKeyguardDismissAndScreenWindowFlags();
        this.f11414d = new ContactDataChangeListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.2
            @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
            public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
                ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).onContactChanged(contactData, set);
                if (set.contains(ContactField.fullName)) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogActivity.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ContactCallLogActivity.this.setTitle(StringUtils.j(contactData.getFullName()));
                            ((ContactCallLogFragment) ContactCallLogActivity.this.getFragment()).setContact(contactData);
                        }
                    });
                }
            }
        };
        getFragment().setSingleContactPhone(this.f11411a);
        Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(this.f11411a, this.f11412b, this.f11414d, ContactFieldEnumSets.ALL);
        this.f11413c = (ContactData) registerForContactDetailsStack.first;
        if (((Set) registerForContactDetailsStack.second).size() > 0) {
            this.f11414d.onContactChanged(this.f11413c, (Set) registerForContactDetailsStack.second);
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
        AnalyticsManager.get().b(Constants.CONTACT_CALL_LOG_SCREEN);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.e = menu;
        getMenuInflater().inflate(2131623936, menu);
        if (!getFragment().isInMultiSelectMode()) {
            b();
            return true;
        }
        c();
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CONTACT_CALL_LOG_SCREEN);
        if (this.f11413c != null) {
            Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(this.f11413c, this.f11414d);
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
