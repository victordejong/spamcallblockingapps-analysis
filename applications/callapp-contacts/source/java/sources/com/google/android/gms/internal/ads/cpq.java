package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.C12045o;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpq.class */
public final class cpq {

    /* renamed from: a */
    zzvq f46337a;

    /* renamed from: b */
    zzvt f46338b;

    /* renamed from: c */
    elk f46339c;

    /* renamed from: d */
    String f46340d;

    /* renamed from: e */
    zzaaz f46341e;

    /* renamed from: f */
    boolean f46342f;

    /* renamed from: g */
    ArrayList<String> f46343g;

    /* renamed from: h */
    ArrayList<String> f46344h;

    /* renamed from: i */
    zzaei f46345i;

    /* renamed from: j */
    zzwc f46346j;

    /* renamed from: k */
    AdManagerAdViewOptions f46347k;

    /* renamed from: l */
    PublisherAdViewOptions f46348l;

    /* renamed from: m */
    ele f46349m;

    /* renamed from: o */
    zzajy f46351o;

    /* renamed from: n */
    int f46350n = 1;

    /* renamed from: p */
    cpd f46352p = new cpd();

    /* renamed from: q */
    boolean f46353q = false;

    /* renamed from: a */
    public final cpo m17362a() {
        C12045o.m19161a(this.f46340d, (Object) "ad unit must not be null");
        C12045o.m19161a(this.f46338b, "ad size must not be null");
        C12045o.m19161a(this.f46337a, "ad request must not be null");
        return new cpo(this);
    }

    /* renamed from: a */
    public final cpq m17361a(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.f46347k = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.f46342f = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    /* renamed from: a */
    public final cpq m17360a(PublisherAdViewOptions publisherAdViewOptions) {
        this.f46348l = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.f46342f = publisherAdViewOptions.getManualImpressionsEnabled();
            this.f46349m = publisherAdViewOptions.zzjz();
        }
        return this;
    }
}
