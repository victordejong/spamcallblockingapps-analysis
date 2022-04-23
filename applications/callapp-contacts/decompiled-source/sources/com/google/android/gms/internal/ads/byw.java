package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byw.class */
public final class byw extends eks {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25421a;

    /* renamed from: b  reason: collision with root package name */
    private final afq f25422b;

    /* renamed from: c  reason: collision with root package name */
    private final cpq f25423c;

    /* renamed from: d  reason: collision with root package name */
    private final bdb f25424d = new bdb();
    private eki e;

    public byw(afq afqVar, Context context, String str) {
        cpq cpqVar = new cpq();
        this.f25423c = cpqVar;
        this.f25422b = afqVar;
        cpqVar.f26231d = str;
        this.f25421a = context;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final eko a() {
        bcy a2 = this.f25424d.a();
        cpq cpqVar = this.f25423c;
        ArrayList<String> arrayList = new ArrayList<>();
        if (a2.f24195c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (a2.f24193a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (a2.f24194b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (a2.f.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (a2.e != null) {
            arrayList.add(Integer.toString(7));
        }
        cpqVar.g = arrayList;
        this.f25423c.h = a2.a();
        cpq cpqVar2 = this.f25423c;
        if (cpqVar2.f26229b == null) {
            cpqVar2.f26229b = zzvt.zzqk();
        }
        return new byz(this.f25421a, this.f25422b, this.f25423c, a2, this.e);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.f25423c.a(adManagerAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(PublisherAdViewOptions publisherAdViewOptions) {
        this.f25423c.a(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(eki ekiVar) {
        this.e = ekiVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(elk elkVar) {
        this.f25423c.f26230c = elkVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(es esVar) {
        this.f25424d.f24199b = esVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(ex exVar) {
        this.f25424d.f24198a = exVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(fh fhVar, zzvt zzvtVar) {
        this.f25424d.f24201d = fhVar;
        this.f25423c.f26229b = zzvtVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(fm fmVar) {
        this.f25424d.f24200c = fmVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(jf jfVar) {
        this.f25424d.e = jfVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(zzaei zzaeiVar) {
        this.f25423c.i = zzaeiVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(zzajy zzajyVar) {
        cpq cpqVar = this.f25423c;
        cpqVar.o = zzajyVar;
        cpqVar.e = new zzaaz(false, true, false);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(String str, fe feVar, ey eyVar) {
        bdb bdbVar = this.f25424d;
        bdbVar.f.put(str, feVar);
        bdbVar.g.put(str, eyVar);
    }
}
