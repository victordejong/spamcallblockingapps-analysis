package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eaq.class */
public final class eaq implements eat, eau {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f27538a;

    /* renamed from: b  reason: collision with root package name */
    private final ecd f27539b;

    /* renamed from: c  reason: collision with root package name */
    private final dxw f27540c;

    /* renamed from: d  reason: collision with root package name */
    private final int f27541d;
    private final Handler e;
    private final eao f;
    private final int i;
    private eat j;
    private dwe k;
    private boolean l;
    private final String h = null;
    private final dwg g = new dwg();

    public eaq(Uri uri, ecd ecdVar, dxw dxwVar, int i, Handler handler, eao eaoVar, String str, int i2) {
        this.f27538a = uri;
        this.f27539b = ecdVar;
        this.f27540c = dxwVar;
        this.f27541d = i;
        this.e = handler;
        this.f = eaoVar;
        this.i = i2;
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final eas a(int i, ebz ebzVar) {
        ecr.a(i == 0);
        return new eah(this.f27538a, this.f27539b.a(), this.f27540c.a(), this.f27541d, this.e, this.f, this, ebzVar, null, this.i);
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void a() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void a(dvl dvlVar, eat eatVar) {
        this.j = eatVar;
        ebh ebhVar = new ebh(-9223372036854775807L, false);
        this.k = ebhVar;
        eatVar.a(ebhVar, null);
    }

    @Override // com.google.android.gms.internal.ads.eat
    public final void a(dwe dweVar, Object obj) {
        boolean z = false;
        if (dweVar.a(0, this.g, false).f27300d != -9223372036854775807L) {
            z = true;
        }
        if (!this.l || z) {
            this.k = dweVar;
            this.l = z;
            this.j.a(dweVar, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void a(eas easVar) {
        eah eahVar = (eah) easVar;
        ean eanVar = eahVar.f;
        ecm ecmVar = eahVar.e;
        eai eaiVar = new eai(eahVar, eanVar);
        if (ecmVar.f27629b != null) {
            ecmVar.f27629b.a(true);
        }
        ecmVar.f27628a.execute(eaiVar);
        ecmVar.f27628a.shutdown();
        eahVar.i.removeCallbacksAndMessages(null);
        eahVar.w = true;
    }

    @Override // com.google.android.gms.internal.ads.eau
    public final void b() {
        this.j = null;
    }
}
