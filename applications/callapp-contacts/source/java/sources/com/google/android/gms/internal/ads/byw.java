package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byw.class */
public final class byw extends eks {

    /* renamed from: a */
    private final Context f45121a;

    /* renamed from: b */
    private final afq f45122b;

    /* renamed from: c */
    private final cpq f45123c;

    /* renamed from: d */
    private final bdb f45124d = new bdb();

    /* renamed from: e */
    private eki f45125e;

    public byw(afq afqVar, Context context, String str) {
        cpq cpqVar = new cpq();
        this.f45123c = cpqVar;
        this.f45122b = afqVar;
        cpqVar.f46340d = str;
        this.f45121a = context;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final eko mo14695a() {
        bcy m18133a = this.f45124d.m18133a();
        cpq cpqVar = this.f45123c;
        ArrayList<String> arrayList = new ArrayList<>();
        if (m18133a.f43610c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (m18133a.f43608a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (m18133a.f43609b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (m18133a.f43613f.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (m18133a.f43612e != null) {
            arrayList.add(Integer.toString(7));
        }
        cpqVar.f46343g = arrayList;
        this.f45123c.f46344h = m18133a.m18137a();
        cpq cpqVar2 = this.f45123c;
        if (cpqVar2.f46338b == null) {
            cpqVar2.f46338b = zzvt.zzqk();
        }
        return new byz(this.f45121a, this.f45122b, this.f45123c, m18133a, this.f45125e);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14694a(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.f45123c.m17361a(adManagerAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14693a(PublisherAdViewOptions publisherAdViewOptions) {
        this.f45123c.m17360a(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14692a(eki ekiVar) {
        this.f45125e = ekiVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14691a(elk elkVar) {
        this.f45123c.f46339c = elkVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14690a(AbstractC12536es abstractC12536es) {
        this.f45124d.f43617b = abstractC12536es;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14689a(AbstractC12541ex abstractC12541ex) {
        this.f45124d.f43616a = abstractC12541ex;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14687a(AbstractC12552fh abstractC12552fh, zzvt zzvtVar) {
        this.f45124d.f43619d = abstractC12552fh;
        this.f45123c.f46338b = zzvtVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14686a(AbstractC12557fm abstractC12557fm) {
        this.f45124d.f43618c = abstractC12557fm;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14685a(AbstractC12658jf abstractC12658jf) {
        this.f45124d.f43620e = abstractC12658jf;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14684a(zzaei zzaeiVar) {
        this.f45123c.f46345i = zzaeiVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14683a(zzajy zzajyVar) {
        cpq cpqVar = this.f45123c;
        cpqVar.f46351o = zzajyVar;
        cpqVar.f46341e = new zzaaz(false, true, false);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14682a(String str, AbstractC12549fe abstractC12549fe, AbstractC12542ey abstractC12542ey) {
        bdb bdbVar = this.f45124d;
        bdbVar.f43621f.put(str, abstractC12549fe);
        bdbVar.f43622g.put(str, abstractC12542ey);
    }
}
