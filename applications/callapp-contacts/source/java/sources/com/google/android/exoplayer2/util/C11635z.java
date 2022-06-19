package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.C11158f;
/* renamed from: com.google.android.exoplayer2.util.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/z.class */
public final class C11635z implements AbstractC11619p {

    /* renamed from: a */
    public C10840aa f38753a = C10840aa.f34891a;

    /* renamed from: b */
    private final AbstractC11603c f38754b;

    /* renamed from: c */
    private boolean f38755c;

    /* renamed from: d */
    private long f38756d;

    /* renamed from: e */
    private long f38757e;

    public C11635z(AbstractC11603c abstractC11603c) {
        this.f38754b = abstractC11603c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: B_ */
    public final long mo19763B_() {
        ?? r0 = this.f38756d;
        char c = r0;
        if (this.f38755c) {
            long mo19910a = this.f38754b.mo19910a() - this.f38757e;
            c = r0 + (this.f38753a.f34892b == 1.0f ? C11158f.m21372b(mo19910a) : mo19910a * this.f38753a.f34894d);
        }
        return c;
    }

    /* renamed from: a */
    public final void m19762a() {
        if (!this.f38755c) {
            this.f38757e = this.f38754b.mo19910a();
            this.f38755c = true;
        }
    }

    /* renamed from: a */
    public final void m19761a(long j) {
        this.f38756d = j;
        if (this.f38755c) {
            this.f38757e = this.f38754b.mo19910a();
        }
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: a */
    public final void mo19760a(C10840aa c10840aa) {
        if (this.f38755c) {
            m19761a(mo19763B_());
        }
        this.f38753a = c10840aa;
    }

    /* renamed from: b */
    public final void m19759b() {
        if (this.f38755c) {
            m19761a(mo19763B_());
            this.f38755c = false;
        }
    }

    @Override // com.google.android.exoplayer2.util.AbstractC11619p
    /* renamed from: d */
    public final C10840aa mo19758d() {
        return this.f38753a;
    }
}
