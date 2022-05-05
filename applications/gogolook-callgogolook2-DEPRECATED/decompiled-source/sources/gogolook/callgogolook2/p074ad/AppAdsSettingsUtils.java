package gogolook.callgogolook2.p074ad;

import gogolook.callgogolook2.gson.AdLayoutSettings;
import gogolook.callgogolook2.gson.AdsSettings;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import gogolook.callgogolook2.gson.CallLogContentFeedConfig;
import gogolook.callgogolook2.gson.InAppAdSetting;
import gogolook.callgogolook2.gson.LayoutSetting;
import gogolook.callgogolook2.gson.MoPubInitScenario;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p626l.p632u.C15020l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\nJ\u001f\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0002\u0010\u000bJ\u0012\u0010\f\u001a\u00020\u00062\b\b\u0001\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0004H\u0007J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014H\u0002J\u0006\u0010\u0016\u001a\u00020\u000eJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0004H\u0007J\b\u0010\u001c\u001a\u00020\u000eH\u0002J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0007J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0007J\b\u0010\u001f\u001a\u00020 H\u0007J\u0018\u0010!\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u0010H\u0007J\u0018\u0010!\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006#"}, m815d2 = {"Lgogolook/callgogolook2/ad/AppAdsSettingsUtils;", "", "()V", "PREFS_APP_LAUNCH_MOPUB_INIT", "", AdsSettingsKt.KEY_ENABLE, "", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "defValue", "(Lgogolook/callgogolook2/ad/AdUnit;Ljava/lang/Boolean;)Z", "(Ljava/lang/String;Ljava/lang/Boolean;)Z", "enableMoPubInitOn", "scenario", "", "frqPreDay", "", "getAdCallLogContentFeedConfig", "Lgogolook/callgogolook2/gson/CallLogContentFeedConfig;", "getAdLayoutSettingsRemoteConfig", "", "Lgogolook/callgogolook2/gson/LayoutSetting;", "getAdSmsRequestTimeoutConfig", "getAdUISettingsRemoteConfig", "Lorg/json/JSONObject;", "getInAppAdSettingsRemoteConfig", "Lgogolook/callgogolook2/gson/InAppAdSetting;", "getLayoutType", "getMoPubInitScenarioRemoteConfig", "hasFrqPreDay", "isOverDisplayDelayDaysForNewUser", "reset", "", "setFrqPreDay", "newFeqPerDay", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AppAdsSettingsUtils */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AppAdsSettingsUtils.class */
public final class AppAdsSettingsUtils {
    public static final AppAdsSettingsUtils INSTANCE = new AppAdsSettingsUtils();
    public static final String PREFS_APP_LAUNCH_MOPUB_INIT = "perfs_app_launch_mopub_init";

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AppAdsSettingsUtils$WhenMappings */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AppAdsSettingsUtils$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[AdUnit.values().length];

