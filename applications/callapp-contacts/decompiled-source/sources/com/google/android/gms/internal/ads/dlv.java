package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dlv.class */
public final class dlv extends dlx {

    /* renamed from: a  reason: collision with root package name */
    private int f26938a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f26939b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ dlw f26940c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dlv(dlw dlwVar) {
        this.f26940c = dlwVar;
        this.f26939b = dlwVar.b();
    }

    @Override // com.google.android.gms.internal.ads.dmb
    public final byte a() {
        int i = this.f26938a;
        if (i < this.f26939b) {
            this.f26938a = i + 1;
            return this.f26940c.b(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f26938a < this.f26939b;
    }
}
