package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.zzj;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpo.class */
public final class cpo {

    /* renamed from: a */
    public final elk f46321a;

    /* renamed from: b */
    public final zzaaz f46322b;

    /* renamed from: c */
    public final zzajy f46323c;

    /* renamed from: d */
    public final zzvq f46324d;

    /* renamed from: e */
    public final zzvt f46325e;

    /* renamed from: f */
    public final String f46326f;

    /* renamed from: g */
    public final ArrayList<String> f46327g;

    /* renamed from: h */
    public final ArrayList<String> f46328h;

    /* renamed from: i */
    public final zzaei f46329i;

    /* renamed from: j */
    public final zzwc f46330j;

    /* renamed from: k */
    public final int f46331k;

    /* renamed from: l */
    public final AdManagerAdViewOptions f46332l;

    /* renamed from: m */
    public final PublisherAdViewOptions f46333m;

    /* renamed from: n */
    public final ele f46334n;

    /* renamed from: o */
    public final cpa f46335o;

    /* renamed from: p */
    public final boolean f46336p;

    /* JADX INFO: Access modifiers changed from: private */
    public cpo(cpq cpqVar) {
        this.f46325e = cpqVar.f46338b;
        this.f46326f = cpqVar.f46340d;
        this.f46321a = cpqVar.f46339c;
        this.f46324d = new zzvq(cpqVar.f46337a.versionCode, cpqVar.f46337a.zzcia, cpqVar.f46337a.extras, cpqVar.f46337a.zzcib, cpqVar.f46337a.zzcic, cpqVar.f46337a.zzcid, cpqVar.f46337a.zzadv, cpqVar.f46337a.zzbns || cpqVar.f46342f, cpqVar.f46337a.zzcie, cpqVar.f46337a.zzcif, cpqVar.f46337a.zzng, cpqVar.f46337a.zzcig, cpqVar.f46337a.zzcih, cpqVar.f46337a.zzcii, cpqVar.f46337a.zzcij, cpqVar.f46337a.zzcik, cpqVar.f46337a.zzcil, cpqVar.f46337a.zzcim, cpqVar.f46337a.zzcip, cpqVar.f46337a.zzadw, cpqVar.f46337a.zzadx, cpqVar.f46337a.zzcin, zzj.zzdl(cpqVar.f46337a.zzcio));
        this.f46322b = cpqVar.f46341e != null ? cpqVar.f46341e : cpqVar.f46345i != null ? cpqVar.f46345i.zzdgy : null;
        this.f46327g = cpqVar.f46343g;
        this.f46328h = cpqVar.f46344h;
        this.f46329i = cpqVar.f46343g == null ? null : cpqVar.f46345i == null ? new zzaei(new NativeAdOptions.Builder().build()) : cpqVar.f46345i;
        this.f46330j = cpqVar.f46346j;
        this.f46331k = cpqVar.f46350n;
        this.f46332l = cpqVar.f46347k;
        this.f46333m = cpqVar.f46348l;
        this.f46334n = cpqVar.f46349m;
        this.f46323c = cpqVar.f46351o;
        this.f46335o = new cpa(cpqVar.f46352p);
        this.f46336p = cpqVar.f46353q;
    }

    /* renamed from: a */
    public final AbstractC12558fn m17363a() {
        PublisherAdViewOptions publisherAdViewOptions = this.f46333m;
        if (publisherAdViewOptions == null && this.f46332l == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.zzjv() : this.f46332l.zzjv();
    }
}
