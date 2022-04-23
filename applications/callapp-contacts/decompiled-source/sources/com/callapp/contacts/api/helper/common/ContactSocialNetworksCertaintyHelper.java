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

    /* renamed from: a  reason: collision with root package name */
    private final DataSource f14125a;

    /* renamed from: b  reason: collision with root package name */
    private RemoteAccountHelper f14126b;

    /* renamed from: c  reason: collision with root package name */
    private JSONSocialNetworkID f14127c;

    /* renamed from: d  reason: collision with root package name */
    private final String f14128d;
    private PersonSelectPopup.PersonSelectListener e;
    private ProfileDialogListener f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$5.class */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14140a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[DataSource.values().length];
            f14140a = iArr;
            try {
                iArr[DataSource.facebook.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14140a[DataSource.twitter.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14140a[DataSource.foursquare.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14140a[DataSource.instagram.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$EmptyImplProfileDialogListener.class */
    public class EmptyImplProfileDialogListener implements ProfileDialogListener {
        public EmptyImplProfileDialogListener() {
        }

        @Override // com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.ProfileDialogListener
        public final void a() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener.class */
    public interface ProfileDialogListener {
        void a();
    }

    public ContactSocialNetworksCertaintyHelper(Activity activity, ContactData contactData, DataSource dataSource) {
        this(activity, contactData, dataSource, null, null);
        a(contactData);
    }

    public ContactSocialNetworksCertaintyHelper(Activity activity, ContactData contactData, DataSource dataSource, PersonSelectPopup.PersonSelectListener personSelectListener, ProfileDialogListener profileDialogListener) {
        this.f14125a = dataSource;
        this.e = personSelectListener;
        this.f = profileDialogListener;
        this.f14128d = SocialNetworksSearchUtil.getSocialNetworkName(dataSource.dbCode);
    }

    static /* synthetic */ void a(ContactSocialNetworksCertaintyHelper contactSocialNetworksCertaintyHelper, final Activity activity, final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (ContactSocialNetworksCertaintyHelper.this.f14127c != null) {
                    ContactSocialNetworksCertaintyHelper.this.f14126b.a(contactData, ContactSocialNetworksCertaintyHelper.this.f14127c.getId());
                } else {
                    contactData.resetPhoto();
                }
                if (ContactSocialNetworksCertaintyHelper.this.f14126b.isLoggedIn()) {
                    ContactSocialNetworksCertaintyHelper.a(contactData, activity, ContactSocialNetworksCertaintyHelper.this.f14125a, ContactSocialNetworksCertaintyHelper.this.e);
                    return;
                }
                ContactSocialNetworksCertaintyHelper.a(ContactSocialNetworksCertaintyHelper.this.f14126b, activity, SocialNetworksSearchUtil.getSocialNetworkName(ContactSocialNetworksCertaintyHelper.this.f14125a.dbCode), new RemoteAccountHelper.DefaultLoginListener(ContactSocialNetworksCertaintyHelper.this.f14126b) { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.1.1
                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    public final void a() {
                        super.a();
                        ContactSocialNetworksCertaintyHelper.a(contactData, activity, ContactSocialNetworksCertaintyHelper.this.f14125a, ContactSocialNetworksCertaintyHelper.this.e);
                    }

                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    public final void b() {
                        super.b();
                        if (HttpUtils.a()) {
                            FeedbackManager.get().a(Activities.getString(2131887125));
                        } else {
                            FeedbackManager.get().a(Activities.getString(2131887407));
                        }
                    }
                });
            }
        }.execute();
    }

    public static void a(RemoteAccountHelper remoteAccountHelper, Activity activity, String str, RemoteAccountHelper.DefaultLoginListener defaultLoginListener) {
        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Suggested login to ".concat(String.valueOf(str)), "Approve");
        remoteAccountHelper.setLoginListener(defaultLoginListener);
        remoteAccountHelper.b(activity);
    }

    private void a(ContactData contactData) {
        int i = AnonymousClass5.f14140a[this.f14125a.ordinal()];
        if (i == 1) {
            this.f14127c = contactData.getFacebookId();
            this.f14126b = Singletons.get().getFacebookHelper();
        } else if (i == 2) {
            this.f14127c = contactData.getTwitterScreenName();
            this.f14126b = Singletons.get().getTwitterHelper();
        } else if (i == 3) {
            this.f14127c = contactData.getFoursquareId();
            this.f14126b = Singletons.get().getFoursquareHelper();
        } else if (i == 4) {
            this.f14127c = contactData.getInstagramId();
            this.f14126b = Singletons.get().getInstagramHelper();
        }
        if (this.e == null) {
            this.e = new DefaultPersonSelectListener(this.f14126b, contactData);
        }
        if (this.f == null) {
            this.f = new EmptyImplProfileDialogListener();
        }
    }

    public static void a(ContactData contactData, Context context, DataSource dataSource, PersonSelectPopup.PersonSelectListener personSelectListener) {
        PersonSelectPopup personSelectPopup = new PersonSelectPopup();
        personSelectPopup.f15618a = dataSource.dbCode;
        personSelectPopup.f15619b = personSelectListener;
        String fullName = contactData.getFullName();
        if (StringUtils.b((CharSequence) fullName)) {
            personSelectPopup.setContactsFullName(fullName);
        }
        String fullName2 = contactData.getFullName();
        if (StringUtils.b((CharSequence) fullName2)) {
            personSelectPopup.setAutoSearchText(fullName2);
        }
        PopupManager.get().a(context, personSelectPopup, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIsSure(final ContactData contactData) {
        if (this.f14127c != null) {
            new Task() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Profile is sure", ContactSocialNetworksCertaintyHelper.this.f14128d);
                    ContactSocialNetworksCertaintyHelper.this.f14126b.a(contactData, ContactSocialNetworksCertaintyHelper.this.f14127c.getId(), true);
                }
            }.execute();
        }
    }

    public final void a(final Activity activity, final ContactData contactData, boolean z) {
        a(contactData);
        String firstName = contactData.getFirstName();
        PopupManager.get().a(activity, new DialogSimpleMessage(Activities.a(2131886754, this.f14128d), firstName == null ? Activities.a(2131887076, this.f14128d) : Activities.a(2131887078, StringUtils.j(firstName), this.f14128d), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                ContactSocialNetworksCertaintyHelper.this.f.a();
                ContactSocialNetworksCertaintyHelper.this.setIsSure(contactData);
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.common.ContactSocialNetworksCertaintyHelper.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                ProfileDialogListener unused = ContactSocialNetworksCertaintyHelper.this.f;
                ContactSocialNetworksCertaintyHelper.a(ContactSocialNetworksCertaintyHelper.this, activity, contactData);
            }
        }));
    }
}
