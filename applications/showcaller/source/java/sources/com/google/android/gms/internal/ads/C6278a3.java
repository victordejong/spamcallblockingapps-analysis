package com.google.android.gms.internal.ads;

import android.util.Log;
/* renamed from: com.google.android.gms.internal.ads.a3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a3.class */
public final class C6278a3 implements AbstractC7095w4 {

    /* renamed from: a */
    private final tn3 f19801a;

    /* renamed from: h */
    private boolean f19808h;

    /* renamed from: b */
    private final long f19802b = C7130x2.m9368b(50000);

    /* renamed from: c */
    private final long f19803c = C7130x2.m9368b(50000);

    /* renamed from: d */
    private final long f19804d = C7130x2.m9368b(2500);

    /* renamed from: e */
    private final long f19805e = C7130x2.m9368b(5000);

    /* renamed from: g */
    private int f19807g = 13107200;

    /* renamed from: f */
    private final long f19806f = C7130x2.m9368b(0);

    public C6278a3() {
        tn3 tn3Var = new tn3(true, 65536);
        m16706j(2500, 0, "bufferForPlaybackMs", "0");
        m16706j(5000, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m16706j(50000, 2500, "minBufferMs", "bufferForPlaybackMs");
        m16706j(50000, 5000, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        m16706j(50000, 50000, "maxBufferMs", "minBufferMs");
        m16706j(0, 0, "backBufferDurationMs", "0");
        this.f19801a = tn3Var;
    }

    /* renamed from: i */
    private final void m16707i(boolean z) {
        this.f19807g = 13107200;
        this.f19808h = false;
        if (z) {
            this.f19801a.m10601a();
        }
    }

    /* renamed from: j */
    private static void m16706j(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(str.length() + 21 + str2.length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        C7173y8.m8897b(z, sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: a */
    public final boolean mo9563a() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: b */
    public final void mo9562b() {
        m16707i(true);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: c */
    public final void mo9561c() {
        m16707i(true);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: d */
    public final boolean mo9560d(long j, float f, boolean z, long j2) {
        long m9686k = C7101wa.m9686k(j, f);
        char c = z ? this.f19805e : this.f19804d;
        char c2 = c;
        if (j2 != -9223372036854775807L) {
            c2 = Math.min(j2 / 2, (long) c);
        }
        return c2 <= 0 || m9686k >= c2 || this.f19801a.m10595g() >= this.f19807g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: e */
    public final long mo9559e() {
        return this.f19806f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: f */
    public final tn3 mo9558f() {
        return this.f19801a;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: g */
    public final boolean mo9557g(long j, long j2, float f) {
        int m10595g = this.f19801a.m10595g();
        int i = this.f19807g;
        ?? r0 = this.f19802b;
        char c = r0;
        if (f > 1.0f) {
            c = Math.min(C7101wa.m9687j(r0, f), this.f19803c);
        }
        boolean z = false;
        if (j2 < Math.max((long) c, 500000L)) {
            if (m10595g < i) {
                z = true;
            }
            this.f19808h = z;
            if (!z && j2 < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.f19803c || m10595g >= i) {
            this.f19808h = false;
        }
        return this.f19808h;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    /* renamed from: h */
    public final void mo9556h(AbstractC6986t6[] abstractC6986t6Arr, dv3 dv3Var, mm3[] mm3VarArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= 2) {
                int max = Math.max(13107200, i3);
                this.f19807g = max;
                this.f19801a.m10600b(max);
                return;
            }
            int i4 = i3;
            if (mm3VarArr[i] != null) {
                int i5 = 13107200;
                if (abstractC6986t6Arr[i].mo10121O() != 1) {
                    i5 = 131072000;
                }
                i4 = i3 + i5;
            }
            i++;
            i2 = i4;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7095w4
    public final void zza() {
        m16707i(false);
    }
}
