package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlv.class */
public final class dlv extends dlx {

    /* renamed from: a */
    private int f47196a = 0;

    /* renamed from: b */
    private final int f47197b;

    /* renamed from: c */
    private final /* synthetic */ dlw f47198c;

    public dlv(dlw dlwVar) {
        this.f47198c = dlwVar;
        this.f47197b = dlwVar.mo16138b();
    }

    @Override // com.google.android.gms.internal.ads.dmb
    /* renamed from: a */
    public final byte mo16148a() {
        int i = this.f47196a;
        if (i < this.f47197b) {
            this.f47196a = i + 1;
            return this.f47198c.mo16137b(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f47196a < this.f47197b;
    }
}
