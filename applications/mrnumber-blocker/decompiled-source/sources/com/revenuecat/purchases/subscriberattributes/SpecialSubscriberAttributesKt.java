package com.revenuecat.purchases.subscriberattributes;

import com.revenuecat.purchases.subscriberattributes.SubscriberAttributeKey;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/SpecialSubscriberAttributesKt.class */
public final class SpecialSubscriberAttributesKt {
    public static final String SPECIAL_KEY_AD = "$ad";
    public static final String SPECIAL_KEY_ADJUST_ID = "$adjustId";
    public static final String SPECIAL_KEY_AD_GROUP = "$adGroup";
    public static final String SPECIAL_KEY_ANDROID_ID = "$androidId";
    public static final String SPECIAL_KEY_APPSFLYER_ID = "$appsflyerId";
    public static final String SPECIAL_KEY_CAMPAIGN = "$campaign";
    public static final String SPECIAL_KEY_CREATIVE = "$creative";
    public static final String SPECIAL_KEY_DISPLAY_NAME = "$displayName";
    public static final String SPECIAL_KEY_EMAIL = "$email";
    public static final String SPECIAL_KEY_FB_ANON_ID = "$fbAnonId";
    public static final String SPECIAL_KEY_FCM_TOKENS = "$fcmTokens";
    public static final String SPECIAL_KEY_GPS_AD_ID = "$gpsAdId";
    public static final String SPECIAL_KEY_IDFA = "$idfa";
    public static final String SPECIAL_KEY_IDFV = "$idfv";
    public static final String SPECIAL_KEY_IP = "$ip";
    public static final String SPECIAL_KEY_KEYWORD = "$keyword";
    public static final String SPECIAL_KEY_MEDIA_SOURCE = "$mediaSource";
    public static final String SPECIAL_KEY_MPARTICLE_ID = "$mparticleId";
    public static final String SPECIAL_KEY_ONESIGNAL_ID = "$onesignalId";
    public static final String SPECIAL_KEY_PHONE_NUMBER = "$phoneNumber";

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static final SubscriberAttributeKey getSubscriberAttributeKey(String str) {
        SubscriberAttributeKey.DisplayName displayName;
        k.f(str, "$this$getSubscriberAttributeKey");
        switch (str.hashCode()) {
            case -1252447898:
                if (str.equals(SPECIAL_KEY_FCM_TOKENS)) {
                    displayName = SubscriberAttributeKey.FCMTokens.INSTANCE;
                    break;
                }
                displayName = new SubscriberAttributeKey.Custom(str);
                break;
            case -840959053:
                if (str.equals(SPECIAL_KEY_PHONE_NUMBER)) {
                    displayName = SubscriberAttributeKey.PhoneNumber.INSTANCE;
                    break;
                }
                displayName = new SubscriberAttributeKey.Custom(str);
                break;
            case 1127268856:
                if (str.equals(SPECIAL_KEY_EMAIL)) {
                    displayName = SubscriberAttributeKey.Email.INSTANCE;
                    break;
                }
                displayName = new SubscriberAttributeKey.Custom(str);
                break;
            case 2066159561:
                if (str.equals(SPECIAL_KEY_DISPLAY_NAME)) {
                    displayName = SubscriberAttributeKey.DisplayName.INSTANCE;
                    break;
                }
                displayName = new SubscriberAttributeKey.Custom(str);
                break;
            default:
                displayName = new SubscriberAttributeKey.Custom(str);
                break;
        }
        return displayName;
    }
}
