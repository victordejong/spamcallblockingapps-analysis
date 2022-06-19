package p162m;

import android.support.p012v4.media.AbstractC0081a;
import java.util.concurrent.Executor;
/* renamed from: m.a */
/* loaded from: classes-dex2jar.jar:m/a.class */
public class C3542a extends AbstractC0081a {

    /* renamed from: b */
    public static volatile C3542a f11707b;

    /* renamed from: c */
    public static final Executor f11708c = new ExecutorC3543a();

    /* renamed from: a */
    public AbstractC0081a f11709a = new C3544b();

    /* renamed from: m.a$a */
    /* loaded from: classes-dex2jar.jar:m/a$a.class */
    public static final class ExecutorC3543a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C3542a.m2201M().f11709a.mo2198o(runnable);
        }
    }

    /* renamed from: M */
    public static C3542a m2201M() {
        if (f11707b != null) {
            return f11707b;
        }
        synchronized (C3542a.class) {
            try {
                if (f11707b == null) {
                    f11707b = new C3542a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f11707b;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: I */
    public void mo2200I(Runnable runnable) {
        this.f11709a.mo2200I(runnable);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: o */
    public void mo2198o(Runnable runnable) {
        this.f11709a.mo2198o(runnable);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: v */
    public boolean mo2197v() {
        return this.f11709a.mo2197v();
    }
}
