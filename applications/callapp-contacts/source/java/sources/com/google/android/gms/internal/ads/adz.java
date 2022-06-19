package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adz.class */
public final class adz implements dbi<Map<String, String>> {

    /* renamed from: a */
    private final /* synthetic */ List f40032a;

    /* renamed from: b */
    private final /* synthetic */ String f40033b;

    /* renamed from: c */
    private final /* synthetic */ Uri f40034c;

    /* renamed from: d */
    private final /* synthetic */ C12170ads f40035d;

    public adz(C12170ads c12170ads, List list, String str, Uri uri) {
        this.f40035d = c12170ads;
        this.f40032a = list;
        this.f40033b = str;
        this.f40034c = uri;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(Map<String, String> map) {
        this.f40035d.m18843a(map, this.f40032a, this.f40033b);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        String valueOf = String.valueOf(this.f40034c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 33);
        sb.append("Failed to parse gmsg params for: ");
        sb.append(valueOf);
        zzd.zzez(sb.toString());
    }
}
