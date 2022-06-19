package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xj3.class */
public final class xj3 implements dm3 {

    /* renamed from: d */
    protected final dm3[] f32091d;

    public xj3(dm3[] dm3VarArr) {
        this.f32091d = dm3VarArr;
    }

    @Override // com.google.android.gms.internal.ads.dm3
    /* renamed from: b */
    public final void mo8804b(long j) {
        for (dm3 dm3Var : this.f32091d) {
            dm3Var.mo8804b(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.dm3
    /* renamed from: d */
    public final boolean mo8802d(long j) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        while (true) {
            long mo8798h = mo8798h();
            if (mo8798h != Long.MIN_VALUE) {
                dm3[] dm3VarArr = this.f32091d;
                int length = dm3VarArr.length;
                int i = 0;
                boolean z4 = false;
                while (true) {
                    z = z4;
                    if (i >= length) {
                        break;
                    }
                    dm3 dm3Var = dm3VarArr[i];
                    long mo8798h2 = dm3Var.mo8798h();
                    boolean z5 = mo8798h2 != Long.MIN_VALUE && mo8798h2 <= j;
                    if (mo8798h2 != mo8798h) {
                        z2 = z;
                        if (!z5) {
                            i++;
                            z4 = z2;
                        }
                    }
                    z2 = z | dm3Var.mo8802d(j);
                    i++;
                    z4 = z2;
                }
                boolean z6 = z3 | z;
                z3 = z6;
                if (!z) {
                    z3 = z6;
                    break;
                }
            } else {
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
    @Override // com.google.android.gms.internal.ads.dm3
    /* renamed from: f */
    public final long mo8800f() {
        char c;
        dm3[] dm3VarArr = this.f32091d;
        int length = dm3VarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo8800f = dm3VarArr[i].mo8800f();
            char c2 = c;
            if (mo8800f != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo8800f);
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
    @Override // com.google.android.gms.internal.ads.dm3
    /* renamed from: h */
    public final long mo8798h() {
        char c;
        dm3[] dm3VarArr = this.f32091d;
        int length = dm3VarArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long mo8798h = dm3VarArr[i].mo8798h();
            char c2 = c;
            if (mo8798h != Long.MIN_VALUE) {
                c2 = Math.min((long) c, mo8798h);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.dm3
    /* renamed from: j */
    public final boolean mo8796j() {
        for (dm3 dm3Var : this.f32091d) {
            if (dm3Var.mo8796j()) {
                return true;
            }
        }
        return false;
    }
}
