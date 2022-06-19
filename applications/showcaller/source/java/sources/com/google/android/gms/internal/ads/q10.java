package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q10.class */
final /* synthetic */ class q10 implements n20 {

    /* renamed from: a */
    static final n20 f28277a = new q10();

    private q10() {
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map map) {
        xo0 xo0Var = (xo0) obj;
        n20<wn0> n20Var = m20.f26383a;
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            ei0.m15464f("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = xo0Var.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str2, valueOf);
            String obj2 = valueOf.toString();
            StringBuilder sb = new StringBuilder(str2.length() + 14 + obj2.length());
            sb.append("/canOpenURLs;");
            sb.append(str2);
            sb.append(";");
            sb.append(obj2);
            C5722o1.m17990k(sb.toString());
        }
        ((s40) xo0Var).mo7959D0("openableURLs", hashMap);
    }
}
