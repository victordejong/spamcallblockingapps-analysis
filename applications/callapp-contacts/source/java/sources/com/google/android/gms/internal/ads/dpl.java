package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpl.class */
public final class dpl extends dlx {

    /* renamed from: a */
    private final dpn f47367a;

    /* renamed from: b */
    private dmb f47368b = m16147b();

    /* renamed from: c */
    private final /* synthetic */ dpm f47369c;

    public dpl(dpm dpmVar) {
        this.f47369c = dpmVar;
        this.f47367a = new dpn(dpmVar, null);
    }

    /* renamed from: b */
    private final dmb m16147b() {
        if (this.f47367a.hasNext()) {
            return (dmb) ((dmd) this.f47367a.next()).iterator();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dmb
    /* renamed from: a */
    public final byte mo16148a() {
        dmb dmbVar = this.f47368b;
        if (dmbVar != null) {
            byte mo16148a = dmbVar.mo16148a();
            if (!this.f47368b.hasNext()) {
                this.f47368b = m16147b();
            }
            return mo16148a;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f47368b != null;
    }
}
