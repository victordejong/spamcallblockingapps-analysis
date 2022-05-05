package p459j.p460a.p474c0.p499h;

import android.annotation.TargetApi;
import android.os.Trace;
import android.util.Log;
/* renamed from: j.a.c0.h.r0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/r0.class */
public final class C12206r0 {

    /* renamed from: a */
    public static final AbstractC12208b f27368a;

    /* renamed from: j.a.c0.h.r0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/r0$b.class */
    public static abstract class AbstractC12208b {
        public AbstractC12208b() {
        }

        /* renamed from: a */
        public abstract void mo6801a();

        /* renamed from: a */
        public abstract void mo6800a(String str);
    }

    @TargetApi(18)
    /* renamed from: j.a.c0.h.r0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/r0$c.class */
    public static final class C12209c extends AbstractC12208b {
        public C12209c() {
            super();
        }

        @Override // p459j.p460a.p474c0.p499h.C12206r0.AbstractC12208b
        /* renamed from: a */
        public void mo6801a() {
            Trace.endSection();
        }

        @Override // p459j.p460a.p474c0.p499h.C12206r0.AbstractC12208b
        /* renamed from: a */
        public void mo6800a(String str) {
            Trace.beginSection(str);
        }
    }

    /* renamed from: j.a.c0.h.r0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/r0$d.class */
    public static final class C12210d extends AbstractC12208b {
        public C12210d() {
            super();
        }

        @Override // p459j.p460a.p474c0.p499h.C12206r0.AbstractC12208b
        /* renamed from: a */
        public void mo6801a() {
        }

        @Override // p459j.p460a.p474c0.p499h.C12206r0.AbstractC12208b
        /* renamed from: a */
        public void mo6800a(String str) {
        }
    }

    static {
        f27368a = Log.isLoggable("Bugle_Trace", 2) ? new C12209c() : new C12210d();
    }

    /* renamed from: a */
    public static void m6803a() {
        f27368a.mo6801a();
        if (C12153d0.m6992a("Bugle_Trace", 2)) {
            C12153d0.m6983d("Bugle_Trace", "endSection()");
        }
    }

    /* renamed from: a */
    public static void m6802a(String str) {
        if (C12153d0.m6992a("Bugle_Trace", 2)) {
            C12153d0.m6983d("Bugle_Trace", "beginSection() " + str);
        }
        f27368a.mo6800a(str);
    }
}
