package p459j.p460a.p474c0.p475c.p479z;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.z.y */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/y.class */
public abstract class AbstractC11685y {

    /* renamed from: a */
    public final String f26219a;

    /* renamed from: c */
    public long f26221c;

    /* renamed from: b */
    public int f26220b = 0;

    /* renamed from: d */
    public final ReentrantLock f26222d = new ReentrantLock();

    public AbstractC11685y(String str) {
        new ArrayList();
        this.f26219a = str;
    }

    /* renamed from: a */
    public AbstractC11672r<? extends AbstractC11685y> mo8618a(AbstractC11672r<? extends AbstractC11685y> rVar) {
        return null;
    }

    /* renamed from: a */
    public void m8619a() {
        this.f26222d.lock();
    }

    /* renamed from: b */
    public AbstractC11672r<? extends AbstractC11685y> mo8616b(AbstractC11672r<? extends AbstractC11685y> rVar) {
        return null;
    }

    /* renamed from: b */
    public void m8617b() {
        m8619a();
        try {
            this.f26220b++;
            this.f26221c = SystemClock.elapsedRealtime();
        } finally {
            m8605m();
        }
    }

    /* renamed from: c */
    public void m8615c() {
        C12151d.m6999b(this.f26222d.isHeldByCurrentThread());
    }

    /* renamed from: d */
    public void m8614d() {
        m8619a();
        try {
            C12151d.m7012a(1, this.f26220b);
        } finally {
            m8605m();
        }
    }

    /* renamed from: e */
    public abstract void mo8613e();

    /* renamed from: f */
    public String m8612f() {
        return this.f26219a;
    }

    /* renamed from: g */
    public long m8611g() {
        m8619a();
        try {
            return this.f26221c;
        } finally {
            m8605m();
        }
    }

    /* renamed from: h */
    public abstract int mo8610h();

    /* renamed from: i */
    public int m8609i() {
        m8619a();
        try {
            return this.f26220b;
        } finally {
            m8605m();
        }
    }

    /* renamed from: j */
    public boolean mo8608j() {
        return true;
    }

    /* renamed from: k */
    public boolean mo8607k() {
        return false;
    }

    /* renamed from: l */
    public void m8606l() {
        m8619a();
        try {
            this.f26220b--;
            if (this.f26220b == 0) {
                mo8613e();
            } else if (this.f26220b < 0) {
                C12151d.m7005a("RefCountedMediaResource has unbalanced ref. Refcount=" + this.f26220b);
            }
        } finally {
            m8605m();
        }
    }

    /* renamed from: m */
    public void m8605m() {
        this.f26222d.unlock();
    }
}
