package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbl.class */
public final class dbl extends dbn {

    /* renamed from: a */
    private int f13936a = 0;

    /* renamed from: b */
    private final int f13937b;

    /* renamed from: c */
    private final /* synthetic */ dbi f13938c;

    public dbl(dbi dbiVar) {
        this.f13938c = dbiVar;
        this.f13937b = this.f13938c.mo9911b();
    }

    @Override // com.google.android.gms.internal.ads.dbr
    /* renamed from: a */
    public final byte mo9854a() {
        int i = this.f13936a;
        if (i >= this.f13937b) {
            throw new NoSuchElementException();
        }
        this.f13936a = i + 1;
        return this.f13938c.mo9910b(i);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f13936a < this.f13937b;
    }
}
