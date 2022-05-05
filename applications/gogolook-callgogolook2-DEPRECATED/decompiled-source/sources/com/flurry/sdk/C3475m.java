package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.flurry.sdk.C3115fu;
import java.util.Collections;
/* renamed from: com.flurry.sdk.m */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/m.class */
public class C3475m {

    /* renamed from: a */
    public static final String f5981a = "m";

    /* renamed from: b */
    public C3008dv f5982b = new C3008dv();

    /* renamed from: com.flurry.sdk.m$2 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/m$2.class */
    public static final /* synthetic */ class C34772 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5988a = new int[EnumC2872bg.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00ed -> B:80:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00f1 -> B:74:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f5 -> B:88:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f9 -> B:84:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00fd -> B:96:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0101 -> B:92:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0105 -> B:68:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0109 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x010d -> B:78:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0111 -> B:72:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0115 -> B:86:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0119 -> B:82:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x011d -> B:94:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0121 -> B:90:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0125 -> B:66:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0129 -> B:60:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x012d -> B:76:0x00dc). Please submit an issue!!! */
        static {
            try {
                f5988a[EnumC2872bg.AC_DIRECT_OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5988a[EnumC2872bg.AC_MRAID_PLAY_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5988a[EnumC2872bg.AC_MRAID_OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5988a[EnumC2872bg.AC_DELETE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5988a[EnumC2872bg.AC_PROCESS_REDIRECT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5988a[EnumC2872bg.AC_VERIFY_URL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5988a[EnumC2872bg.AC_VERIFY_PACKAGE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f5988a[EnumC2872bg.AC_LAUNCH_PACKAGE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5988a[EnumC2872bg.AC_SEND_URL_ASYNC.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f5988a[EnumC2872bg.AC_SEND_AD_LOGS.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f5988a[EnumC2872bg.AC_LOG_EVENT.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f5988a[EnumC2872bg.AC_NEXT_FRAME.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f5988a[EnumC2872bg.AC_NEXT_AD_UNIT.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f5988a[EnumC2872bg.AC_CHECK_CAP.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f5988a[EnumC2872bg.AC_UPDATE_VIEW_COUNT.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f5988a[EnumC2872bg.AC_CLOSE_AD.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f5988a[EnumC2872bg.AC_NOTIFY_USER.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f5988a[EnumC2872bg.AC_MRAID_DO_EXPAND.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f5988a[EnumC2872bg.AC_MRAID_DO_COLLAPSE.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m32379a(Context context, AbstractC3518x xVar) {
        C2853ay k = xVar.mo32279k();
        if (k.m33526d()) {
            C3115fu fuVar = new C3115fu();
            C3007du.m33321a(EnumC2874bi.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), context, xVar, k, 0);
            fuVar.f5049d = C3115fu.EnumC3116a.f5051b;
            C3345jm.m32636a().m32635a(fuVar);
            return;
        }
        C3007du.m33321a(EnumC2874bi.INTERNAL_EV_APP_EXIT, Collections.emptyMap(), context, xVar, k, 0);
    }

    /* renamed from: a */
    public static boolean m32374a(String str) {
        Intent launchIntentForPackage = C3331jb.m32681a().f5679a.getPackageManager().getLaunchIntentForPackage(str);
        return launchIntentForPackage != null && C3445la.m32466a(launchIntentForPackage);
    }

    /* renamed from: b */
    public static void m32373b(C3013e eVar) {
        String b = eVar.m33298b("idHash");
        if (!TextUtils.isEmpty(b)) {
            for (C2877bl blVar : C3484p.m32358a().f6005g.m33473a(b)) {
                blVar.f4306i++;
                blVar.f4307j = System.currentTimeMillis();
                C3356jq.m32615a(4, f5981a, "updateViewCount:capType=" + blVar.f4298a + ",id=" + blVar.f4299b + ",capRemaining=" + blVar.f4303f + ",totalCap=" + blVar.f4304g + ",views=" + blVar.f4306i);
                if (blVar.f4306i >= blVar.f4303f) {
                    String str = eVar.f4699c.m32914a().f4436b;
                    if (blVar.f4306i > blVar.f4303f) {
                        C3356jq.m32615a(6, f5981a, "FlurryAdAction: !! rendering a capped object for id: " + blVar.f4299b + " for adspace: " + str);
                    } else {
                        C3356jq.m32615a(4, f5981a, "FlurryAdAction: hit cap for id: " + blVar.f4299b + " for adspace: " + str);
                    }
                    C2876bk bkVar = new C2876bk();
                    bkVar.f4297a = blVar;
                    bkVar.m32637b();
                }
            }
        }
    }

    /* renamed from: b */
    public static void m32372b(C3013e eVar, int i) {
        Context context = eVar.f4699c.f5302c;
        String b = eVar.m33298b("idHash");
        if (!TextUtils.isEmpty(b)) {
            C2883bm bmVar = C3484p.m32358a().f6005g;
            for (C2877bl blVar : bmVar.m33473a(b)) {
                EnumC2874bi biVar = EnumC2874bi.EV_CAP_NOT_EXHAUSTED;
                C2877bl blVar2 = blVar;
                if (blVar != null) {
                    blVar2 = blVar;
                    if (C2883bm.m33476a(blVar.f4301d)) {
                        String str = f5981a;
                        C3356jq.m32615a(4, str, "Discarding expired frequency cap info for id=" + b);
                        bmVar.m33474a(blVar.f4298a, b);
                        blVar2 = null;
                    }
                }
                if (blVar2 != null && blVar2.f4306i >= blVar2.f4303f) {
                    String str2 = f5981a;
                    C3356jq.m32615a(4, str2, "Frequency cap exhausted for id=" + b);
                    biVar = EnumC2874bi.EV_CAP_EXHAUSTED;
                }
                C3444l.m32473a().m32472a(biVar.f4289an);
                C3192h hVar = eVar.f4699c;
                C3007du.m33321a(biVar, Collections.emptyMap(), context, hVar.f5303d, hVar.f5304e, i + 1);
            }
        }
    }

    /* renamed from: b */
    public static void m32371b(AbstractC3518x xVar, String str, boolean z) {
        C3115fu fuVar = new C3115fu();
        fuVar.f5049d = C3115fu.EnumC3116a.f5050a;
        fuVar.f5046a = xVar;
        fuVar.f5047b = str;
        fuVar.f5048c = z;
        C3345jm.m32636a().m32635a(fuVar);
    }

    /* renamed from: a */
    public final void m32378a(final Context context, final String str, final boolean z, final AbstractC3518x xVar, final boolean z2) {
        if (context == null) {
            C3356jq.m32615a(5, f5981a, "Unable to launch url, null context");
        } else {
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.m.1
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    if (!TextUtils.isEmpty(str)) {
                        String a = C3452lf.m32439a(str);
                        if (!TextUtils.isEmpty(a)) {
                            boolean z3 = false;
                            if (C3452lf.m32433d(a)) {
                                z3 = C3016ec.m33288a(context, a);
                            }
                            boolean z4 = z3;
                            if (!z3) {
                                z4 = z3;
                                if (C3452lf.m32432e(a)) {
                                    z4 = C3016ec.m33286b(context, a);
                                }
                            }
                            boolean z5 = z4;
                            if (!z4) {
                                z5 = C3016ec.m33283d(context, a);
                            }
                            if (!z5 || !z2) {
                                C2853ay k = xVar.mo32279k();
                                if (!z5 && k.f4111b.f4152g) {
                                    C3475m.m32371b(xVar, a, z2);
                                } else if (z5 || !z) {
                                    C3016ec.m33284c(context, a);
                                } else {
                                    C3016ec.m33289a(context, xVar, a, z2);
                                }
                            } else {
                                C3475m.m32379a(context, xVar);
                            }
                        }
                    } else {
                        String str2 = C3475m.f5981a;
                        C3356jq.m32615a(6, str2, "Failed to launch: " + str);
                    }
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0105, code lost:
        if (r0.equals(com.flurry.sdk.EnumC2874bi.EV_CALL_CLICK_BEACON) == false) goto L_0x01d5;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03a1  */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v4, types: [long] */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32377a(com.flurry.sdk.C3013e r11) {
        /*
            Method dump skipped, instructions count: 986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3475m.m32377a(com.flurry.sdk.e):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v3, types: [long] */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32376a(com.flurry.sdk.C3013e r9, int r10) {
        /*
            Method dump skipped, instructions count: 2995
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3475m.m32376a(com.flurry.sdk.e, int):void");
    }
}
