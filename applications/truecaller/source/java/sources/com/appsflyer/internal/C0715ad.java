package com.appsflyer.internal;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.compat.function.Consumer;
import com.appsflyer.compat.function.Function;
import com.appsflyer.internal.C0788c;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1433a.p1434a.C22086n;
/* renamed from: com.appsflyer.internal.ad */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ad.class */
public final class C0715ad {
    public static String AFInAppEventParameterName;
    @Nullable
    public static Boolean AFKeystoreWrapper;
    @Nullable
    public final Consumer<String> AFInAppEventType;
    public final boolean init;
    @Nullable
    public final Consumer<String> valueOf;
    @Nullable
    public final Function<List<C22086n>, Map<String, String>> values;

    public C0715ad() {
    }

    public C0715ad(Function<List<C22086n>, Map<String, String>> function, Consumer<String> consumer, Consumer<String> consumer2, boolean z) {
        this.values = function;
        this.AFInAppEventType = consumer;
        this.valueOf = consumer2;
        this.init = z;
    }

    @Nullable
    public static C0788c.C0789d.C0790b AFInAppEventParameterName(ContentResolver contentResolver) {
        String str;
        if (values() && contentResolver != null) {
            C0788c.C0789d.C0790b c0790b = null;
            if (AppsFlyerProperties.getInstance().getString("amazon_aid") == null) {
                c0790b = null;
                if ("Amazon".equals(Build.MANUFACTURER)) {
                    int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
                    if (i == 0) {
                        c0790b = new C0788c.C0789d.C0790b(Settings.Secure.getString(contentResolver, "advertising_id"), Boolean.FALSE);
                    } else if (i == 2) {
                        c0790b = null;
                    } else {
                        try {
                            str = Settings.Secure.getString(contentResolver, "advertising_id");
                        } catch (Throwable th) {
                            AFLogger.valueOf("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th);
                            str = "";
                        }
                        c0790b = new C0788c.C0789d.C0790b(str, Boolean.TRUE);
                    }
                }
            }
            return c0790b;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
        if (r0.length() == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0107, code lost:
        if (r0.length() == 0) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b7  */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.appsflyer.internal.C0788c.C0789d.C0790b AFInAppEventType(android.content.Context r5, java.util.Map<java.lang.String, java.lang.Object> r6) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0715ad.AFInAppEventType(android.content.Context, java.util.Map):com.appsflyer.internal.c$d$b");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0091 A[RETURN] */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.appsflyer.internal.C0788c.C0789d.C0790b values(android.content.Context r5) {
        /*
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            r6 = r0
            java.lang.String r0 = com.appsflyer.internal.C0715ad.AFInAppEventParameterName
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L11
            r0 = 1
            r8 = r0
            goto L13
        L11:
            r0 = 0
            r8 = r0
        L13:
            r0 = r8
            if (r0 == 0) goto L1e
            r0 = r7
            r5 = r0
        L19:
            r0 = 0
            r7 = r0
            goto L79
        L1e:
            java.lang.Boolean r0 = com.appsflyer.internal.C0715ad.AFKeystoreWrapper
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L2d
            r0 = r7
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L3e
        L2d:
            java.lang.Boolean r0 = com.appsflyer.internal.C0715ad.AFKeystoreWrapper
            if (r0 != 0) goto L75
            r0 = r6
            java.lang.String r1 = "collectOAID"
            r2 = 1
            boolean r0 = r0.getBoolean(r1, r2)
            if (r0 == 0) goto L75
        L3e:
            com.appsflyer.oaid.OaidClient r0 = new com.appsflyer.oaid.OaidClient     // Catch: java.lang.Throwable -> L69
            r7 = r0
            r0 = r7
            r1 = r5
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L69
            r0 = r7
            r1 = r6
            boolean r1 = r1.isEnableLog()     // Catch: java.lang.Throwable -> L69
            r0.setLogging(r1)     // Catch: java.lang.Throwable -> L69
            r0 = r7
            com.appsflyer.oaid.OaidClient$Info r0 = r0.fetch()     // Catch: java.lang.Throwable -> L69
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L75
            r0 = r7
            java.lang.String r0 = r0.getId()     // Catch: java.lang.Throwable -> L69
            r5 = r0
            r0 = r7
            java.lang.Boolean r0 = r0.getLat()     // Catch: java.lang.Throwable -> L65
            r7 = r0
            goto L79
        L65:
            r7 = move-exception
            goto L6c
        L69:
            r5 = move-exception
            r0 = 0
            r5 = r0
        L6c:
            java.lang.String r0 = "No OAID library"
            com.appsflyer.AFLogger.AFInAppEventType(r0)
            goto L19
        L75:
            r0 = 0
            r7 = r0
            r0 = r7
            r5 = r0
        L79:
            r0 = r5
            if (r0 == 0) goto L91
            com.appsflyer.internal.c$d$b r0 = new com.appsflyer.internal.c$d$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            r1 = r8
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.valueOf = r1
            r0 = r5
            return r0
        L91:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.C0715ad.values(android.content.Context):com.appsflyer.internal.c$d$b");
    }

    private static boolean values() {
        Boolean bool = AFKeystoreWrapper;
        return bool == null || bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0715ad.class != obj.getClass()) {
            return false;
        }
        C0715ad c0715ad = (C0715ad) obj;
        if (this.init != c0715ad.init) {
            return false;
        }
        Function<List<C22086n>, Map<String, String>> function = this.values;
        if (function != null) {
            if (!function.equals(c0715ad.values)) {
                return false;
            }
        } else if (c0715ad.values != null) {
            return false;
        }
        Consumer<String> consumer = this.AFInAppEventType;
        if (consumer != null) {
            if (!consumer.equals(c0715ad.AFInAppEventType)) {
                return false;
            }
        } else if (c0715ad.AFInAppEventType != null) {
            return false;
        }
        Consumer<String> consumer2 = this.valueOf;
        Consumer<String> consumer3 = c0715ad.valueOf;
        return consumer2 != null ? consumer2.equals(consumer3) : consumer3 == null;
    }

    public final int hashCode() {
        Function<List<C22086n>, Map<String, String>> function = this.values;
        int i = 0;
        int hashCode = function != null ? function.hashCode() : 0;
        Consumer<String> consumer = this.AFInAppEventType;
        int hashCode2 = consumer != null ? consumer.hashCode() : 0;
        Consumer<String> consumer2 = this.valueOf;
        if (consumer2 != null) {
            i = consumer2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + (this.init ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ArsFeatureParams{additionalParameters=");
        sb.append(this.values);
        sb.append(", success=");
        sb.append(this.AFInAppEventType);
        sb.append(", failure=");
        sb.append(this.valueOf);
        sb.append(", sandbox=");
        sb.append(this.init);
        sb.append('}');
        return sb.toString();
    }
}
