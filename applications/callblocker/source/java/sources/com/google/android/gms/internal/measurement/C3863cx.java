package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* renamed from: com.google.android.gms.internal.measurement.cx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cx.class */
public final class C3863cx extends AbstractC3865cz {

    /* renamed from: a */
    private int f17947a = 0;

    /* renamed from: b */
    private final int f17948b;

    /* renamed from: c */
    private final /* synthetic */ AbstractC3859ct f17949c;

    public C3863cx(AbstractC3859ct abstractC3859ct) {
        this.f17949c = abstractC3859ct;
        this.f17948b = this.f17949c.mo5753a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3872dd
    /* renamed from: a */
    public final byte mo5754a() {
        int i = this.f17947a;
        if (i >= this.f17948b) {
            throw new NoSuchElementException();
        }
        this.f17947a = i + 1;
        return this.f17949c.mo5747b(i);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17947a < this.f17948b;
    }
}
