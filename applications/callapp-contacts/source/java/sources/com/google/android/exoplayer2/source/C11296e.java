package com.google.android.exoplayer2.source;
/* renamed from: com.google.android.exoplayer2.source.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/e.class */
public final class C11296e implements AbstractC11270ab {

    /* renamed from: a */
    protected final AbstractC11270ab[] f37093a;

    public C11296e(AbstractC11270ab[] abstractC11270abArr) {
        this.f37093a = abstractC11270abArr;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: a */
    public final void mo20904a(long j) {
        for (AbstractC11270ab abstractC11270ab : this.f37093a) {
            abstractC11270ab.mo20904a(j);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: c */
    public final boolean mo20887c(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        while (true) {
            long mo20883e = mo20883e();
            if (mo20883e == Long.MIN_VALUE) {
                break;
            }
            AbstractC11270ab[] abstractC11270abArr = this.f37093a;
            int length = abstractC11270abArr.length;
            int i = 0;
            boolean z4 = false;
            while (true) {
                z = z4;
                if (i >= length) {
                    break;
                }
                AbstractC11270ab abstractC11270ab = abstractC11270abArr[i];
                long mo20883e2 = abstractC11270ab.mo20883e();
                boolean z5 = mo20883e2 != Long.MIN_VALUE && mo20883e2 <= j;
                if (mo20883e2 != mo20883e) {
                    z2 = z;
                    if (!z5) {
                        i++;
                        z4 = z2;
                    }
                }
                z2 = z | abstractC11270ab.mo20887c(j);
                i++;
                z4 = z2;
            }
            boolean z6 = z3 | z;
            z3 = z6;
            if (!z) {
                z3 = z6;
                break;
            }
        }
        return z3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: d */
    public final long mo20885d() {
        char c;
        AbstractC11270ab[] abstractC11270abArr = this.f37093a;
        int length = abstractC11270abArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo20885d = abstractC11270abArr[i].mo20885d();
            char c2 = c;
            if (mo20885d != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo20885d);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: e */
    public final long mo20883e() {
        char c;
        AbstractC11270ab[] abstractC11270abArr = this.f37093a;
        int length = abstractC11270abArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo20883e = abstractC11270abArr[i].mo20883e();
            char c2 = c;
            if (mo20883e != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo20883e);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.exoplayer2.source.AbstractC11270ab
    /* renamed from: f */
    public final boolean mo20881f() {
        for (AbstractC11270ab abstractC11270ab : this.f37093a) {
            if (abstractC11270ab.mo20881f()) {
                return true;
            }
        }
        return false;
    }
}
