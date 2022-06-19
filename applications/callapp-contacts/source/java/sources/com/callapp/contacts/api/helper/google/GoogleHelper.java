package com.callapp.contacts.api.helper.google;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.auth.api.signin.C11729a;
import com.google.android.gms.auth.api.signin.C11731c;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.C11758r;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.tasks.AbstractC14181d;
import com.google.android.gms.tasks.AbstractC14182e;
import com.google.android.gms.tasks.AbstractC14183f;
import com.google.android.gms.tasks.AbstractC14185h;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/GoogleHelper.class */
public class GoogleHelper extends RemoteAccountHelper {

    /* renamed from: c */
    private C11731c f24845c;

    /* renamed from: d */
    private DisconnectListener f24846d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener.class */
    public interface DisconnectListener {
        void onDisconnected();
    }

    /* renamed from: a */
    public /* synthetic */ void m29181a(Activity activity, Exception exc) {
        if (!(exc instanceof ApiException)) {
            mo26205b();
        } else if (((ApiException) exc).m19466b() != 4) {
            mo26205b();
        } else {
            activity.startActivityForResult(this.f24845c.m19563b(), 8000);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m29179a(AbstractC14185h abstractC14185h) {
        Prefs.f26231aH.set(null);
        UserProfileManager.get().m28467a(5);
        DisconnectListener disconnectListener = this.f24846d;
        if (disconnectListener != null) {
            disconnectListener.onDisconnected();
        }
    }

    public static GoogleHelper get() {
        return Singletons.get().getGoogleHelper();
    }

    private C11731c getSignInClient() {
        C11731c c11731c;
        if (this.f24845c == null) {
            if (!GooglePlayUtils.isGooglePlayServicesAvailable()) {
                c11731c = null;
            } else {
                GoogleSignInOptions.C11728a m19571a = new GoogleSignInOptions.C11728a(GoogleSignInOptions.DEFAULT_SIGN_IN).m19568c().m19569b().m19571a();
                String string = Activities.getString(2131886726);
                m19571a.f39034a = true;
                C12045o.m19160a(string);
                String str = m19571a.f39035b;
                boolean z = true;
                if (str != null) {
                    z = str.equals(string);
                }
                C12045o.m19153b(z, "two different server client ids provided");
                m19571a.f39035b = string;
                c11731c = C11729a.m19566a(CallAppApplication.get(), m19571a.m19570a(Prefs.f26233aJ.get().booleanValue() ? new Scope("https://mail.google.com/") : new Scope("https://www.googleapis.com/auth/gmail.readonly"), new Scope[0]).m19567d());
            }
            this.f24845c = c11731c;
        }
        return this.f24845c;
    }

    /* renamed from: k */
    public static boolean m29177k() {
        return DateUtils.m27124a(Prefs.f26232aI.get(), new Date(), TimeUnit.MINUTES) > 40;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final JSONSocialNetworkID mo29108a(ContactData contactData) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final HttpRequest mo29106a(HttpRequest httpRequest) {
        GoogleSignInAccount m19528b = C11758r.m19530a(CallAppApplication.get()).m19528b();
        HttpRequest httpRequest2 = httpRequest;
        if (m19528b != null) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.m27363a();
            }
            UpdateUserProfileUtil.m27352c(httpRequest2, m19528b.getId());
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final <T> T mo29110a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final List<PersonData> mo29104a(String str, boolean z) {
        return Collections.emptyList();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final Map<String, Friend> mo29103a(boolean z, boolean z2) {
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29113a(final Activity activity) {
        if (!m29177k() && isLoggedIn()) {
            mo26206a();
        } else if (GooglePlayUtils.isGooglePlayServicesAvailable()) {
            C11731c signInClient = getSignInClient();
            this.f24845c = signInClient;
            signInClient.m19562c().mo11488a(new AbstractC14182e() { // from class: com.callapp.contacts.api.helper.google._$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY
                @Override // com.google.android.gms.tasks.AbstractC14182e
                public final void onFailure(Exception exc) {
                    GoogleHelper.this.m29181a(activity, exc);
                }
            }).mo11487a(new AbstractC14183f() { // from class: com.callapp.contacts.api.helper.google._$$Lambda$14a4aVZ_FodMab971KeRnvActqI
                @Override // com.google.android.gms.tasks.AbstractC14183f
                public final void onSuccess(Object obj) {
                    GoogleHelper.this.m29180a((GoogleSignInAccount) obj);
                }
            });
        } else {
            mo26203c();
            PopupManager.get().m28209a(activity, new DialogSimpleMessage(Activities.getString(2131886928), Activities.getString(2131888255), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.google.GoogleHelper.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity2) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.gms"));
                    if (Activities.m27672a(intent)) {
                        Activities.m27685a(CallAppApplication.get().getApplicationContext(), intent);
                    }
                }
            }, null));
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29111a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        m29248a(outcomeListener, false);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final void mo29107a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
    }

    /* renamed from: a */
    public void m29180a(GoogleSignInAccount googleSignInAccount) {
        boolean m26045b = StringUtils.m26045b((CharSequence) Prefs.f26231aH.get());
        Prefs.f26231aH.set(googleSignInAccount.getEmail());
        Prefs.f26232aI.set(new Date());
        if (!m26045b) {
            m29237d();
            mo26206a();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: a */
    public final boolean mo29105a(String str) {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    /* renamed from: b */
    public final void mo26204b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: c */
    public final List<PersonData> mo29102c(String str, boolean z) throws SearchIsNotAvailableExecption {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: d */
    public final boolean mo29178d(String str) {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: e */
    public final void mo29101e() {
        getSignInClient().m19561d().mo11489a(new AbstractC14181d() { // from class: com.callapp.contacts.api.helper.google._$$Lambda$GoogleHelper$aquGRIwHaIXvCIIVxXDCCVDHby0
            @Override // com.google.android.gms.tasks.AbstractC14181d
            public final void onComplete(AbstractC14185h abstractC14185h) {
                GoogleHelper.this.m29179a(abstractC14185h);
            }
        });
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: f */
    public final String mo29100f(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: f */
    public final boolean mo29163f() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: g */
    public final String mo29099g(String str) {
        return null;
    }

    public String getAccessToken() {
        GoogleSignInAccount m19528b = C11758r.m19530a(CallAppApplication.get()).m19528b();
        if (m19528b != null) {
            return m19528b.getIdToken();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 5;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        GoogleSignInAccount m19528b = C11758r.m19530a(CallAppApplication.get()).m19528b();
        if (m19528b != null) {
            return m19528b.getId();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.google;
    }

    public String getDisplayName() {
        GoogleSignInAccount m19528b = C11758r.m19530a(CallAppApplication.get()).m19528b();
        if (m19528b != null) {
            return m19528b.getDisplayName();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public long getFriendsCount() {
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "Google";
    }

    public String getProfileImageUrl() {
        Uri photoUrl;
        GoogleSignInAccount m19528b = C11758r.m19530a(CallAppApplication.get()).m19528b();
        if (m19528b == null || (photoUrl = m19528b.getPhotoUrl()) == null) {
            return null;
        }
        return photoUrl.toString();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return Prefs.f26231aH.get();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: h */
    public final String mo29098h(String str) throws UserNotFoundException, QuotaReachedException {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: h */
    public final boolean mo29170h() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final String mo29096i(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    /* renamed from: i */
    public final boolean mo29097i() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return StringUtils.m26045b((CharSequence) Prefs.f26231aH.get());
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return false;
    }

    public void setDisconnectListener(DisconnectListener disconnectListener) {
        this.f24846d = disconnectListener;
    }
}
