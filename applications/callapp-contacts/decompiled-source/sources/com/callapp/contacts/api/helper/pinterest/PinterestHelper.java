package com.callapp.contacts.api.helper.pinterest;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/pinterest/PinterestHelper.class */
public class PinterestHelper extends RemoteAccountHelper {
    public static boolean a(Activity activity, String str, Runnable runnable) {
        if (!HttpUtils.a()) {
            FeedbackManager.a(activity);
            return false;
        } else if (get().isNativeAppInstalled()) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse("pinterest://www.pinterest.com/".concat(String.valueOf(str))));
            if (!Activities.a(intent)) {
                return false;
            }
            Activities.b(activity, intent);
            return true;
        } else {
            Activities.a(activity, "https://www.pinterest.com/".concat(String.valueOf(str)), runnable);
            return true;
        }
    }

    public static PinterestHelper get() {
        return Singletons.get().getPinterestHelper();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final JSONSocialNetworkID a(ContactData contactData) {
        return contactData.getPinterestId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final HttpRequest a(HttpRequest httpRequest) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final <T> T a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> a(String str, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final Map<String, Friend> a(boolean z, boolean z2) {
        return Collections.emptyMap();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(Activity activity, String str, Runnable runnable, OutcomeListener outcomeListener) {
        a(outcomeListener, a(activity, str, runnable));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void a(ContactData contactData, JSONSocialNetworkID jSONSocialNetworkID) {
        contactData.getDeviceData().setPinterestId(jSONSocialNetworkID);
        contactData.updatePinterestId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean a(String str) {
        return StringUtils.c(str, "default");
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> c(String str, boolean z) throws SearchIsNotAvailableExecption {
        throw new SearchIsNotAvailableExecption();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final void e() {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String f(String str) throws UserNotFoundException, QuotaReachedException {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean f() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String g(String str) throws UserNotFoundException, QuotaReachedException {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 9;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.pinterest;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public long getFriendsCount() {
        return 0L;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public List<PersonData> getFriendsListAsPersonData() {
        return Collections.emptyList();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getName() {
        return "Pinterest";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String h(String str) throws UserNotFoundException, QuotaReachedException {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String i(String str) {
        if (StringUtils.a((CharSequence) str) || !str.contains("pinterest.com")) {
            return null;
        }
        return a(str, RegexUtils.a("(?:http:\\/\\/)?(?:www.)?pinterest.com\\/(?:(?:\\w)*#!\\/)?([\\w\\-\\.]*)?"));
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean i() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isLoggedIn() {
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        boolean z;
        try {
            PackageInfo packageInfo = CallAppApplication.get().getPackageManager().getPackageInfo("com.pinterest", 0);
            z = false;
            if (packageInfo != null) {
                z = false;
                if (packageInfo.versionCode >= 16) {
                    z = true;
                }
            }
        } catch (Exception e) {
            z = false;
        }
        return z;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isReadyForRemoteCalls() {
        return false;
    }
}
