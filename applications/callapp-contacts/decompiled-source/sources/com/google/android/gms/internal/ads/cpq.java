package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.o;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpq.class */
public final class cpq {

    /* renamed from: a  reason: collision with root package name */
    zzvq f26228a;

    /* renamed from: b  reason: collision with root package name */
    zzvt f26229b;

    /* renamed from: c  reason: collision with root package name */
    elk f26230c;

    /* renamed from: d  reason: collision with root package name */
    String f26231d;
    zzaaz e;
    boolean f;
    ArrayList<String> g;
    ArrayList<String> h;
    zzaei i;
    zzwc j;
    AdManagerAdViewOptions k;
    PublisherAdViewOptions l;
    ele m;
    zzajy o;
    int n = 1;
    cpd p = new cpd();
    boolean q = false;

    public final cpo a() {
        o.a(this.f26231d, (Object) "ad unit must not be null");
        o.a(this.f26229b, "ad size must not be null");
        o.a(this.f26228a, "ad request must not be null");
        return new cpo(this);
    }

    public final cpq a(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.k = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.f = adManagerAdViewOptions.getManualImpressionsEnabled();
        }
        return this;
    }

    public final cpq a(PublisherAdViewOptions publisherAdViewOptions) {
        this.l = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.f = publisherAdViewOptions.getManualImpressionsEnabled();
            this.m = publisherAdViewOptions.zzjz();
        }
        return this;
    }
}
