package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r10.class */
final /* synthetic */ class r10 implements n20 {

    /* renamed from: a */
    static final n20 f28730a = new r10();

    private r10() {
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final void mo8404a(Object obj, Map map) {
        xo0 xo0Var = (xo0) obj;
        n20<wn0> n20Var = m20.f26383a;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25585S5)).booleanValue()) {
            ei0.m15464f("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            ei0.m15464f("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        Boolean valueOf = Boolean.valueOf(xo0Var.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
        hashMap.put(str, valueOf);
        String obj2 = valueOf.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + obj2.length());
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(obj2);
        C5722o1.m17990k(sb.toString());
        ((s40) xo0Var).mo7959D0("openableApp", hashMap);
    }
}
