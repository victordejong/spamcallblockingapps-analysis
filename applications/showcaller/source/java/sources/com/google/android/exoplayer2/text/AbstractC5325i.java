package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.p242b1.AbstractC4859f;
import com.google.android.exoplayer2.util.C5508e;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.text.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/text/i.class */
public abstract class AbstractC5325i extends AbstractC4859f implements AbstractC5320e {

    /* renamed from: d */
    private AbstractC5320e f16922d;

    /* renamed from: e */
    private long f16923e;

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: a */
    public int mo19371a(long j) {
        return ((AbstractC5320e) C5508e.m18911e(this.f16922d)).mo19371a(j - this.f16923e);
    }

    @Override // com.google.android.exoplayer2.p242b1.AbstractC4852a
    public void clear() {
        super.clear();
        this.f16922d = null;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: d */
    public long mo19370d(int i) {
        return ((AbstractC5320e) C5508e.m18911e(this.f16922d)).mo19370d(i) + this.f16923e;
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: e */
    public List<C5317b> mo19369e(long j) {
        return ((AbstractC5320e) C5508e.m18911e(this.f16922d)).mo19369e(j - this.f16923e);
    }

    @Override // com.google.android.exoplayer2.text.AbstractC5320e
    /* renamed from: f */
    public int mo19368f() {
        return ((AbstractC5320e) C5508e.m18911e(this.f16922d)).mo19368f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* renamed from: g */
    public void m19678g(long j, AbstractC5320e abstractC5320e, long j2) {
        this.timeUs = j;
        this.f16922d = abstractC5320e;
        ?? r6 = j;
        if (j2 != Long.MAX_VALUE) {
            r6 = j2;
        }
        this.f16923e = r6;
    }
}
