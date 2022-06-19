package com.crashlytics.android.answers;

import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import com.google.android.gms.actions.SearchIntents;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.fabric.sdk.android.C1449c;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/FirebaseAnalyticsEventMapper.class */
public class FirebaseAnalyticsEventMapper {
    private static final Set<String> EVENT_NAMES = new HashSet(Arrays.asList("app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "screen_view", "firebase_extra_parameter"));
    private static final String FIREBASE_LEVEL_NAME = "level_name";
    private static final String FIREBASE_METHOD = "method";
    private static final String FIREBASE_RATING = "rating";
    private static final String FIREBASE_SUCCESS = "success";

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
        if (java.lang.Character.isLetter(r0.charAt(0)) == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String mapAttribute(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 == 0) goto L6e
            r0 = r5
            int r0 = r0.length()
            if (r0 != 0) goto Le
            goto L6e
        Le:
            r0 = r5
            java.lang.String r1 = "[^\\p{Alnum}_]+"
            java.lang.String r2 = "_"
            java.lang.String r0 = r0.replaceAll(r1, r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "ga_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L3f
            r0 = r6
            java.lang.String r1 = "google_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L3f
            r0 = r6
            java.lang.String r1 = "firebase_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L3f
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            char r0 = r0.charAt(r1)
            boolean r0 = java.lang.Character.isLetter(r0)
            if (r0 != 0) goto L59
        L3f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "fabric_"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            r5 = r0
        L59:
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = r0.length()
            r1 = 40
            if (r0 <= r1) goto L6c
            r0 = r5
            r1 = 0
            r2 = 40
            java.lang.String r0 = r0.substring(r1, r2)
            r6 = r0
        L6c:
            r0 = r6
            return r0
        L6e:
            java.lang.String r0 = "fabric_unnamed_parameter"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapAttribute(java.lang.String):java.lang.String");
    }

    private Integer mapBooleanValue(String str) {
        if (str == null) {
            return null;
        }
        return Integer.valueOf(str.equals("true") ? 1 : 0);
    }

    private void mapCustomEventAttributes(Bundle bundle, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            String mapAttribute = mapAttribute(entry.getKey());
            if (value instanceof String) {
                bundle.putString(mapAttribute, entry.getValue().toString());
            } else if (value instanceof Double) {
                bundle.putDouble(mapAttribute, ((Double) entry.getValue()).doubleValue());
            } else if (value instanceof Long) {
                bundle.putLong(mapAttribute, ((Long) entry.getValue()).longValue());
            } else if (value instanceof Integer) {
                bundle.putInt(mapAttribute, ((Integer) entry.getValue()).intValue());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0062, code lost:
        if (java.lang.Character.isLetter(r0.charAt(0)) == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String mapCustomEventName(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 == 0) goto L94
            r0 = r5
            int r0 = r0.length()
            if (r0 != 0) goto Le
            goto L94
        Le:
            java.util.Set<java.lang.String> r0 = com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.EVENT_NAMES
            r1 = r5
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L34
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "fabric_"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            return r0
        L34:
            r0 = r5
            java.lang.String r1 = "[^\\p{Alnum}_]+"
            java.lang.String r2 = "_"
            java.lang.String r0 = r0.replaceAll(r1, r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "ga_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L65
            r0 = r6
            java.lang.String r1 = "google_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L65
            r0 = r6
            java.lang.String r1 = "firebase_"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L65
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            char r0 = r0.charAt(r1)
            boolean r0 = java.lang.Character.isLetter(r0)
            if (r0 != 0) goto L7f
        L65:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "fabric_"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            r5 = r0
        L7f:
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = r0.length()
            r1 = 40
            if (r0 <= r1) goto L92
            r0 = r5
            r1 = 0
            r2 = 40
            java.lang.String r0 = r0.substring(r1, r2)
            r6 = r0
        L92:
            r0 = r6
            return r0
        L94:
            java.lang.String r0 = "fabric_unnamed_event"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapCustomEventName(java.lang.String):java.lang.String");
    }

    private Double mapDouble(Object obj) {
        String valueOf = String.valueOf(obj);
        if (valueOf == null) {
            return null;
        }
        return Double.valueOf(valueOf);
    }

    private Bundle mapPredefinedEvent(SessionEvent sessionEvent) {
        Bundle bundle = new Bundle();
        if ("purchase".equals(sessionEvent.predefinedType)) {
            putString(bundle, FirebaseAnalytics.Param.ITEM_ID, (String) sessionEvent.predefinedAttributes.get("itemId"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_NAME, (String) sessionEvent.predefinedAttributes.get("itemName"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_CATEGORY, (String) sessionEvent.predefinedAttributes.get("itemType"));
            putDouble(bundle, "value", mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
            putString(bundle, FirebaseAnalytics.Param.CURRENCY, (String) sessionEvent.predefinedAttributes.get(FirebaseAnalytics.Param.CURRENCY));
        } else if ("addToCart".equals(sessionEvent.predefinedType)) {
            putString(bundle, FirebaseAnalytics.Param.ITEM_ID, (String) sessionEvent.predefinedAttributes.get("itemId"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_NAME, (String) sessionEvent.predefinedAttributes.get("itemName"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_CATEGORY, (String) sessionEvent.predefinedAttributes.get("itemType"));
            putDouble(bundle, FirebaseAnalytics.Param.PRICE, mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
            putDouble(bundle, "value", mapPriceValue(sessionEvent.predefinedAttributes.get("itemPrice")));
            putString(bundle, FirebaseAnalytics.Param.CURRENCY, (String) sessionEvent.predefinedAttributes.get(FirebaseAnalytics.Param.CURRENCY));
            bundle.putLong(FirebaseAnalytics.Param.QUANTITY, 1L);
        } else if ("startCheckout".equals(sessionEvent.predefinedType)) {
            putLong(bundle, FirebaseAnalytics.Param.QUANTITY, Long.valueOf(((Integer) sessionEvent.predefinedAttributes.get("itemCount")).intValue()));
            putDouble(bundle, "value", mapPriceValue(sessionEvent.predefinedAttributes.get("totalPrice")));
            putString(bundle, FirebaseAnalytics.Param.CURRENCY, (String) sessionEvent.predefinedAttributes.get(FirebaseAnalytics.Param.CURRENCY));
        } else if ("contentView".equals(sessionEvent.predefinedType)) {
            putString(bundle, FirebaseAnalytics.Param.CONTENT_TYPE, (String) sessionEvent.predefinedAttributes.get("contentType"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_ID, (String) sessionEvent.predefinedAttributes.get("contentId"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_NAME, (String) sessionEvent.predefinedAttributes.get("contentName"));
        } else if (FirebaseAnalytics.Event.SEARCH.equals(sessionEvent.predefinedType)) {
            putString(bundle, FirebaseAnalytics.Param.SEARCH_TERM, (String) sessionEvent.predefinedAttributes.get(SearchIntents.EXTRA_QUERY));
        } else if (FirebaseAnalytics.Event.SHARE.equals(sessionEvent.predefinedType)) {
            putString(bundle, "method", (String) sessionEvent.predefinedAttributes.get("method"));
            putString(bundle, FirebaseAnalytics.Param.CONTENT_TYPE, (String) sessionEvent.predefinedAttributes.get("contentType"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_ID, (String) sessionEvent.predefinedAttributes.get("contentId"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_NAME, (String) sessionEvent.predefinedAttributes.get("contentName"));
        } else if (FIREBASE_RATING.equals(sessionEvent.predefinedType)) {
            putString(bundle, FIREBASE_RATING, String.valueOf(sessionEvent.predefinedAttributes.get(FIREBASE_RATING)));
            putString(bundle, FirebaseAnalytics.Param.CONTENT_TYPE, (String) sessionEvent.predefinedAttributes.get("contentType"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_ID, (String) sessionEvent.predefinedAttributes.get("contentId"));
            putString(bundle, FirebaseAnalytics.Param.ITEM_NAME, (String) sessionEvent.predefinedAttributes.get("contentName"));
        } else if ("signUp".equals(sessionEvent.predefinedType)) {
            putString(bundle, "method", (String) sessionEvent.predefinedAttributes.get("method"));
        } else if (FirebaseAnalytics.Event.LOGIN.equals(sessionEvent.predefinedType)) {
            putString(bundle, "method", (String) sessionEvent.predefinedAttributes.get("method"));
        } else if ("invite".equals(sessionEvent.predefinedType)) {
            putString(bundle, "method", (String) sessionEvent.predefinedAttributes.get("method"));
        } else if ("levelStart".equals(sessionEvent.predefinedType)) {
            putString(bundle, "level_name", (String) sessionEvent.predefinedAttributes.get("levelName"));
        } else if ("levelEnd".equals(sessionEvent.predefinedType)) {
            putDouble(bundle, FirebaseAnalytics.Param.SCORE, mapDouble(sessionEvent.predefinedAttributes.get(FirebaseAnalytics.Param.SCORE)));
            putString(bundle, "level_name", (String) sessionEvent.predefinedAttributes.get("levelName"));
            putInt(bundle, "success", mapBooleanValue((String) sessionEvent.predefinedAttributes.get("success")));
        }
        mapCustomEventAttributes(bundle, sessionEvent.customAttributes);
        return bundle;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0075 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String mapPredefinedEventName(java.lang.String r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 554
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapPredefinedEventName(java.lang.String, boolean):java.lang.String");
    }

    private Double mapPriceValue(Object obj) {
        Long l = (Long) obj;
        if (l == null) {
            return null;
        }
        return Double.valueOf(new BigDecimal(l.longValue()).divide(AddToCartEvent.MICRO_CONSTANT).doubleValue());
    }

    private void putDouble(Bundle bundle, String str, Double d) {
        Double mapDouble = mapDouble(d);
        if (mapDouble == null) {
            return;
        }
        bundle.putDouble(str, mapDouble.doubleValue());
    }

    private void putInt(Bundle bundle, String str, Integer num) {
        if (num == null) {
            return;
        }
        bundle.putInt(str, num.intValue());
    }

    private void putLong(Bundle bundle, String str, Long l) {
        if (l == null) {
            return;
        }
        bundle.putLong(str, l.longValue());
    }

    private void putString(Bundle bundle, String str, String str2) {
        if (str2 == null) {
            return;
        }
        bundle.putString(str, str2);
    }

    public FirebaseAnalyticsEvent mapEvent(SessionEvent sessionEvent) {
        Bundle bundle;
        String str;
        boolean z = true;
        boolean z2 = SessionEvent.Type.CUSTOM.equals(sessionEvent.type) && sessionEvent.customType != null;
        boolean z3 = SessionEvent.Type.PREDEFINED.equals(sessionEvent.type) && sessionEvent.predefinedType != null;
        if (z2 || z3) {
            if (z3) {
                bundle = mapPredefinedEvent(sessionEvent);
            } else {
                Bundle bundle2 = new Bundle();
                bundle = bundle2;
                if (sessionEvent.customAttributes != null) {
                    mapCustomEventAttributes(bundle2, sessionEvent.customAttributes);
                    bundle = bundle2;
                }
            }
            if (z3) {
                String str2 = (String) sessionEvent.predefinedAttributes.get("success");
                if (str2 == null || Boolean.parseBoolean(str2)) {
                    z = false;
                }
                str = mapPredefinedEventName(sessionEvent.predefinedType, z);
            } else {
                str = mapCustomEventName(sessionEvent.customType);
            }
            C1449c.m3572g().mo3552a(Answers.TAG, "Logging event into firebase...");
            return new FirebaseAnalyticsEvent(str, bundle);
        }
        return null;
    }
}
