package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.g */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/g.class */
public final class C3141g {

    /* renamed from: a */
    public static HashMap<EnumC2855b, Boolean> f5121a = new HashMap<>(15);

    static {
        boolean a = C3017ed.m33281a(C3331jb.m32681a().f5679a);
        f5121a.put(EnumC2855b.CAROUSEL, false);
        f5121a.put(EnumC2855b.VIDEO_END_CARD_HTML, false);
        f5121a.put(EnumC2855b.AD_EXTENSION_TYPE_CALL, false);
        f5121a.put(EnumC2855b.LREC, false);
        f5121a.put(EnumC2855b.MAIL_SPONSORED, false);
        f5121a.put(EnumC2855b.MOAT, true);
        f5121a.put(EnumC2855b.VAST_NATIVE, true);
        f5121a.put(EnumC2855b.GIF, false);
        f5121a.put(EnumC2855b.VIDEO_SPLIT_INSTALL, Boolean.valueOf(!a));
        f5121a.put(EnumC2855b.LEADS_GEN, false);
        f5121a.put(EnumC2855b.REENGAGEMENT, true);
        f5121a.put(EnumC2855b.HTML_RENDERER_POST_TAP, false);
        f5121a.put(EnumC2855b.HLS, false);
        f5121a.put(EnumC2855b.STATIC_VIEWABILITY, true);
        f5121a.put(EnumC2855b.TRAILER_ADS, false);
    }

    /* renamed from: a */
    public static List<C3057f> m32991a(String str) {
        List singletonList = Collections.singletonList(str);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<EnumC2855b, Boolean> entry : f5121a.entrySet()) {
            EnumC2855b key = entry.getKey();
            if (entry.getValue().booleanValue()) {
                arrayList.add(key);
            } else {
                arrayList2.add(key);
            }
        }
        return Collections.singletonList(new C3057f(singletonList, m32990a(arrayList), m32990a(arrayList2)));
    }

    /* renamed from: a */
    public static List<Integer> m32990a(List<EnumC2855b> list) {
        ArrayList arrayList = new ArrayList();
        for (EnumC2855b bVar : list) {
            arrayList.add(Integer.valueOf(bVar.f4137p));
        }
        return arrayList;
    }
}
