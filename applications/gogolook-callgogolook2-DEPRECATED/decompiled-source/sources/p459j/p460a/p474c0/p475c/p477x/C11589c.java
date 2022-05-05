package p459j.p460a.p474c0.p475c.p477x;

import java.util.concurrent.atomic.AtomicLong;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
/* renamed from: j.a.c0.c.x.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/x/c.class */
public class C11589c<T extends AbstractC11587a> extends AbstractC11590d<T> {

    /* renamed from: d */
    public static AtomicLong f25902d = new AtomicLong(System.currentTimeMillis() * 1000);

    /* renamed from: a */
    public String f25903a;

    /* renamed from: b */
    public T f25904b;

    /* renamed from: c */
    public boolean f25905c;

    public C11589c(Object obj) {
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: a */
    public String mo9035a() {
        return this.f25903a;
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: a */
    public void mo9034a(T t) {
        if (!mo9031c()) {
            throw new IllegalStateException("not bound; wasBound = " + this.f25905c);
        } else if (t != this.f25904b) {
            throw new IllegalStateException("not bound to correct data " + t + " vs " + this.f25904b);
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: b */
    public T mo9033b() {
        m9043d();
        return this.f25904b;
    }

    /* renamed from: b */
    public void mo9038b(T t) {
        if (this.f25904b != null || t.mo9044d()) {
            throw new IllegalStateException("already bound when binding to " + t);
        }
        this.f25903a = Long.toHexString(f25902d.getAndIncrement());
        t.mo8736a(this.f25903a);
        this.f25904b = t;
        this.f25905c = true;
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11590d
    /* renamed from: c */
    public boolean mo9031c() {
        T t = this.f25904b;
        return t != null && t.m9045b(this.f25903a);
    }

    /* renamed from: d */
    public void m9043d() {
        if (!mo9031c()) {
            throw new IllegalStateException("not bound; wasBound = " + this.f25905c);
        }
    }

    /* renamed from: e */
    public void m9042e() {
        T t = this.f25904b;
        if (t == null || !t.m9045b(this.f25903a)) {
            throw new IllegalStateException("not bound when unbind");
        }
        this.f25904b.mo8735c(this.f25903a);
        this.f25904b = null;
        this.f25903a = null;
    }
}
