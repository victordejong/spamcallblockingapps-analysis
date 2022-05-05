package com.flurry.sdk;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.flurry.sdk.C3115fu;
import com.flurry.sdk.C3324j;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.flurry.sdk.n */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/n.class */
public class C3478n {

    /* renamed from: a */
    public static final String f5989a = "n";

    /* renamed from: c */
    public static Map<String, EnumC2872bg> f5990c = Collections.unmodifiableMap(new HashMap<String, EnumC2872bg>() { // from class: com.flurry.sdk.n.1
        {
            put(MraidParser.MRAID_COMMAND_PLAY_VIDEO, EnumC2872bg.AC_MRAID_PLAY_VIDEO);
            put(MraidParser.MRAID_COMMAND_OPEN, EnumC2872bg.AC_MRAID_OPEN);
            put(MraidParser.MRAID_COMMAND_EXPAND, EnumC2872bg.AC_MRAID_DO_EXPAND);
            put("collapse", EnumC2872bg.AC_MRAID_DO_COLLAPSE);
        }
    });

    /* renamed from: d */
    public static Set<EnumC2872bg> f5991d = Collections.unmodifiableSet(new HashSet<EnumC2872bg>() { // from class: com.flurry.sdk.n.2
        {
            add(EnumC2872bg.AC_NOTIFY_USER);
            add(EnumC2872bg.AC_NEXT_FRAME);
            add(EnumC2872bg.AC_CLOSE_AD);
            add(EnumC2872bg.AC_MRAID_DO_EXPAND);
            add(EnumC2872bg.AC_MRAID_DO_COLLAPSE);
            add(EnumC2872bg.AC_VERIFY_URL);
        }
    });

