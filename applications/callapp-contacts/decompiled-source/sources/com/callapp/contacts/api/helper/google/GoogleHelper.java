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
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.a;
import com.google.android.gms.auth.api.signin.c;
import com.google.android.gms.auth.api.signin.internal.r;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.tasks.d;
import com.google.android.gms.tasks.e;
import com.google.android.gms.tasks.f;
import com.google.android.gms.tasks.h;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/GoogleHelper.class */
public class GoogleHelper extends RemoteAccountHelper {

    /* renamed from: c  reason: collision with root package name */
    private c f14184c;

    /* renamed from: d  reason: collision with root package name */
    private DisconnectListener f14185d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener.class */
    public interface DisconnectListener {
        void onDisconnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity, Exception exc) {
        if (!(exc instanceof ApiException)) {
            b();
        } else if (((ApiException) exc).b() != 4) {
            b();
        } else {
            activity.startActivityForResult(this.f14184c.b(), 8000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(h hVar) {
        Prefs.aH.set(null);
        UserProfileManager.get().a(5);
        DisconnectListener disconnectListener = this.f14185d;
        if (disconnectListener != null) {
            disconnectListener.onDisconnected();
        }
    }

    public static GoogleHelper get() {
        return Singletons.get().getGoogleHelper();
    }

    private c getSignInClient() {
        c cVar;
        if (this.f14184c == null) {
            if (!GooglePlayUtils.isGooglePlayServicesAvailable()) {
                cVar = null;
            } else {
                GoogleSignInOptions.a a2 = new GoogleSignInOptions.a(GoogleSignInOptions.DEFAULT_SIGN_IN).c().b().a();
                String string = Activities.getString(2131886726);
                a2.f22490a = true;
                o.a(string);
                String str = a2.f22491b;
                boolean z = true;
                if (str != null) {
                    z = str.equals(string);
                }
                o.b(z, "two different server client ids provided");
                a2.f22491b = string;
                cVar = a.a(CallAppApplication.get(), a2.a(Prefs.aJ.get().booleanValue() ? new Scope("https://mail.google.com/") : new Scope("https://www.googleapis.com/auth/gmail.readonly"), new Scope[0]).d());
            }
            this.f14184c = cVar;
        }
        return this.f14184c;
    }

    public static boolean k() {
        return DateUtils.a(Prefs.aI.get(), new Date(), TimeUnit.MINUTES) > 40;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final JSONSocialNetworkID a(ContactData contactData) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final HttpRequest a(HttpRequest httpRequest) {
        GoogleSignInAccount b2 = r.a(CallAppApplication.get()).b();
        HttpRequest httpRequest2 = httpRequest;
        if (b2 != null) {
            httpRequest2 = httpRequest;
            if (httpRequest == null) {
                httpRequest2 = UpdateUserProfileUtil.a();
            }
            UpdateUserProfileUtil.c(httpRequest2, b2.getId());
        }
        return httpRequest2;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final <T> T a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> a(String str, boolean z) {
        return Collections.emptyList();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final Map<String, Friend> a(boolean z, boolean z2) {
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(final Activity activity) {
        if (!k() && isLoggedIn()) {
            a();
        } else if (GooglePlayUtils.isGooglePlayServicesAvailable()) {
            c signInClient = getSignInClient();
            this.f14184c = signInClient;
            signInClient.c().a(new e() { // from class: com.callapp.contacts.api.helper.google._$$Lambda$GoogleHelper$UE7kSgjqL3nu6EnMrME4jkEwRqY
                @Override // com.google.android.gms.tasks.e
                public final void onFailure(Exception exc) {
                    GoogleHelper.this.a(activity, exc);
                }
            }).a(new f() { // from class: com.callapp.contacts.api.helper.google._$$Lambda$14a4aVZ_FodMab971KeRnvActqI
                @Override // com.google.android.gms.tasks.f
                public final void onSuccess(Object obj) {
                    GoogleHelper.this.a((GoogleSignInAccount) obj);
                }
            });
        } else {
            c();
            PopupManager.get().a(activity, new DialogSimpleMessage(Activities.getString(2131886928), Activities.getString(2131888255), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.api.helper.google.GoogleHelper.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity2) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.gms"));
                    if (Activities.a(intent)) {
                        Activities.a(CallAppApplication.get().getApplicationContext(), intent);
                    }
                }
            }, null));
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        a(outcomeListener, false);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
    }

    public void a(GoogleSignInAccount googleSignInAccount) {
        boolean b2 = StringUtils.b((CharSequence) Prefs.aH.get());
        Prefs.aH.set(googleSignInAccount.getEmail());
        Prefs.aI.set(new Date());
        if (!b2) {
            d();
            a();
        }
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean a(String str) {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> c(String str, boolean z) throws SearchIsNotAvailableExecption {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean d(String str) {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void e() {
        getSignInClient().d().a(new d() { // from class: com.callapp.contacts.api.helper.google._$$Lambda$GoogleHelper$aquGRIwHaIXvCIIVxXDCCVDHby0
            @Override // com.google.android.gms.tasks.d
            public final void onComplete(h hVar) {
                GoogleHelper.this.a(hVar);
            }
        });
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String f(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean f() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String g(String str) {
        return null;
    }

    public String getAccessToken() {
        GoogleSignInAccount b2 = r.a(CallAppApplication.get()).b();
        if (b2 != null) {
            return b2.getIdToken();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 5;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        GoogleSignInAccount b2 = r.a(CallAppApplication.get()).b();
        if (b2 != null) {
            return b2.getId();
        }
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.google;
    }

    public String getDisplayName() {
        GoogleSignInAccount b2 = r.a(CallAppApplication.get()).b();
        if (b2 != null) {
            return b2.getDisplayName();
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
        GoogleSignInAccount b2 = r.a(CallAppApplication.get()).b();
        if (b2 == null || (photoUrl = b2.getPhotoUrl()) == null) {
            return null;
        }
        return photoUrl.toString();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return Prefs.aH.get();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String h(String str) throws UserNotFoundException, QuotaReachedException {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean h() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String i(String str) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean i() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return StringUtils.b((CharSequence) Prefs.aH.get());
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return false;
    }

    public void setDisconnectListener(DisconnectListener disconnectListener) {
        this.f14185d = disconnectListener;
    }
}
