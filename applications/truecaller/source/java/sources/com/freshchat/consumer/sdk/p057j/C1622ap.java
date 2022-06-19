package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.UserEventsConfig;
import com.freshchat.consumer.sdk.beans.config.AccountConfig;
import com.freshchat.consumer.sdk.beans.config.ConversationConfig;
import com.freshchat.consumer.sdk.beans.config.CsatConfig;
import com.freshchat.consumer.sdk.beans.config.DefaultRemoteConfig;
import com.freshchat.consumer.sdk.beans.config.LiveTranslationConfig;
import com.freshchat.consumer.sdk.beans.config.RefreshIntervals;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.beans.config.UserAuthConfig;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p049c.C1520p;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
/* renamed from: com.freshchat.consumer.sdk.j.ap */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ap.class */
public class C1622ap {

    /* renamed from: lg */
    private static RemoteConfig f4378lg;

    /* renamed from: a */
    public static void m40247a(Context context, RemoteConfig remoteConfig) {
        C1466e m40905i = C1466e.m40905i(context);
        m40905i.setAccountActive(remoteConfig.isAccountActive());
        m40905i.setSessionTimeoutInterval(remoteConfig.getSessionTimeoutInterval());
        ConversationConfig conversationConfig = remoteConfig.getConversationConfig();
        if (conversationConfig != null) {
            m40905i.setActiveConvFetchBackoffRatio(conversationConfig.getActiveConvFetchBackoffRatio());
            m40905i.setActiveConvWindow(conversationConfig.getActiveConvWindow());
            m40905i.m40894j(conversationConfig.shouldLaunchDeeplinkFromNotification());
            m40905i.m40999a(conversationConfig.getResolvedMsgTypes());
            m40905i.m40994b(conversationConfig.getReopenedMsgtypes());
        }
        CsatConfig csatConfig = remoteConfig.getCsatConfig();
        if (csatConfig != null) {
            m40905i.setCsatAutoExpire(csatConfig.doesCsatAutoExpire());
            m40905i.m40888s(csatConfig.getCsatExpiryInterval());
        }
        UserAuthConfig userAuthConfig = remoteConfig.getUserAuthConfig();
        if (userAuthConfig != null) {
            m40905i.setJwtAuthEnabled(userAuthConfig.isJwtAuthEnabled());
            m40905i.m40885t(userAuthConfig.isStrictModeEnabled());
            m40905i.m40884u(userAuthConfig.getAuthTimeOutInterval());
        }
        m40905i.m40998a(new JSONArray((Collection) remoteConfig.getEnabledFeatures()));
        RefreshIntervals refreshIntervals = remoteConfig.getRefreshIntervals();
        if (refreshIntervals != null) {
            m40905i.setRemoteConfigFetchInterval(refreshIntervals.getRemoteConfigFetchInterval());
            m40905i.setResponseTimeExpectationsFetchInterval(refreshIntervals.getResponseTimeExpectationsFetchInterval());
            m40905i.setActiveConvMinFetchInterval(refreshIntervals.getActiveConvMinFetchInterval());
            m40905i.setActiveConvMaxFetchInterval(refreshIntervals.getActiveConvMaxFetchInterval());
            m40905i.setMsgFetchIntervalNormal(refreshIntervals.getMsgFetchIntervalNormal());
            m40905i.setMsgFetchIntervalLaidback(refreshIntervals.getMsgFetchIntervalLaidback());
            m40905i.setFaqFetchIntervalNormal(refreshIntervals.getFaqFetchIntervalNormal());
            m40905i.setFaqFetchIntervalLaidback(refreshIntervals.getFaqFetchIntervalLaidback());
            m40905i.setChannelsFetchIntervalNormal(refreshIntervals.getChannelsFetchIntervalNormal());
            m40905i.setChannelsFetchIntervalLaidback(refreshIntervals.getChannelsFetchIntervalLaidback());
        }
        UserEventsConfig eventsConfig = remoteConfig.getEventsConfig();
        if (eventsConfig != null) {
            m40905i.setMaxDelayInMillisUntilUpload(eventsConfig.getMaxDelayInMillisUntilUpload());
            m40905i.setMaxAllowedEventsPerDay(eventsConfig.getMaxAllowedEventsPerDay());
            m40905i.setMaxEventsPerBatch(eventsConfig.getMaxEventsPerBatch());
            m40905i.setMaxAllowedPropertiesPerEvent(eventsConfig.getMaxAllowedPropertiesPerEvent());
            m40905i.setTriggerUploadOnEventsCount(eventsConfig.getTriggerUploadOnEventsCount());
            m40905i.setMaxCharsPerEventName(eventsConfig.getMaxCharsPerEventName());
            m40905i.setMaxCharsPerEventPropertyName(eventsConfig.getMaxCharsPerEventPropertyName());
            m40905i.setMaxCharsPerEventPropertyValue(eventsConfig.getMaxCharsPerEventPropertyValue());
        }
        C1644bc.m40123a(context, remoteConfig.getMessageMaskingConfig());
        C1645bd.m40118a(context, remoteConfig.getUnsupportedFragmentConfig());
        LiveTranslationConfig liveTranslationConfig = remoteConfig.getLiveTranslationConfig();
        if (liveTranslationConfig != null) {
            m40905i.m40874z(liveTranslationConfig.isEnabled());
        }
        AccountConfig accountConfig = remoteConfig.getAccountConfig();
        if (accountConfig != null) {
            m40905i.m41002X(accountConfig.getFcFaqApiVersion().asInt());
        }
        if (remoteConfig.getOperatingHoursResponse() != null) {
            new C1520p(context).m40663a(remoteConfig.getOperatingHoursResponse());
        }
        f4378lg = null;
    }

