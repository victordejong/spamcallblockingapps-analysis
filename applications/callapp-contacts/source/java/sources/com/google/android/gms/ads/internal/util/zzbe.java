package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.AbstractC13087z;
import com.google.android.gms.internal.ads.C12545fa;
import com.google.android.gms.internal.ads.C13081yu;
import com.google.android.gms.internal.ads.C13103zp;
import com.google.android.gms.internal.ads.aaj;
import com.google.android.gms.internal.ads.emg;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbe.class */
public final class zzbe extends AbstractC13087z<emg> {
    private final Map<String, String> zzaj;
    private final C13103zp<emg> zzein;
    private final C13081yu zzeio;

    public zzbe(String str, C13103zp<emg> c13103zp) {
        this(str, null, c13103zp);
    }

    private zzbe(String str, Map<String, String> map, C13103zp<emg> c13103zp) {
        super(0, str, new zzbd(c13103zp));
        this.zzaj = null;
        this.zzein = c13103zp;
        C13081yu c13081yu = new C13081yu();
        this.zzeio = c13081yu;
        c13081yu.m13919a(str, "GET", null, null);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13087z
    public final C12545fa<emg> zza(emg emgVar) {
        return C12545fa.m14680a(emgVar, aaj.m18953a(emgVar));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13087z
    public final /* synthetic */ void zza(emg emgVar) {
        emg emgVar2 = emgVar;
        C13081yu c13081yu = this.zzeio;
        Map<String, String> map = emgVar2.f49173c;
        int i = emgVar2.f49171a;
        if (C13081yu.m13908c()) {
            c13081yu.m13915a(map, i);
            if (i < 200 || i >= 300) {
                c13081yu.m13910b(null);
            }
        }
        C13081yu c13081yu2 = this.zzeio;
        byte[] bArr = emgVar2.f49172b;
        if (C13081yu.m13908c() && bArr != null) {
            c13081yu2.m13913a(bArr);
        }
        this.zzein.set(emgVar2);
    }
}
