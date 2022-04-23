package p081h.p203i.p204a.p224e.p259j.p269j;

import androidx.annotation.NonNull;
import com.google.android.gms.internal.firebase-perf.zzaa;
import java.util.concurrent.TimeUnit;
/* renamed from: h.i.a.e.j.j.g6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/g6.class */
public final class C7814g6 {

    /* renamed from: j */
    public static final long f18270j = TimeUnit.MINUTES.toMicros(1);

    /* renamed from: a */
    public long f18271a;

    /* renamed from: b */
    public long f18272b;

    /* renamed from: c */
    public zzaa f18273c = new com.google.android.gms.internal.firebase_perf.zzaa();

    /* renamed from: d */
    public long f18274d;

    /* renamed from: e */
    public long f18275e;

    /* renamed from: f */
    public long f18276f;

    /* renamed from: g */
    public long f18277g;

    /* renamed from: h */
    public long f18278h;

    /* renamed from: i */
    public final boolean f18279i;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C7814g6(long r8, long r10, p081h.p203i.p204a.p224e.p259j.p269j.C7831i6 r12, @androidx.annotation.NonNull java.util.Map<java.lang.String, java.lang.Long> r13, p081h.p203i.p204a.p224e.p259j.p269j.EnumC7806f6 r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7814g6.<init>(long, long, h.i.a.e.j.j.i6, java.util.Map, h.i.a.e.j.j.f6, boolean):void");
    }

    /* renamed from: a */
    public final void m19367a(boolean z) {
        synchronized (this) {
            this.f18272b = z ? this.f18275e : this.f18277g;
            this.f18271a = z ? this.f18276f : this.f18278h;
        }
    }

    /* renamed from: a */
    public final boolean m19368a(@NonNull C7903r rVar) {
        synchronized (this) {
            zzaa zzaaVar = new com.google.android.gms.internal.firebase_perf.zzaa();
            this.f18274d = Math.min(this.f18274d + Math.max(0L, (this.f18273c.m31842a(zzaaVar) * this.f18272b) / f18270j), this.f18271a);
            if (this.f18274d > 0) {
                this.f18274d--;
                this.f18273c = zzaaVar;
                return true;
            }
            boolean z = this.f18279i;
            return false;
        }
    }
}
