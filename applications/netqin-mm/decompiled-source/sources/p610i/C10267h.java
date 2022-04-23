package p610i;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* renamed from: i.h */
/* loaded from: classes2-dex2jar.jar:i/h.class */
public class C10267h extends C10282r {

    /* renamed from: e */
    public C10282r f37894e;

    public C10267h(C10282r rVar) {
        if (rVar != null) {
            this.f37894e = rVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final C10267h m763a(C10282r rVar) {
        if (rVar != null) {
            this.f37894e = rVar;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p610i.C10282r
    /* renamed from: a */
    public C10282r mo702a() {
        return this.f37894e.mo702a();
    }

    @Override // p610i.C10282r
    /* renamed from: a */
    public C10282r mo697a(long j) {
        return this.f37894e.mo697a(j);
    }

    @Override // p610i.C10282r
    /* renamed from: a */
    public C10282r mo696a(long j, TimeUnit timeUnit) {
        return this.f37894e.mo696a(j, timeUnit);
    }

    @Override // p610i.C10282r
    /* renamed from: b */
    public C10282r mo701b() {
        return this.f37894e.mo701b();
    }

    @Override // p610i.C10282r
    /* renamed from: c */
    public long mo700c() {
        return this.f37894e.mo700c();
    }

    @Override // p610i.C10282r
    /* renamed from: d */
    public boolean mo699d() {
        return this.f37894e.mo699d();
    }

    @Override // p610i.C10282r
    /* renamed from: e */
    public void mo695e() throws IOException {
        this.f37894e.mo695e();
    }

    @Override // p610i.C10282r
    /* renamed from: f */
    public long mo698f() {
        return this.f37894e.mo698f();
    }

    /* renamed from: g */
    public final C10282r m762g() {
        return this.f37894e;
    }
}
