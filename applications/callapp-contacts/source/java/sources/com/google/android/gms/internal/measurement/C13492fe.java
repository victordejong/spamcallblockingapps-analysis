package com.google.android.gms.internal.measurement;

import java.util.NoSuchElementException;
/* renamed from: com.google.android.gms.internal.measurement.fe */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fe.class */
final class C13492fe extends AbstractC13494fg {

    /* renamed from: a */
    final /* synthetic */ AbstractC13500fm f50711a;

    /* renamed from: b */
    private int f50712b = 0;

    /* renamed from: c */
    private final int f50713c;

    public C13492fe(AbstractC13500fm abstractC13500fm) {
        this.f50711a = abstractC13500fm;
        this.f50713c = abstractC13500fm.mo12866a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13496fi
    /* renamed from: a */
    public final byte mo12867a() {
        int i = this.f50712b;
        if (i < this.f50713c) {
            this.f50712b = i + 1;
            return this.f50711a.mo12857b(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f50712b < this.f50713c;
    }
}
