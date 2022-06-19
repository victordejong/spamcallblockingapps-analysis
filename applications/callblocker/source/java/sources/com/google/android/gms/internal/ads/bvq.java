package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bvq.class */
public final class bvq implements cah<bvo> {

    /* renamed from: a */
    private final String f12354a;

    /* renamed from: b */
    private final crs f12355b;

    /* renamed from: c */
    private final bfg f12356c;

    public bvq(String str, crs crsVar, bfg bfgVar) {
        this.f12354a = str;
        this.f12355b = crsVar;
        this.f12356c = bfgVar;
    }

    /* renamed from: a */
    private static Bundle m11589a(chs chsVar) {
        Bundle bundle = new Bundle();
        try {
            if (chsVar.m11266n() != null) {
                bundle.putString("sdk_version", chsVar.m11266n().toString());
            }
        } catch (zzdhk e) {
        }
        try {
            if (chsVar.m11267m() != null) {
                bundle.putString("adapter_version", chsVar.m11267m().toString());
            }
        } catch (zzdhk e2) {
        }
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bvo> mo11479a() {
        crt<bvo> crtVar;
        if (new BigInteger(this.f12354a).equals(BigInteger.ONE)) {
            if (!cos.m10927c((String) dyx.m8158e().m7876a(edi.f16348aG))) {
                crtVar = this.f12355b.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.bvu

                    /* renamed from: a */
                    private final bvq f12361a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f12361a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f12361a.m11588b();
                    }
                });
                return crtVar;
            }
        }
        crtVar = crg.m10778a(new bvo(new Bundle()));
        return crtVar;
    }

    /* renamed from: b */
    public final /* synthetic */ bvo m11588b() {
        List<String> asList = Arrays.asList(((String) dyx.m8158e().m7876a(edi.f16348aG)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                bundle.putBundle(str, m11589a(this.f12356c.m12006a(str, new JSONObject())));
            } catch (zzdhk e) {
            }
        }
        return new bvo(bundle);
    }
}
