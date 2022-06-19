package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1713d;
import kotlinx.coroutines.AbstractC1796am;
import kotlinx.coroutines.AbstractC1812au;
import kotlinx.coroutines.AbstractC1934k;
/* renamed from: kotlinx.coroutines.android.b */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/b.class */
public final class C1800b extends AbstractC1804c implements AbstractC1796am {
    private volatile C1800b _immediate;

    /* renamed from: b */
    private final C1800b f4481b;

    /* renamed from: c */
    private final Handler f4482c;

    /* renamed from: d */
    private final String f4483d;

    /* renamed from: e */
    private final boolean f4484e;

    /* renamed from: kotlinx.coroutines.android.b$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/b$a.class */
    public static final class C1801a implements AbstractC1812au {

        /* renamed from: b */
        final /* synthetic */ Runnable f4486b;

        C1801a(Runnable runnable) {
            C1800b.this = r4;
            this.f4486b = runnable;
        }

        @Override // kotlinx.coroutines.AbstractC1812au
        /* renamed from: a */
        public void mo2730a() {
            C1800b.this.f4482c.removeCallbacks(this.f4486b);
        }
    }

    /* renamed from: kotlinx.coroutines.android.b$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/b$b.class */
    public static final class RunnableC1802b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ AbstractC1934k f4488b;

        public RunnableC1802b(AbstractC1934k abstractC1934k) {
            C1800b.this = r4;
            this.f4488b = abstractC1934k;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f4488b.mo2546a(C1800b.this, C1775o.f4450a);
        }
    }

    /* renamed from: kotlinx.coroutines.android.b$c */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/b$c.class */
    static final class C1803c extends AbstractC1695i implements AbstractC1663b<Throwable, C1775o> {

        /* renamed from: b */
        final /* synthetic */ Runnable f4490b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1803c(Runnable runnable) {
            super(1);
            C1800b.this = r4;
            this.f4490b = runnable;
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(Throwable th) {
            m2941a(th);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m2941a(Throwable th) {
            C1800b.this.f4482c.removeCallbacks(this.f4490b);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1800b(Handler handler, String str) {
        this(handler, str, false);
        C1694h.m3117b(handler, "handler");
    }

    private C1800b(Handler handler, String str, boolean z) {
        super(null);
        this.f4482c = handler;
        this.f4483d = str;
        this.f4484e = z;
        this._immediate = this.f4484e ? this : null;
        C1800b c1800b = this._immediate;
        if (c1800b == null) {
            c1800b = new C1800b(this.f4482c, this.f4483d, true);
            this._immediate = c1800b;
        }
        this.f4481b = c1800b;
    }

    @Override // kotlinx.coroutines.android.AbstractC1804c, kotlinx.coroutines.AbstractC1796am
    /* renamed from: a */
    public AbstractC1812au mo2612a(long j, Runnable runnable) {
        C1694h.m3117b(runnable, "block");
        this.f4482c.postDelayed(runnable, C1713d.m3077b(j, 4611686018427387903L));
        return new C1801a(runnable);
    }

    @Override // kotlinx.coroutines.AbstractC1796am
    /* renamed from: a */
    public void mo2611a(long j, AbstractC1934k<? super C1775o> abstractC1934k) {
        C1694h.m3117b(abstractC1934k, "continuation");
        RunnableC1802b runnableC1802b = new RunnableC1802b(abstractC1934k);
        this.f4482c.postDelayed(runnableC1802b, C1713d.m3077b(j, 4611686018427387903L));
        abstractC1934k.mo2549a((AbstractC1663b<? super Throwable, C1775o>) new C1803c(runnableC1802b));
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        this.f4482c.post(runnable);
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public boolean mo2513a(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        boolean z = true;
        if (this.f4484e) {
            z = C1694h.m3123a(Looper.myLooper(), this.f4482c.getLooper()) ^ true;
        }
        return z;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C1800b) && ((C1800b) obj).f4482c == this.f4482c;
    }

    public int hashCode() {
        return System.identityHashCode(this.f4482c);
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    public String toString() {
        String str = this.f4483d;
        if (str == null) {
            str = this.f4482c.toString();
            C1694h.m3122a((Object) str, "handler.toString()");
        } else if (this.f4484e) {
            str = this.f4483d + " [immediate]";
        }
        return str;
    }
}
