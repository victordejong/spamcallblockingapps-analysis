package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arv.class */
public final class arv extends ate<arw> implements aqi, arl {

    /* renamed from: a */
    private final cgr f10248a;

    /* renamed from: b */
    private AtomicBoolean f10249b = new AtomicBoolean();

    public arv(Set<auq<arw>> set, cgr cgrVar) {
        super(set);
        this.f10248a = cgrVar;
    }

    /* renamed from: a */
    private final void m12791a() {
        if (!((Boolean) dyx.m8158e().m7876a(edi.f16509dI)).booleanValue() || !this.f10249b.compareAndSet(false, true) || this.f10248a.f12977W == null || this.f10248a.f12977W.f16105a != 3) {
            return;
        }
        m12775a(new atg(this) { // from class: com.google.android.gms.internal.ads.art

            /* renamed from: a */
            private final arv f10247a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10247a = this;
            }

            @Override // com.google.android.gms.internal.ads.atg
            /* renamed from: a */
            public final void mo11119a(Object obj) {
                this.f10247a.m12790a((arw) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m12790a(arw arwVar) {
        arwVar.mo11423a(this.f10248a.f12977W);
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        if (this.f10248a.f12980b == 2 || this.f10248a.f12980b == 5 || this.f10248a.f12980b == 4) {
            m12791a();
        }
    }

    @Override // com.google.android.gms.internal.ads.arl
    /* renamed from: s */
    public final void mo11448s() {
        if (this.f10248a.f12980b == 1) {
            m12791a();
        }
    }
}
