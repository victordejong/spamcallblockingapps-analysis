package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.eb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/eb.class */
public final class RunnableC4267eb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f18727a;

    /* renamed from: b */
    private final /* synthetic */ String f18728b;

    /* renamed from: c */
    private final /* synthetic */ Object f18729c;

    /* renamed from: d */
    private final /* synthetic */ Object f18730d;

    /* renamed from: e */
    private final /* synthetic */ Object f18731e;

    /* renamed from: f */
    private final /* synthetic */ C4263dy f18732f;

    public RunnableC4267eb(C4263dy c4263dy, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f18732f = c4263dy;
        this.f18727a = i;
        this.f18728b = str;
        this.f18729c = obj;
        this.f18730d = obj2;
        this.f18731e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        C4277el m4553c = this.f18732f.f18970z.m4553c();
        if (!m4553c.m4442z()) {
            this.f18732f.m4674a(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.f18732f.f18711a;
        if (c == 0) {
            if (this.f18732f.mo4027x().m4795c()) {
                C4263dy c4263dy = this.f18732f;
                this.f18732f.mo4026y();
                c4263dy.f18711a = 'C';
            } else {
                C4263dy c4263dy2 = this.f18732f;
                this.f18732f.mo4026y();
                c4263dy2.f18711a = 'c';
            }
        }
        j = this.f18732f.f18712b;
        if (j < 0) {
            this.f18732f.f18712b = this.f18732f.mo4027x().m4798b();
        }
        char charAt = "01VDIWEA?".charAt(this.f18727a);
        c2 = this.f18732f.f18711a;
        j2 = this.f18732f.f18712b;
        String m4667a = C4263dy.m4667a(true, this.f18728b, this.f18729c, this.f18730d, this.f18731e);
        String sb = new StringBuilder(String.valueOf(m4667a).length() + 24).append("2").append(charAt).append(c2).append(j2).append(":").append(m4667a).toString();
        String str = sb;
        if (sb.length() > 1024) {
            str = this.f18728b.substring(0, 1024);
        }
        m4553c.f18760b.m4616a(str, 1L);
    }
}
