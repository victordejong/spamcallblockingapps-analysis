package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.aaj;
import com.google.android.gms.internal.ads.emg;
import com.google.android.gms.internal.ads.fa;
import com.google.android.gms.internal.ads.yu;
import com.google.android.gms.internal.ads.z;
import com.google.android.gms.internal.ads.zp;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbe.class */
public final class zzbe extends z<emg> {
    private final Map<String, String> zzaj;
    private final zp<emg> zzein;
    private final yu zzeio;

    public zzbe(String str, zp<emg> zpVar) {
        this(str, null, zpVar);
    }

    private zzbe(String str, Map<String, String> map, zp<emg> zpVar) {
        super(0, str, new zzbd(zpVar));
        this.zzaj = null;
        this.zzein = zpVar;
        yu yuVar = new yu();
        this.zzeio = yuVar;
        yuVar.a(str, "GET", null, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.ads.z
    public final fa<emg> zza(emg emgVar) {
        return fa.a(emgVar, aaj.a(emgVar));
    }

    @Override // com.google.android.gms.internal.ads.z
    public final /* synthetic */ void zza(emg emgVar) {
        emg emgVar2 = emgVar;
        yu yuVar = this.zzeio;
        Map<String, String> map = emgVar2.f27950c;
        int i = emgVar2.f27948a;
        if (yu.c()) {
            yuVar.a(map, i);
            if (i < 200 || i >= 300) {
                yuVar.b(null);
            }
        }
        yu yuVar2 = this.zzeio;
        byte[] bArr = emgVar2.f27949b;
        if (yu.c() && bArr != null) {
            yuVar2.a(bArr);
        }
        this.zzein.set(emgVar2);
    }
}
