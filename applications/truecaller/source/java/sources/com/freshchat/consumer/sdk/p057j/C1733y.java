package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.FreshchatConfig;
import com.freshchat.consumer.sdk.beans.config.AccountConfig;
import com.freshchat.consumer.sdk.exception.InvalidDomainException;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.service.p068e.C1908l;
import java.util.UUID;
/* renamed from: com.freshchat.consumer.sdk.j.y */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/y.class */
public class C1733y {
    /* renamed from: a */
    public static void m39779a(Context context, C1908l c1908l) {
        C1466e m40905i = C1466e.m40905i(context);
        m40905i.setDomain(c1908l.getDomain());
        m40905i.m40892o(c1908l.getAppId());
        m40905i.m40891p(c1908l.getAppKey());
        m40905i.m40878w(c1908l.isResponseExpectationEnabled());
        m40905i.m40937d(c1908l.isTeamMemberInfoVisible());
        m40905i.m40935e(c1908l.isCameraCaptureEnabled());
        m40905i.m40933f(c1908l.m39330dI());
        m40905i.m40927g(c1908l.isGallerySelectionEnabled());
        m40905i.setUserEventsTrackingEnabled(c1908l.isUserEventsTrackingEnabled());
    }

    /* renamed from: a */
    public static void m39778a(FreshchatConfig freshchatConfig) throws InvalidDomainException {
        if (freshchatConfig != null) {
            if (C1626as.m40233a(freshchatConfig.getDomain()) && !freshchatConfig.getDomain().endsWith(".freshchat.com")) {
                EnumC1464c.INVALID_FRESHCHAT_CONFIG_NON_FRESCHAT_DOMAIN.toString().replace("{{domain}}", freshchatConfig.getDomain());
            }
            if (C1626as.isEmpty(freshchatConfig.getAppId())) {
                throw new IllegalArgumentException(EnumC1464c.INVALID_FRESHCHAT_CONFIG_APP_ID.toString());
            }
            try {
                UUID.fromString(freshchatConfig.getAppId());
                if (C1626as.isEmpty(freshchatConfig.getAppKey())) {
                    throw new IllegalArgumentException(EnumC1464c.INVALID_FRESHCHAT_CONFIG_APP_KEY.toString());
                }
                try {
                    UUID.fromString(freshchatConfig.getAppKey());
                    m39776bt(freshchatConfig.getDomain());
                    return;
                } catch (Exception e) {
                    throw new IllegalArgumentException(EnumC1464c.INVALID_FRESHCHAT_CONFIG_APP_KEY.toString() + ", got app key : " + freshchatConfig.getAppKey());
                }
            } catch (Exception e2) {
                throw new IllegalArgumentException(EnumC1464c.INVALID_FRESHCHAT_CONFIG_APP_ID.toString() + ", got app id : " + freshchatConfig.getAppId());
            }
        }
        throw new IllegalArgumentException(EnumC1464c.INVALID_FRESHCHAT_CONFIG.toString());
    }

    /* renamed from: aG */
    public static FreshchatConfig m39777aG(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        FreshchatConfig freshchatConfig = new FreshchatConfig(m40905i.getAppId(), m40905i.getAppKey());
        freshchatConfig.setDomain(m40905i.getDomain());
        freshchatConfig.setResponseExpectationEnabled(m40905i.isResponseExpectationEnabled());
        freshchatConfig.setTeamMemberInfoVisible(m40905i.isTeamMemberInfoVisible());
        freshchatConfig.setCameraCaptureEnabled(m40905i.isCameraCaptureEnabled());
        freshchatConfig.setGallerySelectionEnabled(m40905i.isGallerySelectionEnabled());
        freshchatConfig.setUserEventsTrackingEnabled(m40905i.isUserEventsTrackingEnabled());
        return freshchatConfig;
    }

    /* renamed from: bt */
    public static void m39776bt(String str) throws InvalidDomainException {
        String str2 = str;
        if (C1626as.m40233a(str)) {
            str2 = C1626as.m40229aJ(str);
        }
        if (str2 == null || C1567a.f4238qx.contains(str2)) {
            return;
        }
        C1613ai.m40283e("FRESHCHAT", EnumC1464c.INVALID_FRESHCHAT_DOMAIN_IN_CONFIG.toString());
        throw new InvalidDomainException();
    }

    /* renamed from: cp */
    public static boolean m39775cp(Context context) {
        return AccountConfig.FAQAPIVersion.KBASE_SERVICE.asInt() == C1466e.m40905i(context).m40901iM();
    }
}
