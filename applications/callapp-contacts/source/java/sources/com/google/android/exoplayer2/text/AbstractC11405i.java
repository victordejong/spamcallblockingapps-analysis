package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.decoder.AbstractC10936f;
import com.google.android.exoplayer2.util.C11593a;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/i.class */
public abstract class AbstractC11405i extends AbstractC10936f implements AbstractC11379e {

    /* renamed from: d */
    private AbstractC11379e f37643d;

    /* renamed from: e */
    private long f37644e;

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: a */
    public final int mo20617a(long j) {
        return ((AbstractC11379e) C11593a.m20020b(this.f37643d)).mo20617a(j - this.f37644e);
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10929a
    /* renamed from: a */
    public final void mo20663a() {
        super.mo20663a();
        this.f37643d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public final void m20662a(long j, AbstractC11379e abstractC11379e, long j2) {
        this.f35373b = j;
        this.f37643d = abstractC11379e;
        char c = j2;
        if (j2 == Long.MAX_VALUE) {
            c = this.f35373b;
        }
        this.f37644e = c;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final int mo20615b() {
        return ((AbstractC11379e) C11593a.m20020b(this.f37643d)).mo20615b();
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b */
    public final List<C11356b> mo20614b(long j) {
        return ((AbstractC11379e) C11593a.m20020b(this.f37643d)).mo20614b(j - this.f37644e);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC11379e
    /* renamed from: b_ */
    public final long mo20613b_(int i) {
        return ((AbstractC11379e) C11593a.m20020b(this.f37643d)).mo20613b_(i) + this.f37644e;
    }
}
