package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fe.class */
final class fe extends fg {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ fm f29012a;

    /* renamed from: b  reason: collision with root package name */
    private int f29013b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final int f29014c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fe(fm fmVar) {
        this.f29012a = fmVar;
        this.f29014c = fmVar.a();
    }

    @Override // com.google.android.gms.internal.measurement.fi
    public final byte a() {
        int i = this.f29013b;
        if (i < this.f29014c) {
            this.f29013b = i + 1;
            return this.f29012a.b(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f29013b < this.f29014c;
    }
}
