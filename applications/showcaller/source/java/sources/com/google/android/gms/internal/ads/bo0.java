package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bo0.class */
public final class bo0 implements f03<Map<String, String>> {

    /* renamed from: a */
    final /* synthetic */ List f20535a;

    /* renamed from: b */
    final /* synthetic */ String f20536b;

    /* renamed from: c */
    final /* synthetic */ Uri f20537c;

    /* renamed from: d */
    final /* synthetic */ do0 f20538d;

    public bo0(do0 do0Var, List list, String str, Uri uri) {
        this.f20538d = do0Var;
        this.f20535a = list;
        this.f20536b = str;
        this.f20537c = uri;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        String valueOf = String.valueOf(this.f20537c);
        valueOf.length();
        ei0.m15464f("Failed to parse gmsg params for: ".concat(valueOf));
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(Map<String, String> map) {
        this.f20538d.m15717y(map, this.f20535a, this.f20536b);
    }
}