    /* renamed from: b */
    public final AbstractC3344jl<C3259i> f5992b = new AbstractC3344jl<C3259i>(this) { // from class: com.flurry.sdk.n.3
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3259i iVar) {
            C3259i iVar2 = iVar;
            String str = C3478n.f5989a;
            C3356jq.m32615a(3, str, "Detected event was fired :" + iVar2.f5464a + " for adSpace:" + iVar2.f5464a.m32914a().f4436b);
            C3478n.m32367a(iVar2);
        }
    };

    /* renamed from: com.flurry.sdk.n$4 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/n$4.class */
    public static final /* synthetic */ class C34824 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5993a = new int[EnumC2874bi.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0241 -> B:225:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0245 -> B:151:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x0249 -> B:145:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x024d -> B:163:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x0251 -> B:157:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x0255 -> B:175:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0259 -> B:169:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x025d -> B:185:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0261 -> B:179:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x0265 -> B:195:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x0269 -> B:189:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x026d -> B:205:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:112:0x0271 -> B:199:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0275 -> B:217:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x0279 -> B:211:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x027d -> B:229:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x0281 -> B:223:0x010c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x0285 -> B:149:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:118:0x0289 -> B:143:0x0124). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:119:0x028d -> B:161:0x0130). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:120:0x0291 -> B:155:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:121:0x0295 -> B:173:0x0148). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x0299 -> B:167:0x0154). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:123:0x029d -> B:183:0x0160). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:124:0x02a1 -> B:177:0x016c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x02a5 -> B:193:0x0178). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:126:0x02a9 -> B:187:0x0184). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x02ad -> B:203:0x0190). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:128:0x02b1 -> B:197:0x019c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:129:0x02b5 -> B:215:0x01a8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:130:0x02b9 -> B:209:0x01b4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:131:0x02bd -> B:227:0x01c0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:132:0x02c1 -> B:221:0x01cc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:133:0x02c5 -> B:147:0x01d8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:134:0x02c9 -> B:141:0x01e4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:135:0x02cd -> B:159:0x01f0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:136:0x02d1 -> B:153:0x01fc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:137:0x02d5 -> B:171:0x0208). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:138:0x02d9 -> B:165:0x0214). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:139:0x02dd -> B:181:0x0220). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x022d -> B:207:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x0231 -> B:201:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x0235 -> B:219:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0239 -> B:213:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x023d -> B:231:0x0040). Please submit an issue!!! */
        static {
            try {
                f5993a[EnumC2874bi.EV_RENDER_FAILED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5993a[EnumC2874bi.EV_RENDERED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5993a[EnumC2874bi.EV_VIDEO_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5993a[EnumC2874bi.EV_VIDEO_FIRST_QUARTILE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5993a[EnumC2874bi.EV_VIDEO_MIDPOINT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5993a[EnumC2874bi.EV_VIDEO_THIRD_QUARTILE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5993a[EnumC2874bi.EV_VIDEO_COMPLETED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f5993a[EnumC2874bi.EV_CLICKED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5993a[EnumC2874bi.EV_USER_CONFIRMED.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_WILL_CLOSE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f5993a[EnumC2874bi.EV_PRIVACY.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_CLOSED.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f5993a[EnumC2874bi.EV_VIDEO_CLOSED.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f5993a[EnumC2874bi.EV_REQUEST_AD_COLLAPSE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f5993a[EnumC2874bi.EV_NATIVE_IMPRESSION.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f5993a[EnumC2874bi.EV_FILLED.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f5993a[EnumC2874bi.EV_PACKAGE_VERIFIED.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f5993a[EnumC2874bi.EV_PACKAGE_NOT_VERIFIED.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_EXPANDED.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_COLLAPSED.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f5993a[EnumC2874bi.INTERNAL_EV_AD_OPENED.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f5993a[EnumC2874bi.INTERNAL_EV_APP_EXIT.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f5993a[EnumC2874bi.INTERNAL_EV_CALL_CLICKED.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f5993a[EnumC2874bi.EV_CALL_CLICK_BEACON.ordinal()] = 24;
            } catch (NoSuchFieldError e24) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_REPORT_SHARE.ordinal()] = 25;
            } catch (NoSuchFieldError e25) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_REPORT_SAVE.ordinal()] = 26;
            } catch (NoSuchFieldError e26) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_REPORT_CLICK_INTERNAL.ordinal()] = 27;
            } catch (NoSuchFieldError e27) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_REPORT_IMPR_INTERNAL.ordinal()] = 28;
            } catch (NoSuchFieldError e28) {
            }
            try {
                f5993a[EnumC2874bi.EV_STATIC_VIEWED_3P.ordinal()] = 29;
            } catch (NoSuchFieldError e29) {
            }
            try {
                f5993a[EnumC2874bi.EV_PARTIAL_VIEWED.ordinal()] = 30;
            } catch (NoSuchFieldError e30) {
            }
            try {
                f5993a[EnumC2874bi.INTERNAL_EV_NATIVE_END_CARD_IMPRESSION.ordinal()] = 31;
            } catch (NoSuchFieldError e31) {
            }
            try {
                f5993a[EnumC2874bi.EV_REQUESTED.ordinal()] = 32;
            } catch (NoSuchFieldError e32) {
            }
            try {
                f5993a[EnumC2874bi.EV_UNFILLED.ordinal()] = 33;
            } catch (NoSuchFieldError e33) {
            }
            try {
                f5993a[EnumC2874bi.EV_PREPARED.ordinal()] = 34;
            } catch (NoSuchFieldError e34) {
            }
            try {
                f5993a[EnumC2874bi.EV_USER_CANCELLED.ordinal()] = 35;
            } catch (NoSuchFieldError e35) {
            }
            try {
                f5993a[EnumC2874bi.EV_CAP_NOT_EXHAUSTED.ordinal()] = 36;
            } catch (NoSuchFieldError e36) {
            }
            try {
                f5993a[EnumC2874bi.EV_CAP_EXHAUSTED.ordinal()] = 37;
            } catch (NoSuchFieldError e37) {
            }
            try {
                f5993a[EnumC2874bi.EV_URL_VERIFIED.ordinal()] = 38;
            } catch (NoSuchFieldError e38) {
            }
            try {
                f5993a[EnumC2874bi.EV_URL_NOT_VERIFIED.ordinal()] = 39;
            } catch (NoSuchFieldError e39) {
            }
            try {
                f5993a[EnumC2874bi.EV_VIDEO_PROGRESSED.ordinal()] = 40;
            } catch (NoSuchFieldError e40) {
            }
            try {
                f5993a[EnumC2874bi.EV_SENT_TO_URL.ordinal()] = 41;
            } catch (NoSuchFieldError e41) {
            }
            try {
                f5993a[EnumC2874bi.EV_REQUEST_AD_COMPONENTS.ordinal()] = 42;
            } catch (NoSuchFieldError e42) {
            }
            try {
                f5993a[EnumC2874bi.EV_AD_UNIT_MERGED.ordinal()] = 43;
            } catch (NoSuchFieldError e43) {
            }
            try {
                f5993a[EnumC2874bi.EV_SEND_URL_STATUS_RESULT.ordinal()] = 44;
            } catch (NoSuchFieldError e44) {
            }
            try {
                f5993a[EnumC2874bi.EV_REWARD_GRANTED.ordinal()] = 45;
            } catch (NoSuchFieldError e45) {
            }
            try {
                f5993a[EnumC2874bi.EV_UNKNOWN.ordinal()] = 46;
            } catch (NoSuchFieldError e46) {
            }
        }
    }

    /* renamed from: a */
    public static void m32369a(C3192h hVar) {
        String str = f5989a;
        C3356jq.m32615a(3, str, "Firing onClose, adObject=" + hVar.f5303d);
        C3324j jVar = new C3324j();
        jVar.f5647a = hVar.f5303d;
        jVar.f5648b = C3324j.EnumC3325a.kOnClose;
        jVar.m32637b();
        m32365b();
    }

    /* renamed from: a */
    public static void m32368a(C3192h hVar, List<C3013e> list) {
        boolean z;
        C2853ay ayVar = hVar.f5304e;
        C3023ei.m33266a(ayVar, hVar.f5300a.f4289an, ayVar.m33528c().f4371f);
        Iterator<C3013e> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (f5991d.contains(it.next().f4697a)) {
                z = true;
                break;
            }
        }
        if (!z) {
            list.add(0, new C3013e(EnumC2872bg.AC_CLOSE_AD, Collections.emptyMap(), hVar));
            C2806af afVar = C3484p.m32358a().f6006h;
            C2806af.m33650a(hVar.f5303d);
            C3484p.m32358a().f6006h.m33632e();
        }
    }

    /* renamed from: a */
    public static void m32367a(C3259i iVar) {
        C3192h hVar = iVar.f5464a;
        String str = hVar.f5300a.f4289an;
        C2904ca c = hVar.f5304e.m33528c();
        ArrayList<C3013e> arrayList = new ArrayList();
        List<C2912ci> list = c.f4370e;
        String str2 = hVar.f5300a.f4289an;
        for (C2912ci ciVar : list) {
            if (ciVar.f4474a.equals(str2)) {
                for (String str3 : ciVar.f4475b) {
                    HashMap hashMap = new HashMap();
                    int indexOf = str3.indexOf(63);
                    String str4 = str3;
                    if (indexOf != -1) {
                        str4 = str3.substring(0, indexOf);
                        String substring = str3.substring(indexOf + 1);
                        String str5 = substring;
                        if (substring.contains("%{eventParams}")) {
                            str5 = substring.replace("%{eventParams}", "");
                            hashMap.putAll(hVar.f5301b);
                        }
                        hashMap.putAll(C3445la.m32451g(str5));
                    }
                    arrayList.add(new C3013e(C3013e.m33300a(str4), hashMap, hVar));
                }
            }
        }
        String str6 = f5989a;
        C3356jq.m32615a(4, str6, "Ad EventType:" + str + " for adUnit:" + hVar.f5304e.f4111b.f4146a);
        C3444l.m32473a().m32472a(str);
        C3484p.m32358a();
        C2885bo c2 = C3484p.m32349c();
        if (c2 != null) {
            c2.m33469a(hVar);
        }
        if (arrayList.isEmpty()) {
            for (Map.Entry<String, EnumC2872bg> entry : f5990c.entrySet()) {
                if (entry.getKey().equals(hVar.f5300a.f4289an)) {
                    arrayList.add(new C3013e(entry.getValue(), hVar.f5301b, hVar));
                }
            }
        }
        switch (C34824.f5993a[hVar.f5300a.ordinal()]) {
            case 1:
                boolean z = hVar.f5301b.remove("binding_3rd_party") != null;
                if (hVar.m32914a().f4440f.get(0).f4366a == 4) {
                    z = true;
                }
                if (hVar.f5301b.remove("preRender") != null || z) {
                    m32362c(hVar, arrayList);
                } else {
                    String str7 = f5989a;
                    C3356jq.m32615a(3, str7, "Firing onRenderFailed, adObject=" + hVar.f5303d);
                    C3324j jVar = new C3324j();
                    jVar.f5647a = hVar.f5303d;
                    jVar.f5648b = C3324j.EnumC3325a.kOnRenderFailed;
                    jVar.m32637b();
                }
                C2853ay ayVar = hVar.f5304e;
                C3023ei.m33262b(ayVar, hVar.f5300a.f4289an, ayVar.m33528c().f4371f);
                if (hVar.f5304e.m33526d()) {
                    m32365b();
                }
                C3484p.m32358a().f6006h.m33638c(hVar.f5304e);
                C2806af afVar = C3484p.m32358a().f6006h;
                C2806af.m33650a(hVar.f5303d);
                C3484p.m32358a().f6006h.m33632e();
                break;
            case 2:
                C3076ff e = hVar.f5304e.m33525e();
                if (!e.f4894b) {
                    C2853ay ayVar2 = hVar.f5304e;
                    C3023ei.m33260d(ayVar2, hVar.f5300a.f4289an, ayVar2.m33528c().f4371f);
                    e.f4894b = true;
                    hVar.f5304e.m33536a(e);
                    break;
                }
                break;
            case 3:
                C2853ay ayVar3 = hVar.f5304e;
                C3023ei.m33259e(ayVar3, hVar.f5300a.f4289an, ayVar3.m33528c().f4371f);
                C3076ff e2 = hVar.f5304e.m33525e();
                e2.f4895c = true;
                hVar.f5304e.m33536a(e2);
                break;
            case 4:
                C2853ay ayVar4 = hVar.f5304e;
                C3023ei.m33258f(ayVar4, hVar.f5300a.f4289an, ayVar4.m33528c().f4371f);
                C3076ff e3 = hVar.f5304e.m33525e();
                e3.f4896d = true;
                hVar.f5304e.m33536a(e3);
                break;
            case 5:
                C2853ay ayVar5 = hVar.f5304e;
                C3023ei.m33257g(ayVar5, hVar.f5300a.f4289an, ayVar5.m33528c().f4371f);
                C3076ff e4 = hVar.f5304e.m33525e();
                e4.f4897e = true;
                hVar.f5304e.m33536a(e4);
                break;
            case 6:
                C2853ay ayVar6 = hVar.f5304e;
                C3023ei.m33256h(ayVar6, hVar.f5300a.f4289an, ayVar6.m33528c().f4371f);
                C3076ff e5 = hVar.f5304e.m33525e();
                e5.f4898f = true;
                hVar.f5304e.m33536a(e5);
                break;
            case 7:
                C2853ay ayVar7 = hVar.f5304e;
                C3023ei.m33255i(ayVar7, hVar.f5300a.f4289an, ayVar7.m33528c().f4371f);
                if (TextUtils.isEmpty(hVar.f5301b.get("doNotRemoveAssets"))) {
                    C2806af afVar2 = C3484p.m32358a().f6006h;
                    C2806af.m33650a(hVar.f5303d);
                    C3484p.m32358a().f6006h.m33632e();
                }
                String str8 = f5989a;
                C3356jq.m32615a(3, str8, "initLayout onVideoCompleted " + hVar.f5302c);
                if (hVar.m32914a().f4451q) {
                    C3356jq.m32615a(3, f5989a, "Ad unit is rewardable, onVideoCompleted listener will fire");
                    String str9 = f5989a;
                    C3356jq.m32615a(3, str9, "Firing onVideoCompleted, adObject=" + hVar.f5303d);
                    C3324j jVar2 = new C3324j();
                    jVar2.f5647a = hVar.f5303d;
                    jVar2.f5648b = C3324j.EnumC3325a.kOnVideoCompleted;
                    jVar2.m32637b();
                    break;
                } else {
                    C3356jq.m32615a(3, f5989a, "Ad unit is not rewardable, onVideoCompleted listener will not fire");
                    break;
                }
            case 8:
                hVar.f5304e.m33522h();
                String str10 = f5989a;
                C3356jq.m32615a(3, str10, "Firing onClicked, adObject=" + hVar.f5303d);
                if (hVar.f5303d instanceof C2772aa) {
                    C3444l.m32473a().m32472a("nativeAdClick");
                }
                C3324j jVar3 = new C3324j();
                jVar3.f5647a = hVar.f5303d;
                jVar3.f5648b = C3324j.EnumC3325a.kOnClicked;
                jVar3.m32637b();
                Map<String, String> map = hVar.f5301b;
                if (map == null || !map.containsKey("doNotPresent") || !hVar.f5301b.get("doNotPresent").equals("true")) {
                    C2853ay ayVar8 = hVar.f5304e;
                    C3021eh b = ayVar8.m33532b();
                    if (b != null) {
                        C3076ff e6 = hVar.f5304e.m33525e();
                        String b2 = b.m33272b();
                        if (e6 != null && !TextUtils.isEmpty(b2)) {
                            ayVar8.m33536a(e6);
                            C3484p.m32358a();
                            C3475m e7 = C3484p.m32345e();
                            Context context = hVar.f5302c;
                            AbstractC3518x xVar = hVar.f5303d;
                            if (context == null) {
                                C3356jq.m32615a(5, C3475m.f5981a, "Cannot process redirect, null context");
                            } else {
                                e7.m32378a(context, b2, true, xVar, false);
                            }
                        }
                        if (e6 != null && !e6.f4900h) {
                            e6.f4900h = true;
                            ayVar8.m33536a(e6);
                            C2853ay ayVar9 = hVar.f5304e;
                            C3023ei.m33261c(ayVar9, hVar.f5300a.f4289an, ayVar9.m33528c().f4371f);
                            break;
                        }
                    }
                } else {
                    C3356jq.m32615a(3, f5989a, "onClicked reporting complete, not processing url");
                    break;
                }
                break;
            case 9:
                C2806af afVar3 = C3484p.m32358a().f6006h;
                C2806af.m33650a(hVar.f5303d);
                C3484p.m32358a().f6006h.m33632e();
                break;
            case 10:
                m32368a(hVar, arrayList);
                break;
            case 11:
                for (C3013e eVar : arrayList) {
                    if (eVar.f4697a.equals(EnumC2872bg.AC_DIRECT_OPEN)) {
                        eVar.m33299a("is_privacy", "true");
                    }
                }
                break;
            case 12:
                m32369a(hVar);
                break;
            case 13:
                String str11 = f5989a;
                C3356jq.m32615a(3, str11, "Firing onVideoClose, adObject=" + hVar.f5303d);
                C3324j jVar4 = new C3324j();
                jVar4.f5647a = hVar.f5303d;
                jVar4.f5648b = C3324j.EnumC3325a.kOnClose;
                jVar4.m32637b();
                break;
            case 14:
                m32369a(hVar);
                break;
            case 15:
                String str12 = f5989a;
                C3356jq.m32615a(3, str12, "Firing onAdImpressionLogged, adObject=" + hVar.f5303d);
                C3324j jVar5 = new C3324j();
                jVar5.f5647a = hVar.f5303d;
                jVar5.f5648b = C3324j.EnumC3325a.kOnImpressionLogged;
                jVar5.m32637b();
                break;
            case 16:
                if (hVar.f5303d instanceof C2772aa) {
                    C3444l.m32473a().m32472a("nativeAdFilled");
                    break;
                }
                break;
            case 17:
                m32363b(hVar, arrayList);
                break;
            case 18:
                if (hVar.f5301b.containsValue(EnumC2874bi.EV_FILLED.f4289an)) {
                    C3356jq.m32615a(3, "VerifyPackageLog", "onPackageNotVerified() ready to fire PRE-RENDER.");
                    m32364b(hVar);
                    break;
                }
                break;
            case 19:
                String str13 = f5989a;
                C3356jq.m32615a(3, str13, "Firing onExpanded, adObject=" + hVar.f5303d);
                C3324j jVar6 = new C3324j();
                jVar6.f5647a = hVar.f5303d;
                jVar6.f5648b = C3324j.EnumC3325a.kOnExpanded;
                jVar6.m32637b();
                break;
            case 20:
                String str14 = f5989a;
                C3356jq.m32615a(3, str14, "Firing onCollapsed, adObject=" + hVar.f5303d);
                C3324j jVar7 = new C3324j();
                jVar7.f5647a = hVar.f5303d;
                jVar7.f5648b = C3324j.EnumC3325a.kOnCollapsed;
                jVar7.m32637b();
                break;
            case 21:
                String str15 = f5989a;
                C3356jq.m32615a(3, str15, "Firing onOpen, adObject=" + hVar.f5303d);
                C3324j jVar8 = new C3324j();
                jVar8.f5647a = hVar.f5303d;
                jVar8.f5648b = C3324j.EnumC3325a.kOnOpen;
                jVar8.m32637b();
                break;
            case 22:
                String str16 = f5989a;
                C3356jq.m32615a(3, str16, "Firing onAppExit, adObject=" + hVar.f5303d);
                C3324j jVar9 = new C3324j();
                jVar9.f5647a = hVar.f5303d;
                jVar9.f5648b = C3324j.EnumC3325a.kOnAppExit;
                jVar9.m32637b();
                m32365b();
                break;
            case 23:
                AbstractC3518x xVar2 = hVar.f5303d;
                Map<String, String> map2 = hVar.f5301b;
                if (map2 != null && map2.containsKey("phoneNumber")) {
                    C3016ec.m33291a(xVar2.mo32282e(), Uri.parse("tel://" + map2.get("phoneNumber")));
                    break;
                }
                break;
            case 24:
                String str17 = f5989a;
                C3356jq.m32615a(3, str17, "Firing onCallBeaconFire, adObject=" + hVar.f5303d);
                break;
            case 25:
            case 26:
            case 27:
            case 28:
                String str18 = f5989a;
                C3356jq.m32615a(3, str18, "Firing onAdEvent, adObject=" + hVar.f5303d);
                break;
            case 29:
                String str19 = f5989a;
                C3356jq.m32615a(3, str19, "Firing static impression 3p, adObject=" + hVar.f5303d);
                break;
            case 30:
                String str20 = f5989a;
                C3356jq.m32615a(3, str20, "Firing partial impression, adObject=" + hVar.f5303d);
                break;
            default:
                String str21 = f5989a;
                C3356jq.m32615a(3, str21, "Event not handled: { " + hVar.f5300a + " for adSpace: {" + hVar.f5304e.m33522h());
                break;
        }
        m32366a(iVar, arrayList);
    }

    /* renamed from: a */
    public static void m32366a(C3259i iVar, List<C3013e> list) {
        C3013e eVar = null;
        for (C3013e eVar2 : list) {
            if (eVar2.f4697a.equals(EnumC2872bg.AC_LOG_EVENT)) {
                eVar2.m33299a("__sendToServer", "true");
                eVar = eVar2;
            }
            if (eVar2.f4697a.equals(EnumC2872bg.AC_LOAD_AD_COMPONENTS)) {
                for (Map.Entry<String, String> entry : eVar2.f4699c.f5301b.entrySet()) {
                    eVar2.m33299a(entry.getKey(), entry.getValue());
                }
            }
            C3356jq.m32603d(f5989a, eVar2.toString());
            C3484p.m32358a();
            C3484p.m32345e().m32376a(eVar2, iVar.f5465b + 1);
        }
        if (eVar == null) {
            HashMap hashMap = new HashMap();
            hashMap.put("__sendToServer", "false");
            C3013e eVar3 = new C3013e(EnumC2872bg.AC_LOG_EVENT, hashMap, iVar.f5464a);
            C3356jq.m32603d(f5989a, eVar3.toString());
            C3484p.m32358a();
            C3484p.m32345e().m32376a(eVar3, iVar.f5465b + 1);
        }
    }

    /* renamed from: b */
    public static void m32365b() {
        C3115fu fuVar = new C3115fu();
        fuVar.f5049d = C3115fu.EnumC3116a.f5051b;
        C3345jm.m32636a().m32635a(fuVar);
    }

    /* renamed from: b */
    public static void m32364b(C3192h hVar) {
        C3356jq.m32615a(3, "VerifyPackageLog", "onStartPrerender() Ready to pre-render.");
        hVar.f5303d.mo32280h().m33402e();
    }

    /* renamed from: b */
    public static void m32363b(C3192h hVar, List<C3013e> list) {
        boolean z;
        Iterator<C3013e> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().f4697a.equals(EnumC2872bg.AC_NEXT_AD_UNIT) && hVar.f5301b.containsValue(EnumC2874bi.EV_FILLED.f4289an)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (!z) {
            C3356jq.m32615a(3, "VerifyPackageLog", "onPackageVerified() no nextAdUnit or different originator, ready to fire PRE-RENDER. ");
            m32364b(hVar);
        }
    }

    /* renamed from: c */
    public static void m32362c(C3192h hVar, List<C3013e> list) {
        boolean z;
        Iterator<C3013e> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if (EnumC2872bg.AC_NEXT_AD_UNIT.equals(it.next().f4697a)) {
                z = false;
                break;
            }
        }
        if (z) {
            String str = f5989a;
            C3356jq.m32615a(3, str, "Firing onFetchFailed, adObject=" + hVar.f5303d);
            C3324j jVar = new C3324j();
            jVar.f5647a = hVar.f5303d;
            jVar.f5648b = C3324j.EnumC3325a.kOnFetchFailed;
            jVar.m32637b();
        }
    }
}
