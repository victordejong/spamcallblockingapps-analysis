package com.callapp.contacts.api.helper.foursquare;

import android.app.Activity;
import android.content.Context;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.loader.social.UserNotFoundException;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.Friend;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/foursquare/FoursquareHelper.class */
public class FoursquareHelper extends RemoteAccountHelper {
    public static boolean a(Context context, String str, Runnable runnable) {
        return b(context, k(str), runnable);
    }

    private static boolean b(Context context, String str, Runnable runnable) {
        if (!HttpUtils.a()) {
            FeedbackManager.a(context);
            return true;
        } else if (isFoursquareOrSwarmAppInstalled()) {
            Activities.a(context, str);
            return true;
        } else if (runnable == null) {
            Activities.a(context, str, runnable);
            return true;
        } else {
            Activities.c(context, str);
            return true;
        }
    }

    public static FoursquareHelper get() {
        return Singletons.get().getFoursquareHelper();
    }

    public static boolean isFoursquareOnlyAppInstalled() {
        return Activities.a(Constants.FOURSQUARE_APPINFO_PACKAGENAME, Constants.FOURSQUARE_APPINFO_CLASSNAME);
    }

    public static boolean isFoursquareOrSwarmAppInstalled() {
        return isFoursquareOnlyAppInstalled() || Activities.a(Constants.FOURSQUARE_SWARM_APPINFO_PACKAGENAME, Constants.FOURSQUARE_SWARM_APPINFO_CLASSNAME);
    }

    private static String k(String str) {
        return String.format("%sfoursquare.com/user%s%s", "http://", "/", str);
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final JSONSocialNetworkID a(ContactData contactData) {
        return contactData.getFoursquareId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final <T> T a(RemoteAccountHelper.SocialCallable<T> socialCallable, boolean z) {
        return socialCallable.a();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> a(String str, boolean z) {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final Map<String, Friend> a(boolean z, boolean z2) {
        return null;
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
        contactData.getDeviceData().setFoursquareId(jSONSocialNetworkID);
        contactData.updateFoursquareId();
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final boolean a(String str) {
        return StringUtils.a((CharSequence) str) || str.contains("blank_");
    }

    @Override // com.callapp.contacts.api.helper.common.LoginListener
    public final void b(String str) {
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final List<PersonData> c(String str, boolean z) throws SearchIsNotAvailableExecption {
        return null;
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
    public final boolean g() {
        return true;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public int getApiConstantNetworkId() {
        return 6;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getCurrentUserId() {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public DataSource getDataSource() {
        return DataSource.foursquare;
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
        return "Foursquare";
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public String getUserName() {
        return null;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public final String h(String str) {
        return null;
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
        return false;
    }

    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper
    public boolean isNativeAppInstalled() {
        return isFoursquareOrSwarmAppInstalled();
    }
}
