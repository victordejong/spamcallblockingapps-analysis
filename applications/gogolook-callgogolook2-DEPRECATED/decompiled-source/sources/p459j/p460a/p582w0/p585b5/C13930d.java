package p459j.p460a.p582w0.p585b5;

import androidx.annotation.Nullable;
/* renamed from: j.a.w0.b5.d */
/* loaded from: classes3-dex2jar.jar:j/a/w0/b5/d.class */
public class C13930d {
    @Nullable

    /* renamed from: a */
    public AbstractC13931a f31306a;

    /* renamed from: b */
    public long f31307b;

    /* renamed from: c */
    public long f31308c;

    /* renamed from: d */
    public EnumC13932b f31309d = EnumC13932b.INIT;

    /* renamed from: j.a.w0.b5.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/d$a.class */
    public interface AbstractC13931a {
        /* renamed from: g */
        void mo3016g();

        /* renamed from: r */
        void mo3015r();
    }

    /* renamed from: j.a.w0.b5.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/b5/d$b.class */
    public enum EnumC13932b {
        INIT,
        STARTED,
        FINISHED
    }

    /* renamed from: a */
    public long m3025a() {
        return m3023a(false);
    }

    /* renamed from: a */
    public long m3023a(boolean z) {
        long currentTimeMillis;
        long j;
        EnumC13932b bVar = this.f31309d;
        if (bVar == EnumC13932b.FINISHED) {
            currentTimeMillis = this.f31308c;
            j = this.f31307b;
        } else if (!z || bVar != EnumC13932b.STARTED) {
            return -1L;
        } else {
            currentTimeMillis = System.currentTimeMillis();
            j = this.f31307b;
        }
        return currentTimeMillis - j;
    }

    /* renamed from: a */
    public void m3024a(AbstractC13931a aVar) {
        this.f31306a = aVar;
    }

    /* renamed from: b */
    public int m3022b() {
        return (int) (m3025a() / 1000);
    }

    /* renamed from: b */
    public int m3021b(boolean z) {
        return (int) (m3023a(z) / 1000);
    }

    /* renamed from: c */
    public boolean m3020c() {
        return this.f31309d == EnumC13932b.FINISHED;
    }

    /* renamed from: d */
    public boolean m3019d() {
        return this.f31309d == EnumC13932b.STARTED;
    }

    /* renamed from: e */
    public void m3018e() {
        this.f31307b = System.currentTimeMillis();
        this.f31309d = EnumC13932b.STARTED;
        AbstractC13931a aVar = this.f31306a;
        if (aVar != null) {
            aVar.mo3016g();
        }
    }

    /* renamed from: f */
    public void m3017f() {
        this.f31308c = System.currentTimeMillis();
        this.f31309d = EnumC13932b.FINISHED;
        AbstractC13931a aVar = this.f31306a;
        if (aVar != null) {
            aVar.mo3015r();
        }
    }
}