    /* renamed from: aZ */
    public static boolean m40246aZ(Context context) {
        return C1466e.m40905i(context).m39918as("RC_IS_ACCOUNT_ACTIVE");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.freshchat.consumer.sdk.beans.config.RemoteConfig] */
    /* renamed from: bD */
    public static RemoteConfig m40245bD(Context context) {
        if (f4378lg == null) {
            synchronized (RemoteConfig.class) {
                try {
                    if (f4378lg == null) {
                        f4378lg = m40246aZ(context) ? m40244bE(context) : new DefaultRemoteConfig();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4378lg;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x01d1 -> B:6:0x0041). Please submit an issue!!! */
    /* renamed from: bE */
    private static RemoteConfig m40244bE(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        RemoteConfig remoteConfig = new RemoteConfig();
        remoteConfig.setAccountActive(m40905i.isAccountActive());
        JSONArray m40939cg = m40905i.m40939cg();
        int length = m40939cg.length();
        HashSet hashSet = new HashSet(length);
        for (int i = 0; i < length; i++) {
            try {
                hashSet.add(m40939cg.getString(i));
            } catch (Exception e) {
            }
        }
        remoteConfig.setEnabledFeatures(hashSet);
        remoteConfig.setSessionTimeoutInterval(m40905i.getSessionTimeoutInterval());
        ConversationConfig conversationConfig = new ConversationConfig();
        conversationConfig.setActiveConvWindow(m40905i.getActiveConvWindow());
        conversationConfig.setActiveConvFetchBackoffRatio(m40905i.getActiveConvFetchBackoffRatio());
        conversationConfig.setLaunchDeeplinkFromNotification(m40905i.m40975bU());
        conversationConfig.setResolvedMsgTypes(m40905i.m40931fj());
        conversationConfig.setReopenedMsgtypes(m40905i.m40930fk());
        remoteConfig.setConversationConfig(conversationConfig);
        CsatConfig csatConfig = new CsatConfig();
        csatConfig.setCsatAutoExpire(m40905i.doesCsatAutoExpire());
        csatConfig.setCsatExpiryInterval(m40905i.m40946cQ());
        remoteConfig.setCsatConfig(csatConfig);
        UserAuthConfig userAuthConfig = new UserAuthConfig();
        userAuthConfig.setJwtAuthEnabled(m40905i.isJwtAuthEnabled());
        userAuthConfig.setStrictModeEnabled(m40905i.m40915gk());
        userAuthConfig.setAuthTimeOutInterval(m40905i.m40914gl());
        remoteConfig.setUserAuthConfig(userAuthConfig);
        RefreshIntervals refreshIntervals = new RefreshIntervals();
        refreshIntervals.setRemoteConfigFetchInterval(m40905i.getRemoteConfigFetchInterval());
        refreshIntervals.setResponseTimeExpectationsFetchInterval(m40905i.getResponseTimeExpectationsFetchInterval());
        refreshIntervals.setActiveConvMinFetchInterval(m40905i.getActiveConvMinFetchInterval());
        refreshIntervals.setActiveConvMaxFetchInterval(m40905i.getActiveConvMaxFetchInterval());
        refreshIntervals.setMsgFetchIntervalNormal(m40905i.getMsgFetchIntervalNormal());
        refreshIntervals.setMsgFetchIntervalLaidback(m40905i.getMsgFetchIntervalLaidback());
        refreshIntervals.setFaqFetchIntervalNormal(m40905i.getFaqFetchIntervalNormal());
        refreshIntervals.setFaqFetchIntervalLaidback(m40905i.getFaqFetchIntervalLaidback());
        refreshIntervals.setChannelsFetchIntervalNormal(m40905i.getChannelsFetchIntervalNormal());
        refreshIntervals.setChannelsFetchIntervalLaidback(m40905i.getChannelsFetchIntervalLaidback());
        remoteConfig.setRefreshIntervals(refreshIntervals);
        remoteConfig.setMessageMaskingConfig(C1644bc.m40120bH(context));
        remoteConfig.setUnsupportedFragmentConfig(C1645bd.m40117bI(context));
        UserEventsConfig userEventsConfig = new UserEventsConfig();
        userEventsConfig.setMaxAllowedEventsPerDay(m40905i.getMaxAllowedEventsPerDay());
        userEventsConfig.setMaxEventsPerBatch(m40905i.getMaxEventsPerBatch());
        userEventsConfig.setMaxDelayInMillisUntilUpload(m40905i.getMaxDelayInMillisUntilUpload());
        userEventsConfig.setMaxAllowedPropertiesPerEvent(m40905i.getMaxAllowedPropertiesPerEvent());
        userEventsConfig.setTriggerUploadOnEventsCount(m40905i.getTriggerUploadOnEventsCount());
        userEventsConfig.setMaxCharsPerEventName(m40905i.getMaxCharsPerEventName());
        userEventsConfig.setMaxCharsPerEventPropertyName(m40905i.getMaxCharsPerEventPropertyName());
        userEventsConfig.setMaxCharsPerEventPropertyValue(m40905i.getMaxCharsPerEventPropertyValue());
        remoteConfig.setEventsConfig(userEventsConfig);
        LiveTranslationConfig liveTranslationConfig = new LiveTranslationConfig();
        liveTranslationConfig.setEnabled(m40905i.m40896it());
        remoteConfig.setLiveTranslationConfig(liveTranslationConfig);
        AccountConfig accountConfig = new AccountConfig();
        accountConfig.setFcFaqApiVersion(AccountConfig.FAQAPIVersion.fromInt(m40905i.m40901iM()));
        remoteConfig.setAccountConfig(accountConfig);
        return remoteConfig;
    }

    /* renamed from: jP */
    public static Set<Integer> m40243jP() {
        HashSet hashSet = new HashSet();
        if (f4378lg.getConversationConfig() != null) {
            Set<Integer> reopenedMsgtypes = f4378lg.getConversationConfig().getReopenedMsgtypes();
            Set<Integer> resolvedMsgTypes = f4378lg.getConversationConfig().getResolvedMsgTypes();
            if (C1716k.m39902a(reopenedMsgtypes)) {
                hashSet.addAll(reopenedMsgtypes);
            }
            if (C1716k.m39902a(resolvedMsgTypes)) {
                hashSet.addAll(resolvedMsgTypes);
            }
        }
        return hashSet;
    }
}
