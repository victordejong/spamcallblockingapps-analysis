package com.callapp.contacts.api.helper.common;

import android.app.Activity;
import android.content.Context;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.popup.DefaultPersonSelectListener;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.selection.PersonSelectPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper.class */
public class ContactSocialNetworksCertaintyHelper {

    /* renamed from: a */
    private final DataSource f24779a;

    /* renamed from: b */
    private RemoteAccountHelper f24780b;

    /* renamed from: c */
    private JSONSocialNetworkID f24781c;

    /* renamed from: d */
    private final String f24782d;

    /* renamed from: e */
    private PersonSelectPopup.PersonSelectListener f24783e;

    /* renamed from: f */
    private ProfileDialogListener f24784f;

    /* renamed from: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper$5 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$5.class */
    public static /* synthetic */ class C71745 {

        /* renamed from: a */
        static final /* synthetic */ int[] f24796a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[DataSource.values().length];
            f24796a = iArr;
            try {
                iArr[DataSource.facebook.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24796a[DataSource.twitter.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24796a[DataSource.foursquare.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f24796a[DataSource.instagram.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$EmptyImplProfileDialogListener.class */
    public class EmptyImplProfileDialogListener implements ProfileDialogListener {
        public EmptyImplProfileDialogListener() {
            ContactSocialNetworksCertaintyHelper.this = r4;
        }

        @Override // com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.ProfileDialogListener
        /* renamed from: a */
        public final void mo29257a() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener.class */
    public interface ProfileDialogListener {
        /* renamed from: a */
        void mo29257a();
    }

    public ContactSocialNetworksCertaintyHelper(Activity activity, ContactData contactData, DataSource dataSource) {
        this(activity, contactData, dataSource, null, null);
        m29264a(contactData);
    }

    public ContactSocialNetworksCertaintyHelper(Activity activity, ContactData contactData, DataSource dataSource, PersonSelectPopup.PersonSelectListener personSelectListener, ProfileDialogListener profileDialogListener) {
        this.f24779a = dataSource;
        this.f24783e = personSelectListener;
        this.f24784f = profileDialogListener;
        this.f24782d = SocialNetworksSearchUtil.getSocialNetworkName(dataSource.dbCode);
    }

    /* renamed from: a */
    static /* synthetic */ void m29267a(ContactSocialNetworksCertaintyHelper contactSocialNetworksCertaintyHelper, final Activity activity, final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (ContactSocialNetworksCertaintyHelper.this.f24781c != null) {
                    ContactSocialNetworksCertaintyHelper.this.f24780b.m29246a(contactData, ContactSocialNetworksCertaintyHelper.this.f24781c.getId());
                } else {
                    contactData.resetPhoto();
                }
                if (ContactSocialNetworksCertaintyHelper.this.f24780b.isLoggedIn()) {
                    ContactSocialNetworksCertaintyHelper.m29263a(contactData, activity, ContactSocialNetworksCertaintyHelper.this.f24779a, ContactSocialNetworksCertaintyHelper.this.f24783e);
                    return;
                }
                ContactSocialNetworksCertaintyHelper.m29265a(ContactSocialNetworksCertaintyHelper.this.f24780b, activity, SocialNetworksSearchUtil.getSocialNetworkName(ContactSocialNetworksCertaintyHelper.this.f24779a.dbCode), new RemoteAccountHelper.DefaultLoginListener(ContactSocialNetworksCertaintyHelper.this.f24780b) { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.1.1
                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    /* renamed from: a */
                    public final void mo26206a() {
                        super.mo26206a();
                        ContactSocialNetworksCertaintyHelper.m29263a(contactData, activity, ContactSocialNetworksCertaintyHelper.this.f24779a, ContactSocialNetworksCertaintyHelper.this.f24783e);
                    }

                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    /* renamed from: b */
                    public final void mo26205b() {
                        super.mo26205b();
                        if (HttpUtils.m26985a()) {
                            FeedbackManager.get().m28671a(Activities.getString(2131887125));
                        } else {
                            FeedbackManager.get().m28671a(Activities.getString(2131887407));
                        }
                    }
                });
            }
        }.execute();
    }

    /* renamed from: a */
    public static void m29265a(RemoteAccountHelper remoteAccountHelper, Activity activity, String str, RemoteAccountHelper.DefaultLoginListener defaultLoginListener) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Suggested login to ".concat(String.valueOf(str)), "Approve");
        remoteAccountHelper.setLoginListener(defaultLoginListener);
        remoteAccountHelper.m29241b(activity);
    }

    /* renamed from: a */
    private void m29264a(ContactData contactData) {
        int i = C71745.f24796a[this.f24779a.ordinal()];
        if (i == 1) {
            this.f24781c = contactData.getFacebookId();
            this.f24780b = Singletons.get().getFacebookHelper();
        } else if (i == 2) {
            this.f24781c = contactData.getTwitterScreenName();
            this.f24780b = Singletons.get().getTwitterHelper();
        } else if (i == 3) {
            this.f24781c = contactData.getFoursquareId();
            this.f24780b = Singletons.get().getFoursquareHelper();
        } else if (i == 4) {
            this.f24781c = contactData.getInstagramId();
            this.f24780b = Singletons.get().getInstagramHelper();
        }
        if (this.f24783e == null) {
            this.f24783e = new DefaultPersonSelectListener(this.f24780b, contactData);
        }
        if (this.f24784f == null) {
            this.f24784f = new EmptyImplProfileDialogListener();
        }
    }

    /* renamed from: a */
    public static void m29263a(ContactData contactData, Context context, DataSource dataSource, PersonSelectPopup.PersonSelectListener personSelectListener) {
        PersonSelectPopup personSelectPopup = new PersonSelectPopup();
        personSelectPopup.f27357a = dataSource.dbCode;
        personSelectPopup.f27358b = personSelectListener;
        String fullName = contactData.getFullName();
        if (StringUtils.m26045b((CharSequence) fullName)) {
            personSelectPopup.setContactsFullName(fullName);
        }
        String fullName2 = contactData.getFullName();
        if (StringUtils.m26045b((CharSequence) fullName2)) {
            personSelectPopup.setAutoSearchText(fullName2);
        }
        PopupManager.get().m28206a(context, personSelectPopup, 0);
    }

    public void setIsSure(final ContactData contactData) {
        if (this.f24781c != null) {
            new Task() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Profile is sure", ContactSocialNetworksCertaintyHelper.this.f24782d);
                    ContactSocialNetworksCertaintyHelper.this.f24780b.m29245a(contactData, ContactSocialNetworksCertaintyHelper.this.f24781c.getId(), true);
                }
            }.execute();
        }
    }

    /* renamed from: a */
    public final void m29269a(final Activity activity, final ContactData contactData, boolean z) {
        m29264a(contactData);
        String firstName = contactData.getFirstName();
        PopupManager.get().m28209a(activity, new DialogSimpleMessage(Activities.m27697a(2131886754, this.f24782d), firstName == null ? Activities.m27697a(2131887076, this.f24782d) : Activities.m27697a(2131887078, StringUtils.m26020j(firstName), this.f24782d), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                ContactSocialNetworksCertaintyHelper.this.f24784f.mo29257a();
                ContactSocialNetworksCertaintyHelper.this.setIsSure(contactData);
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                ProfileDialogListener unused = ContactSocialNetworksCertaintyHelper.this.f24784f;
                ContactSocialNetworksCertaintyHelper.m29267a(ContactSocialNetworksCertaintyHelper.this, activity, contactData);
            }
        }));
    }
}
