package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eaq.class */
public final class eaq implements eat, eau {

    /* renamed from: a */
    private final Uri f48524a;

    /* renamed from: b */
    private final ecd f48525b;

    /* renamed from: c */
    private final dxw f48526c;

    /* renamed from: d */
    private final int f48527d;

    /* renamed from: e */
    private final Handler f48528e;

    /* renamed from: f */
    private final eao f48529f;

    /* renamed from: i */
    private final int f48532i;

    /* renamed from: j */
    private eat f48533j;

    /* renamed from: k */
    private dwe f48534k;

    /* renamed from: l */
    private boolean f48535l;

    /* renamed from: h */
    private final String f48531h = null;

    /* renamed from: g */
    private final dwg f48530g = new dwg();

    public eaq(Uri uri, ecd ecdVar, dxw dxwVar, int i, Handler handler, eao eaoVar, String str, int i2) {
        this.f48524a = uri;
        this.f48525b = ecdVar;
        this.f48526c = dxwVar;
        this.f48527d = i;
        this.f48528e = handler;
        this.f48529f = eaoVar;
        this.f48532i = i2;
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final eas mo15362a(int i, ebz ebzVar) {
        ecr.m15249a(i == 0);
        return new eah(this.f48524a, this.f48525b.mo15292a(), this.f48526c.mo15424a(), this.f48527d, this.f48528e, this.f48529f, this, ebzVar, null, this.f48532i);
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final void mo15363a() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final void mo15361a(dvl dvlVar, eat eatVar) {
        this.f48533j = eatVar;
        ebh ebhVar = new ebh(-9223372036854775807L, false);
        this.f48534k = ebhVar;
        eatVar.mo15350a(ebhVar, null);
    }

    @Override // com.google.android.gms.internal.ads.eat
    /* renamed from: a */
    public final void mo15350a(dwe dweVar, Object obj) {
        boolean z = false;
        if (dweVar.mo15311a(0, this.f48530g, false).f47783d != -9223372036854775807L) {
            z = true;
        }
        if (!this.f48535l || z) {
            this.f48534k = dweVar;
            this.f48535l = z;
            this.f48533j.mo15350a(dweVar, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final void mo15360a(eas easVar) {
        eah eahVar = (eah) easVar;
        ean eanVar = eahVar.f48475f;
        ecm ecmVar = eahVar.f48474e;
        eai eaiVar = new eai(eahVar, eanVar);
        if (ecmVar.f48693b != null) {
            ecmVar.f48693b.m15260a(true);
        }
        ecmVar.f48692a.execute(eaiVar);
        ecmVar.f48692a.shutdown();
        eahVar.f48478i.removeCallbacksAndMessages(null);
        eahVar.f48492w = true;
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: b */
    public final void mo15359b() {
        this.f48533j = null;
    }
}
