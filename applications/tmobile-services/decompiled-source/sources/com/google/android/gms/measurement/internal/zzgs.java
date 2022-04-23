package com.google.android.gms.measurement.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgs.class */
public class zzgs {

    /* renamed from: a */
    public static final String[] f9361a = {"app_background", "app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "ga_campaign", Constants.IPC_BUNDLE_KEY_SEND_ERROR, "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", FirebaseAnalytics.Event.AD_IMPRESSION, "ad_click", "ad_reward", FirebaseAnalytics.Event.SCREEN_VIEW, "ga_extra_parameter", "session_start_with_rollout", "firebase_campaign"};

    /* renamed from: b */
    public static final String[] f9362b = {FirebaseAnalytics.Event.AD_IMPRESSION};

    /* renamed from: c */
    public static final String[] f9363c = {"_ab", "_cd", "_ae", "_ui", "_ug", "_in", "_au", Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN, "_err", "_f", "_v", "_iap", Constants.ScionAnalytics.EVENT_NOTIFICATION_DISMISS, Constants.ScionAnalytics.EVENT_NOTIFICATION_FOREGROUND, Constants.ScionAnalytics.EVENT_NOTIFICATION_OPEN, Constants.ScionAnalytics.EVENT_NOTIFICATION_RECEIVE, "_ou", "_s", "_e", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "_ar", "_vs", "_ep", "_ssr", Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN};

    /* renamed from: d */
    public static final String[] f9364d = {FirebaseAnalytics.Event.PURCHASE, FirebaseAnalytics.Event.REFUND, FirebaseAnalytics.Event.ADD_PAYMENT_INFO, FirebaseAnalytics.Event.ADD_SHIPPING_INFO, FirebaseAnalytics.Event.ADD_TO_CART, FirebaseAnalytics.Event.ADD_TO_WISHLIST, FirebaseAnalytics.Event.BEGIN_CHECKOUT, FirebaseAnalytics.Event.REMOVE_FROM_CART, FirebaseAnalytics.Event.SELECT_ITEM, FirebaseAnalytics.Event.SELECT_PROMOTION, FirebaseAnalytics.Event.VIEW_CART, FirebaseAnalytics.Event.VIEW_ITEM, FirebaseAnalytics.Event.VIEW_ITEM_LIST, FirebaseAnalytics.Event.VIEW_PROMOTION, FirebaseAnalytics.Event.ECOMMERCE_PURCHASE, FirebaseAnalytics.Event.PURCHASE_REFUND, FirebaseAnalytics.Event.SET_CHECKOUT_OPTION, FirebaseAnalytics.Event.CHECKOUT_PROGRESS, FirebaseAnalytics.Event.SELECT_CONTENT, FirebaseAnalytics.Event.VIEW_SEARCH_RESULTS};

    /* renamed from: a */
    public static String m11306a(String str) {
        return zzih.m11232c(str, f9363c, f9361a);
    }

    /* renamed from: b */
    public static String m11305b(String str) {
        return zzih.m11232c(str, f9361a, f9363c);
    }
}
