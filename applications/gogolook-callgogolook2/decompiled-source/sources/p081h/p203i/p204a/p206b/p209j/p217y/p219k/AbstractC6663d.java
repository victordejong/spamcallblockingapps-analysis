package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import androidx.media2.exoplayer.external.extractor.mp4.Mp4Extractor;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6651a;
/* renamed from: h.i.a.b.j.y.k.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/d.class */
public abstract class AbstractC6663d {

    /* renamed from: a */
    public static final AbstractC6663d f16540a;

    /* renamed from: h.i.a.b.j.y.k.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/d$a.class */
    public static abstract class AbstractC6664a {
        /* renamed from: a */
        public abstract AbstractC6664a mo22116a(int i);

        /* renamed from: a */
        public abstract AbstractC6664a mo22115a(long j);

        /* renamed from: a */
        public abstract AbstractC6663d mo22117a();

        /* renamed from: b */
        public abstract AbstractC6664a mo22114b(int i);

        /* renamed from: b */
        public abstract AbstractC6664a mo22113b(long j);

        /* renamed from: c */
        public abstract AbstractC6664a mo22112c(int i);
    }

    static {
        AbstractC6664a f = m22118f();
        f.mo22113b(Mp4Extractor.MAXIMUM_READ_AHEAD_BYTES_STREAM);
        f.mo22114b(200);
        f.mo22116a(10000);
        f.mo22115a(604800000L);
        f.mo22112c(81920);
        f16540a = f.mo22117a();
    }

    /* renamed from: f */
    public static AbstractC6664a m22118f() {
        return new C6651a.C6653b();
    }

    /* renamed from: a */
    public abstract int mo22123a();

    /* renamed from: b */
    public abstract long mo22122b();

    /* renamed from: c */
    public abstract int mo22121c();

    /* renamed from: d */
    public abstract int mo22120d();

    /* renamed from: e */
    public abstract long mo22119e();
}
