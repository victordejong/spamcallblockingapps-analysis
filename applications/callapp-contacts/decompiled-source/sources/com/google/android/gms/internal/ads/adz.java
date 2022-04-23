package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/adz.class */
public final class adz implements dbi<Map<String, String>> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ List f23172a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23173b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ Uri f23174c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ads f23175d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adz(ads adsVar, List list, String str, Uri uri) {
        this.f23175d = adsVar;
        this.f23172a = list;
        this.f23173b = str;
        this.f23174c = uri;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Map<String, String> map) {
        this.f23175d.a(map, this.f23172a, this.f23173b);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        String valueOf = String.valueOf(this.f23174c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 33);
        sb.append("Failed to parse gmsg params for: ");
        sb.append(valueOf);
        zzd.zzez(sb.toString());
    }
}
