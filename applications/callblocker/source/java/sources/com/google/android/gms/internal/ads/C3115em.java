package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.em */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/em.class */
public final class C3115em {

    /* renamed from: a */
    public static final AbstractC3131fa<act> f16620a = C3114el.f16619a;

    /* renamed from: b */
    public static final AbstractC3131fa<act> f16621b = C3117eo.f16639a;

    /* renamed from: c */
    public static final AbstractC3131fa<act> f16622c = C3116en.f16638a;

    /* renamed from: d */
    public static final AbstractC3131fa<act> f16623d = new C3121es();

    /* renamed from: e */
    public static final AbstractC3131fa<act> f16624e = new C3120er();

    /* renamed from: f */
    public static final AbstractC3131fa<act> f16625f = C3119eq.f16641a;

    /* renamed from: g */
    public static final AbstractC3131fa<Object> f16626g = new C3123eu();

    /* renamed from: h */
    public static final AbstractC3131fa<act> f16627h = new C3122et();

    /* renamed from: i */
    public static final AbstractC3131fa<act> f16628i = C3118ep.f16640a;

    /* renamed from: j */
    public static final AbstractC3131fa<act> f16629j = new C3125ew();

    /* renamed from: k */
    public static final AbstractC3131fa<act> f16630k = new C3124ev();

    /* renamed from: l */
    public static final AbstractC3131fa<aad> f16631l = new abq();

    /* renamed from: m */
    public static final AbstractC3131fa<aad> f16632m = new abp();

    /* renamed from: n */
    public static final AbstractC3131fa<act> f16633n = new C3112ej();

    /* renamed from: o */
    public static final C3137fg f16634o = new C3137fg();

    /* renamed from: p */
    public static final AbstractC3131fa<act> f16635p = new C3127ey();

    /* renamed from: q */
    public static final AbstractC3131fa<act> f16636q = new C3126ex();

    /* renamed from: r */
    public static final AbstractC3131fa<act> f16637r = new C3132fb();

    /* renamed from: a */
    public static final /* synthetic */ void m7858a(AbstractC2764ads abstractC2764ads, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            C3556uu.m6745e("URL missing from httpTrack GMSG.");
        } else {
            new C3620xd(abstractC2764ads.getContext(), ((aed) abstractC2764ads).mo13438j().f17636a, str).m7063b();
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m7857a(aea aeaVar, Map map) {
        String str = (String) map.get("tx");
        String str2 = (String) map.get("ty");
        String str3 = (String) map.get("td");
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            int parseInt3 = Integer.parseInt(str3);
            ctl mo13423y = aeaVar.mo13423y();
            if (mo13423y == null) {
                return;
            }
            mo13423y.m10670a().mo11054a(parseInt, parseInt2, parseInt3);
        } catch (NumberFormatException e) {
            C3556uu.m6745e("Could not parse touch parameters from gmsg.");
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m7856a(AbstractC3187hc abstractC3187hc, Map map) {
        String str = (String) map.get("u");
        if (str == null) {
            C3556uu.m6745e("URL missing from click GMSG.");
            return;
        }
        Uri parse = Uri.parse(str);
        try {
            ctl mo13423y = ((aea) abstractC3187hc).mo13423y();
            if (mo13423y != null && mo13423y.m10669a(parse)) {
                parse = mo13423y.m10667a(parse, ((AbstractC2764ads) abstractC3187hc).getContext(), ((aec) abstractC3187hc).getView(), ((AbstractC2764ads) abstractC3187hc).mo13444f());
            }
        } catch (zzdw e) {
            String valueOf = String.valueOf(str);
            C3556uu.m6745e(valueOf.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf) : new String("Unable to append parameter to URL: "));
        }
        new C3620xd(((AbstractC2764ads) abstractC3187hc).getContext(), ((aed) abstractC3187hc).mo13438j().f17636a, C3525tq.m7132a(parse, ((AbstractC2764ads) abstractC3187hc).getContext())).m7063b();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:(3:64|9|10)|(11:60|12|13|14|(10:16|(1:18)|19|(1:21)|22|(1:24)|25|(1:27)|28|(2:30|(1:32)))|33|(1:35)(1:52)|62|36|67|37)|50|13|14|(0)|33|(0)(0)|62|36|67|37|7) */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x01ae, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01af, code lost:
        com.google.android.gms.internal.ads.C3556uu.m6748c("Error constructing openable urls response.", r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a8  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x01af -> B:37:0x013d). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m7855b(com.google.android.gms.internal.ads.AbstractC2764ads r7, java.util.Map r8) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3115em.m7855b(com.google.android.gms.internal.ads.ads, java.util.Map):void");
    }

    /* renamed from: c */
    public static final /* synthetic */ void m7854c(AbstractC2764ads abstractC2764ads, Map map) {
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            C3556uu.m6745e("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = abstractC2764ads.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            hashMap.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) != null));
        }
        ((AbstractC3187hc) abstractC2764ads).mo7737a("openableURLs", hashMap);
    }
}
