package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dez.class */
public final class dez extends dbn {

    /* renamed from: a */
    private final dfb f14183a;

    /* renamed from: b */
    private dbr f14184b = m9853b();

    /* renamed from: c */
    private final /* synthetic */ dew f14185c;

    public dez(dew dewVar) {
        this.f14185c = dewVar;
        this.f14183a = new dfb(this.f14185c, null);
    }

    /* renamed from: b */
    private final dbr m9853b() {
        return this.f14183a.hasNext() ? (dbr) ((dbu) this.f14183a.next()).iterator() : null;
    }

    @Override // com.google.android.gms.internal.ads.dbr
    /* renamed from: a */
    public final byte mo9854a() {
        if (this.f14184b == null) {
            throw new NoSuchElementException();
        }
        byte mo9854a = this.f14184b.mo9854a();
        if (!this.f14184b.hasNext()) {
            this.f14184b = m9853b();
        }
        return mo9854a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14184b != null;
    }
}
