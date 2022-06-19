package com.google.android.exoplayer2;

import android.os.Looper;
import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.android.exoplayer2.util.C11593a;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.exoplayer2.ad */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ad.class */
public final class C10847ad {

    /* renamed from: a */
    final AbstractC10849b f34895a;

    /* renamed from: b */
    final AbstractC10864al f34896b;

    /* renamed from: c */
    int f34897c;

    /* renamed from: d */
    Object f34898d;

    /* renamed from: e */
    Looper f34899e;

    /* renamed from: f */
    int f34900f;

    /* renamed from: g */
    long f34901g = -9223372036854775807L;

    /* renamed from: h */
    boolean f34902h = true;

    /* renamed from: i */
    private final AbstractC10848a f34903i;

    /* renamed from: j */
    private final AbstractC11603c f34904j;

    /* renamed from: k */
    private boolean f34905k;

    /* renamed from: l */
    private boolean f34906l;

    /* renamed from: m */
    private boolean f34907m;

    /* renamed from: n */
    private boolean f34908n;

    /* renamed from: com.google.android.exoplayer2.ad$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ad$a.class */
    public interface AbstractC10848a {
        /* renamed from: a */
        void mo21098a(C10847ad c10847ad);
    }

    /* renamed from: com.google.android.exoplayer2.ad$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ad$b.class */
    public interface AbstractC10849b {
        /* renamed from: a */
        void mo19719a(int i, Object obj) throws ExoPlaybackException;
    }

    public C10847ad(AbstractC10848a abstractC10848a, AbstractC10849b abstractC10849b, AbstractC10864al abstractC10864al, int i, AbstractC11603c abstractC11603c, Looper looper) {
        this.f34903i = abstractC10848a;
        this.f34895a = abstractC10849b;
        this.f34896b = abstractC10864al;
        this.f34899e = looper;
        this.f34904j = abstractC11603c;
        this.f34900f = i;
    }

    /* renamed from: a */
    public final C10847ad m22237a() {
        C11593a.m20019b(!this.f34905k);
        if (this.f34901g == -9223372036854775807L) {
            C11593a.m20022a(this.f34902h);
        }
        this.f34905k = true;
        this.f34903i.mo21098a(this);
        return this;
    }

    /* renamed from: a */
    public final C10847ad m22236a(int i) {
        C11593a.m20019b(!this.f34905k);
        this.f34897c = i;
        return this;
    }

    /* renamed from: a */
    public final C10847ad m22234a(Object obj) {
        C11593a.m20019b(!this.f34905k);
        this.f34898d = obj;
        return this;
    }

    /* renamed from: a */
    public final void m22233a(boolean z) {
        synchronized (this) {
            this.f34906l = z | this.f34906l;
            this.f34907m = true;
            notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* renamed from: a */
    public final boolean m22235a(long j) throws InterruptedException, TimeoutException {
        boolean z;
        boolean z2;
        synchronized (this) {
            C11593a.m20019b(this.f34905k);
            C11593a.m20019b(this.f34899e.getThread() != Thread.currentThread());
            long mo19910a = this.f34904j.mo19910a();
            char c = j;
            while (true) {
                z = this.f34907m;
                if (z || c <= 0) {
                    break;
                }
                wait(c);
                c = (mo19910a + j) - this.f34904j.mo19910a();
            }
            if (!z) {
                throw new TimeoutException("Message delivery timed out.");
            }
            z2 = this.f34906l;
        }
        return z2;
    }

    /* renamed from: b */
    public final boolean m22232b() {
        boolean z;
        synchronized (this) {
            z = this.f34908n;
        }
        return z;
    }
}
