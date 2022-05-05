package com.apptentive.android.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.module.engagement.interaction.InteractionManager;
import com.apptentive.android.sdk.module.engagement.interaction.model.TermsAndConditions;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.survey.OnSurveyFinishedListener;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.ApptentiveTaskManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveNullInstance.class */
class ApptentiveNullInstance implements ApptentiveInstance {
    private void failMethodCall(String str) {
        Assert.assertFail("Unable to invoke '%s': Apptentive SDK is not properly initialized", str);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void addInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener) {
        failMethodCall("addInteractionUpdateListener");
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public Map<String, Object> getAndClearCustomData() {
        failMethodCall("getAndClearCustomData");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public AppRelease getAppRelease() {
        failMethodCall("getAppRelease");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public Context getApplicationContext() {
        failMethodCall("getApplicationContext");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public int getApplicationVersionCode() {
        failMethodCall("getApplicationVersionCode");
        return 0;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public String getApplicationVersionName() {
        failMethodCall("getApplicationVersionName");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public ApptentiveHttpClient getApptentiveHttpClient() {
        failMethodCall("getApptentiveHttpClient");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public ApptentiveTaskManager getApptentiveTaskManager() {
        failMethodCall("getApptentiveTaskManager");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Resources.Theme getApptentiveToolbarTheme() {
        failMethodCall("getApptentiveToolbarTheme");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public Conversation getConversation() {
        failMethodCall("getConversation");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public ConversationProxy getConversationProxy() {
        failMethodCall("getConversationProxy");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public Activity getCurrentTaskStackTopActivity() {
        failMethodCall("getCurrentTaskStackTopActivity");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public String getDefaultAppDisplayName() {
        failMethodCall("getDefaultAppDisplayName");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public int getDefaultStatusBarColor() {
        failMethodCall("getDefaultStatusBarColor");
        return 0;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public SharedPreferences getGlobalSharedPrefs() {
        failMethodCall("getGlobalSharedPrefs");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public OnSurveyFinishedListener getOnSurveyFinishedListener() {
        failMethodCall("getOnSurveyFinishedListener");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public IRatingProvider getRatingProvider() {
        failMethodCall("getRatingProvider");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    @Nullable
    public Map<String, String> getRatingProviderArgs() {
        failMethodCall("getRatingProviderArgs");
        return null;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public TermsAndConditions getSurveyTermsAndConditions() {
        return null;
    }

    @Override // com.apptentive.android.sdk.util.Nullsafe
    public boolean isNull() {
        return true;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void login(String str, Apptentive.LoginCallback loginCallback) {
        failMethodCall(FirebaseAnalytics.Event.LOGIN);
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void logout() {
        failMethodCall("logout");
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void notifyInteractionUpdated(boolean z) {
        failMethodCall("notifyInteractionUpdated");
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void removeInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener) {
        failMethodCall("removeInteractionUpdateListener");
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void setOnSurveyFinishedListener(OnSurveyFinishedListener onSurveyFinishedListener) {
        failMethodCall("setOnSurveyFinishedListener");
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void showAboutInternal(Context context, boolean z) {
        failMethodCall("showAboutInternal");
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public boolean showMessageCenterInternal(@NonNull Context context, @Nullable Map<String, Object> map) {
        failMethodCall("showMessageCenterInternal");
        return false;
    }

    @Override // com.apptentive.android.sdk.ApptentiveInstance
    public void updateApptentiveInteractionTheme(Context context, Resources.Theme theme) {
        failMethodCall("updateApptentiveInteractionTheme");
    }
}
