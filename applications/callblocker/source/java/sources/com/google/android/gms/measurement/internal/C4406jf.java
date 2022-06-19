package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.jf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jf.class */
public final class C4406jf {

    /* renamed from: a */
    private long f19216a;

    /* renamed from: b */
    private long f19217b;

    /* renamed from: c */
    private final AbstractC4400j f19218c;

    /* renamed from: d */
    private final /* synthetic */ C4399iz f19219d;

    public C4406jf(C4399iz c4399iz) {
        this.f19219d = c4399iz;
        this.f19218c = new C4405je(this, this.f19219d.f18970z);
        this.f19216a = c4399iz.mo4035q().mo13861b();
        this.f19217b = this.f19216a;
    }

    /* renamed from: c */
    public final void m4261c() {
        this.f19219d.mo4037o();
        m4264a(false, false, this.f19219d.mo4035q().mo13861b());
        this.f19219d.mo4289a().m4817a(this.f19219d.mo4035q().mo13861b());
    }

    /* renamed from: a */
    public final void m4267a() {
        this.f19218c.m4271c();
        this.f19216a = 0L;
        this.f19217b = this.f19216a;
    }

    /* renamed from: a */
    public final void m4266a(long j) {
        this.f19219d.mo4037o();
        this.f19218c.m4271c();
        this.f19216a = j;
        this.f19217b = this.f19216a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
        if (r5.f19219d.mo4027x().m4804a(com.google.android.gms.measurement.internal.C4452t.f19418aA) == false) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4264a(boolean r6, boolean r7, long r8) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4406jf.m4264a(boolean, boolean, long):boolean");
    }

    /* renamed from: b */
    public final long m4263b() {
        long mo13861b = this.f19219d.mo4035q().mo13861b();
        long j = this.f19217b;
        this.f19217b = mo13861b;
        return mo13861b - j;
    }

    /* renamed from: b */
    public final void m4262b(long j) {
        this.f19218c.m4271c();
    }

    /* renamed from: c */
    public final long m4260c(long j) {
        long j2 = this.f19217b;
        this.f19217b = j;
        return j - j2;
    }
}