        static {
            $EnumSwitchMapping$0[AdUnit.CALL_END_FULL.ordinal()] = 1;
        }
    }

    /* renamed from: a */
    public static final int m28788a(String str) {
        C15149k.m377b(str, "adUnit");
        return C13915b3.m3066a(str + "_feq_per_day", -1);
    }

    /* renamed from: a */
    public static final void m28790a(AdUnit adUnit, int i) {
        C15149k.m377b(adUnit, "adUnit");
        m28787a(adUnit.m28821a(), i);
    }

    /* renamed from: a */
    public static final void m28787a(String str, int i) {
        Object obj;
        int i2;
        C15149k.m377b(str, "adUnit");
        List<InAppAdSetting> d = INSTANCE.m28779d();
        if (d != null) {
            Iterator<T> it = d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (C15149k.m384a((Object) ((InAppAdSetting) obj).m28414a(), (Object) str)) {
                    break;
                }
            }
            InAppAdSetting inAppAdSetting = (InAppAdSetting) obj;
            if (inAppAdSetting != null) {
                if (inAppAdSetting.m28411d() == -1) {
                    i2 = -1;
                } else {
                    i2 = i;
                    if (i < 0) {
                        i2 = 0;
                    }
                }
                C13915b3.m3048d(str + "_feq_per_day", i2);
            }
        }
    }

    /* renamed from: a */
    public static final boolean m28792a(@MoPubInitScenario long j) {
        long e = INSTANCE.m28776e();
        boolean z = false;
        if (e != 0 && e == j) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public static final boolean m28789a(AdUnit adUnit, Boolean bool) {
        C15149k.m377b(adUnit, "adUnit");
        return m28786a(adUnit.m28821a(), bool);
    }

    /* renamed from: a */
    public static final boolean m28786a(String str, Boolean bool) {
        Object obj;
        C15149k.m377b(str, "adUnit");
        List<InAppAdSetting> d = INSTANCE.m28779d();
        Boolean bool2 = bool;
        if (d != null) {
            Iterator<T> it = d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (C15149k.m384a((Object) ((InAppAdSetting) next).m28414a(), (Object) str)) {
                    obj = next;
                    break;
                }
            }
            InAppAdSetting inAppAdSetting = (InAppAdSetting) obj;
            bool2 = bool;
            if (inAppAdSetting != null) {
                bool2 = Boolean.valueOf(inAppAdSetting.m28412c());
            }
        }
        return bool2 != null ? bool2.booleanValue() : false;
    }

    /* renamed from: b */
    public static final int m28784b(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return m28788a(adUnit.m28821a());
    }

    /* renamed from: b */
    public static final int m28783b(String str) {
        int i;
        Object obj;
        C15149k.m377b(str, "adUnit");
        List<LayoutSetting> b = INSTANCE.m28785b();
        if (b != null) {
            Iterator<T> it = b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (C15149k.m384a((Object) ((LayoutSetting) next).m28406a(), (Object) str)) {
                    obj = next;
                    break;
                }
            }
            LayoutSetting layoutSetting = (LayoutSetting) obj;
            if (layoutSetting != null) {
                i = layoutSetting.m28405b();
                return i;
            }
        }
        i = 0;
        return i;
    }

    /* renamed from: c */
    public static final int m28781c(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return m28783b(adUnit.m28821a());
    }

    /* renamed from: c */
    public static final boolean m28780c(String str) {
        C15149k.m377b(str, "adUnit");
        int a = m28788a(str);
        return a == -1 || a > 0;
    }

    /* renamed from: d */
    public static final boolean m28778d(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return m28780c(adUnit.m28821a());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m28777d(java.lang.String r7) {
        /*
            r0 = r7
            java.lang.String r1 = "adUnit"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            gogolook.callgogolook2.ad.AppAdsSettingsUtils r0 = gogolook.callgogolook2.p074ad.AppAdsSettingsUtils.INSTANCE
            java.util.List r0 = r0.m28779d()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0051
            r0 = r8
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
        L_0x001a:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x003d
            r0 = r10
            java.lang.Object r0 = r0.next()
            r8 = r0
            r0 = r8
            gogolook.callgogolook2.gson.InAppAdSetting r0 = (gogolook.callgogolook2.gson.InAppAdSetting) r0
            java.lang.String r0 = r0.m28414a()
            r1 = r7
            boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
            if (r0 == 0) goto L_0x001a
            r0 = r8
            r7 = r0
            goto L_0x003f
        L_0x003d:
            r0 = 0
            r7 = r0
        L_0x003f:
            r0 = r7
            gogolook.callgogolook2.gson.InAppAdSetting r0 = (gogolook.callgogolook2.gson.InAppAdSetting) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0051
            r0 = r7
            int r0 = r0.m28413b()
            r11 = r0
            goto L_0x0054
        L_0x0051:
            r0 = 0
            r11 = r0
        L_0x0054:
            r0 = r11
            long r0 = (long) r0
            r12 = r0
            java.lang.String r0 = "first_install_time"
            r1 = 0
            long r0 = p459j.p460a.p582w0.C13915b3.m3065a(r0, r1)
            r14 = r0
            long r0 = java.lang.System.currentTimeMillis()
            r1 = r14
            long r0 = r0 - r1
            r1 = r12
            r2 = 86400000(0x5265c00, double:4.2687272E-316)
            long r1 = r1 * r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0073
            r0 = 1
            r9 = r0
        L_0x0073:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.p074ad.AppAdsSettingsUtils.m28777d(java.lang.String):boolean");
    }

    /* renamed from: e */
    public static final boolean m28775e(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return m28777d(adUnit.m28821a());
    }

    /* renamed from: f */
    public static final void m28774f() {
        List<InAppAdSetting> d = INSTANCE.m28779d();
        if (d != null) {
            for (InAppAdSetting inAppAdSetting : d) {
                m28787a(inAppAdSetting.m28414a(), inAppAdSetting.m28411d());
            }
        }
    }

    /* renamed from: a */
    public final CallLogContentFeedConfig m28793a() {
        CallLogContentFeedConfig callLogContentFeedConfig;
        try {
            String d = C13640c.m3745d().m3744d("ad_call_log_content_feed");
            callLogContentFeedConfig = null;
            if (d != null) {
                callLogContentFeedConfig = (CallLogContentFeedConfig) new C10099e().m13388a().m30982a(d, (Class<Object>) CallLogContentFeedConfig.class);
            }
        } catch (Exception e) {
            C13973d4.m2952a(new Exception("Get remote config ad_call_log_content_feed exception: " + e));
            callLogContentFeedConfig = null;
        }
        if (callLogContentFeedConfig == null) {
            callLogContentFeedConfig = new CallLogContentFeedConfig(false, C15020l.m567a(4), 300L);
        }
        return callLogContentFeedConfig;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0049 A[Catch: Exception -> 0x0054, n -> 0x008c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {n -> 0x008c, Exception -> 0x0054, blocks: (B:6:0x001b, B:8:0x0027, B:18:0x0049), top: B:25:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject m28791a(gogolook.callgogolook2.p074ad.AdUnit r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "adUnit"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            int[] r0 = gogolook.callgogolook2.p074ad.AppAdsSettingsUtils.WhenMappings.$EnumSwitchMapping$0
            r1 = r5
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            if (r0 == r1) goto L_0x0018
            java.lang.String r0 = ""
            r5 = r0
            goto L_0x001b
        L_0x0018:
            java.lang.String r0 = "ad_call_end_full"
            r5 = r0
        L_0x001b:
            j.a.u.c r0 = p459j.p460a.p568u.C13640c.m3745d()     // Catch: Exception -> 0x0054, n -> 0x008c
            r1 = r5
            java.lang.String r0 = r0.m3744d(r1)     // Catch: Exception -> 0x0054, n -> 0x008c
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0038
            r0 = r6
            int r0 = r0.length()     // Catch: Exception -> 0x0054, n -> 0x008c
            if (r0 != 0) goto L_0x0033
            goto L_0x0038
        L_0x0033:
            r0 = 0
            r7 = r0
            goto L_0x003a
        L_0x0038:
            r0 = 1
            r7 = r0
        L_0x003a:
            r0 = 1
            r1 = r7
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0043
            goto L_0x0045
        L_0x0043:
            r0 = 0
            r6 = r0
        L_0x0045:
            r0 = r6
            if (r0 == 0) goto L_0x00c5
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: Exception -> 0x0054, n -> 0x008c
            r1 = r0
            r2 = r6
            r1.<init>(r2)     // Catch: Exception -> 0x0054, n -> 0x008c
            r6 = r0
            r0 = r6
            return r0
        L_0x0054:
            r8 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Parse "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " jason exception: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.Exception r0 = new java.lang.Exception
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            p459j.p460a.p582w0.C13973d4.m2952a(r0)
            goto L_0x00c5
        L_0x008c:
            r6 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Parse "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " jason parse exception: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.Exception r0 = new java.lang.Exception
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            p459j.p460a.p582w0.C13973d4.m2952a(r0)
        L_0x00c5:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.p074ad.AppAdsSettingsUtils.m28791a(gogolook.callgogolook2.ad.AdUnit):org.json.JSONObject");
    }

    /* renamed from: b */
    public final List<LayoutSetting> m28785b() {
        List<LayoutSetting> list = null;
        try {
            AdLayoutSettings adLayoutSettings = (AdLayoutSettings) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("ad_layout_settings_v1"), (Class<Object>) AdLayoutSettings.class);
            if (adLayoutSettings != null) {
                list = adLayoutSettings.m28563a();
            }
            return list;
        } catch (C10108n e) {
            C13973d4.m2952a(new Exception("Parse ad_layout_settings_v1 jason parse exception: " + e));
            return null;
        } catch (Exception e2) {
            C13973d4.m2952a(new Exception("Parse ad_layout_settings_v1 jason exception: " + e2));
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m28782c() {
        /*
            r5 = this;
            r0 = 0
            r6 = r0
            j.a.u.c r0 = p459j.p460a.p568u.C13640c.m3745d()     // Catch: Exception -> 0x003b
            java.lang.String r1 = "ad_sms_request_timeout"
            long r0 = r0.m3748b(r1)     // Catch: Exception -> 0x003b
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch: Exception -> 0x003b
            r8 = r0
            r0 = r8
            long r0 = r0.longValue()     // Catch: Exception -> 0x003b
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001e
            r0 = 1
            r9 = r0
            goto L_0x0021
        L_0x001e:
            r0 = 0
            r9 = r0
        L_0x0021:
            r0 = r9
            if (r0 == 0) goto L_0x0029
            goto L_0x002b
        L_0x0029:
            r0 = 0
            r8 = r0
        L_0x002b:
            r0 = r6
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0065
            r0 = r8
            long r0 = r0.longValue()     // Catch: Exception -> 0x003b
            r10 = r0
            goto L_0x0065
        L_0x003b:
            r12 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Get remote config ad_sms_request_timeout exception: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.Exception r0 = new java.lang.Exception
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            p459j.p460a.p582w0.C13973d4.m2952a(r0)
            r0 = r6
            r10 = r0
        L_0x0065:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.p074ad.AppAdsSettingsUtils.m28782c():long");
    }

    /* renamed from: d */
    public final List<InAppAdSetting> m28779d() {
        List<InAppAdSetting> list = null;
        try {
            AdsSettings adsSettings = (AdsSettings) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("ads_settings_v1"), (Class<Object>) AdsSettings.class);
            if (adsSettings != null) {
                list = adsSettings.m28562a();
            }
            return list;
        } catch (C10108n e) {
            C13973d4.m2952a(new Exception("Parse in_app_ads_settings_v1 jason exception: " + e));
            return null;
        } catch (Exception e2) {
            C13973d4.m2952a(new Exception("Parse in_app_ads_settings_v1 exception: " + e2));
            return null;
        }
    }

    /* renamed from: e */
    public final long m28776e() {
        Long l;
        try {
            l = Long.valueOf(C13640c.m3745d().m3748b("mopub_init_scenario_v1"));
        } catch (Exception e) {
            C13973d4.m2952a(new Exception("Get mopub_init_scenario_v1 config exception: " + e));
            l = null;
        }
        return l != null ? l.longValue() : 1L;
    }
}
