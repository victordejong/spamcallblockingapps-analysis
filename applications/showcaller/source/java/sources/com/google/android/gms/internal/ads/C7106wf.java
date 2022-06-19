package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.wf */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wf.class */
public final class C7106wf implements AbstractC7070vg {

    /* renamed from: d */
    private final AbstractC7070vg[] f31557d;

    public C7106wf(AbstractC7070vg[] abstractC7070vgArr) {
        this.f31557d = abstractC7070vgArr;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7070vg
    /* renamed from: d */
    public final boolean mo9595d(long j) {
        boolean z;
        boolean z2 = false;
        while (true) {
            long zza = zza();
            if (zza != Long.MIN_VALUE) {
                AbstractC7070vg[] abstractC7070vgArr = this.f31557d;
                int length = abstractC7070vgArr.length;
                int i = 0;
                boolean z3 = false;
                while (true) {
                    z = z3;
                    if (i >= length) {
                        break;
                    }
                    AbstractC7070vg abstractC7070vg = abstractC7070vgArr[i];
                    boolean z4 = z;
                    if (abstractC7070vg.zza() == zza) {
                        z4 = z | abstractC7070vg.mo9595d(j);
                    }
                    i++;
                    z3 = z4;
                }
                boolean z5 = z2 | z;
                z2 = z5;
                if (!z) {
                    z2 = z5;
                    break;
                }
            } else {
                break;
            }
        }
        return z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    @Override // com.google.android.gms.internal.ads.AbstractC7070vg
    public final long zza() {
        char c;
        AbstractC7070vg[] abstractC7070vgArr = this.f31557d;
        int length = abstractC7070vgArr.length;
        int i = 0;
        ?? r0 = 9223372036854775807;
        while (true) {
            c = r0;
            if (i >= length) {
                break;
            }
            long zza = abstractC7070vgArr[i].zza();
            char c2 = c;
            if (zza != Long.MIN_VALUE) {
                c2 = Math.min((long) c, zza);
            }
            i++;
            r0 = c2;
        }
        if (c == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return c;
    }
}
