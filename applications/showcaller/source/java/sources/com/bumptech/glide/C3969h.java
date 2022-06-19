package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.AbstractC4054h;
import com.bumptech.glide.p222o.C4364a;
import com.bumptech.glide.p223p.C4374e;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.AbstractC4397a;
import com.bumptech.glide.request.AbstractC4399c;
import com.bumptech.glide.request.AbstractC4400d;
import com.bumptech.glide.request.C4398b;
import com.bumptech.glide.request.C4401e;
import com.bumptech.glide.request.C4403g;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.p225h.AbstractC4411h;
import com.bumptech.glide.request.p225h.AbstractC4412i;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.bumptech.glide.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h.class */
public class C3969h<TranscodeType> extends AbstractC4397a<C3969h<TranscodeType>> implements Cloneable {

    /* renamed from: D */
    protected static final C4401e f12484D = new C4401e().mo22618i(AbstractC4054h.f12792c).mo22629b0(Priority.LOW).mo22617i0(true);

    /* renamed from: E */
    private final Context f12485E;

    /* renamed from: F */
    private final ComponentCallbacks2C3971i f12486F;

    /* renamed from: G */
    private final Class<TranscodeType> f12487G;

    /* renamed from: H */
    private final ComponentCallbacks2C3958c f12488H;

    /* renamed from: I */
    private final C3965e f12489I;

    /* renamed from: J */
    private AbstractC3974j<?, ? super TranscodeType> f12490J;

    /* renamed from: K */
    private Object f12491K;

    /* renamed from: L */
    private List<AbstractC4400d<TranscodeType>> f12492L;

    /* renamed from: M */
    private C3969h<TranscodeType> f12493M;

    /* renamed from: N */
    private C3969h<TranscodeType> f12494N;

    /* renamed from: O */
    private Float f12495O;

    /* renamed from: P */
    private boolean f12496P = true;

    /* renamed from: Q */
    private boolean f12497Q;

    /* renamed from: R */
    private boolean f12498R;

    /* renamed from: com.bumptech.glide.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h$a.class */
    public static /* synthetic */ class C3970a {

        /* renamed from: a */
        static final /* synthetic */ int[] f12499a;

        /* renamed from: b */
        static final /* synthetic */ int[] f12500b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x009a -> B:44:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009e -> B:62:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a2 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a6 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00aa -> B:42:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ae -> B:60:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b2 -> B:54:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b6 -> B:46:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ba -> B:40:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00be -> B:58:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c2 -> B:52:0x008d). Please submit an issue!!! */
        static {
            int[] iArr = new int[Priority.values().length];
            f12500b = iArr;
            try {
                iArr[Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12500b[Priority.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12500b[Priority.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12500b[Priority.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f12499a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12499a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12499a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f12499a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f12499a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f12499a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f12499a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f12499a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public C3969h(ComponentCallbacks2C3958c componentCallbacks2C3958c, ComponentCallbacks2C3971i componentCallbacks2C3971i, Class<TranscodeType> cls, Context context) {
        this.f12488H = componentCallbacks2C3958c;
        this.f12486F = componentCallbacks2C3971i;
        this.f12487G = cls;
        this.f12485E = context;
        this.f12490J = componentCallbacks2C3971i.m23632p(cls);
        this.f12489I = componentCallbacks2C3958c.m23689i();
        m23644w0(componentCallbacks2C3971i.m23634n());
        mo22632a(componentCallbacks2C3971i.m23633o());
    }

    /* renamed from: B0 */
    private boolean m23659B0(AbstractC4397a<?> abstractC4397a, AbstractC4399c abstractC4399c) {
        return !abstractC4397a.m22649I() && abstractC4399c.mo22575j();
    }

    /* renamed from: G0 */
    private C3969h<TranscodeType> m23654G0(Object obj) {
        if (m22650H()) {
            return mo22622g().m23654G0(obj);
        }
        this.f12491K = obj;
        this.f12497Q = true;
        return m22624e0();
    }

    /* renamed from: H0 */
    private AbstractC4399c m23653H0(Object obj, AbstractC4411h<TranscodeType> abstractC4411h, AbstractC4400d<TranscodeType> abstractC4400d, AbstractC4397a<?> abstractC4397a, RequestCoordinator requestCoordinator, AbstractC3974j<?, ? super TranscodeType> abstractC3974j, Priority priority, int i, int i2, Executor executor) {
        Context context = this.f12485E;
        C3965e c3965e = this.f12489I;
        return SingleRequest.m22660x(context, c3965e, obj, this.f12491K, this.f12487G, abstractC4397a, i, i2, priority, abstractC4411h, abstractC4400d, this.f12492L, requestCoordinator, c3965e.m23667f(), abstractC3974j.m23620b(), executor);
    }

    /* renamed from: q0 */
    private AbstractC4399c m23650q0(AbstractC4411h<TranscodeType> abstractC4411h, AbstractC4400d<TranscodeType> abstractC4400d, AbstractC4397a<?> abstractC4397a, Executor executor) {
        return m23649r0(new Object(), abstractC4411h, abstractC4400d, null, this.f12490J, abstractC4397a.m22598y(), abstractC4397a.m22601v(), abstractC4397a.m22602t(), abstractC4397a, executor);
    }

    /* renamed from: r0 */
    private AbstractC4399c m23649r0(Object obj, AbstractC4411h<TranscodeType> abstractC4411h, AbstractC4400d<TranscodeType> abstractC4400d, RequestCoordinator requestCoordinator, AbstractC3974j<?, ? super TranscodeType> abstractC3974j, Priority priority, int i, int i2, AbstractC4397a<?> abstractC4397a, Executor executor) {
        C4398b c4398b;
        C4398b c4398b2;
        if (this.f12494N != null) {
            c4398b = new C4398b(obj, requestCoordinator);
            c4398b2 = c4398b;
        } else {
            c4398b = requestCoordinator;
            c4398b2 = null;
        }
        AbstractC4399c m23648s0 = m23648s0(obj, abstractC4411h, abstractC4400d, c4398b, abstractC3974j, priority, i, i2, abstractC4397a, executor);
        if (c4398b2 == null) {
            return m23648s0;
        }
        int m22601v = this.f12494N.m22601v();
        int m22602t = this.f12494N.m22602t();
        int i3 = m22601v;
        int i4 = m22602t;
        if (C4383k.m22699s(i, i2)) {
            i3 = m22601v;
            i4 = m22602t;
            if (!this.f12494N.m22641R()) {
                i3 = abstractC4397a.m22601v();
                i4 = abstractC4397a.m22602t();
            }
        }
        C3969h<TranscodeType> c3969h = this.f12494N;
        c4398b2.m22593p(m23648s0, c3969h.m23649r0(obj, abstractC4411h, abstractC4400d, c4398b2, c3969h.f12490J, c3969h.m22598y(), i3, i4, this.f12494N, executor));
        return c4398b2;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [com.bumptech.glide.request.a] */
    /* renamed from: s0 */
    private AbstractC4399c m23648s0(Object obj, AbstractC4411h<TranscodeType> abstractC4411h, AbstractC4400d<TranscodeType> abstractC4400d, RequestCoordinator requestCoordinator, AbstractC3974j<?, ? super TranscodeType> abstractC3974j, Priority priority, int i, int i2, AbstractC4397a<?> abstractC4397a, Executor executor) {
        C3969h<TranscodeType> c3969h = this.f12493M;
        if (c3969h == null) {
            if (this.f12495O == null) {
                return m23653H0(obj, abstractC4411h, abstractC4400d, abstractC4397a, requestCoordinator, abstractC3974j, priority, i, i2, executor);
            }
            C4403g c4403g = new C4403g(obj, requestCoordinator);
            c4403g.m22570o(m23653H0(obj, abstractC4411h, abstractC4400d, abstractC4397a, c4403g, abstractC3974j, priority, i, i2, executor), m23653H0(obj, abstractC4411h, abstractC4400d, abstractC4397a.clone().mo22619h0(this.f12495O.floatValue()), c4403g, abstractC3974j, m23645v0(priority), i, i2, executor));
            return c4403g;
        } else if (this.f12498R) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else {
            AbstractC3974j<?, ? super TranscodeType> abstractC3974j2 = c3969h.f12490J;
            if (c3969h.f12496P) {
                abstractC3974j2 = abstractC3974j;
            }
            Priority m22598y = c3969h.m22648J() ? this.f12493M.m22598y() : m23645v0(priority);
            int m22601v = this.f12493M.m22601v();
            int m22602t = this.f12493M.m22602t();
            int i3 = m22601v;
            int i4 = m22602t;
            if (C4383k.m22699s(i, i2)) {
                i3 = m22601v;
                i4 = m22602t;
                if (!this.f12493M.m22641R()) {
                    i3 = abstractC4397a.m22601v();
                    i4 = abstractC4397a.m22602t();
                }
            }
            C4403g c4403g2 = new C4403g(obj, requestCoordinator);
            AbstractC4399c m23653H0 = m23653H0(obj, abstractC4411h, abstractC4400d, abstractC4397a, c4403g2, abstractC3974j, priority, i, i2, executor);
            this.f12498R = true;
            C3969h<TranscodeType> c3969h2 = this.f12493M;
            AbstractC4399c m23649r0 = c3969h2.m23649r0(obj, abstractC4411h, abstractC4400d, c4403g2, abstractC3974j2, m22598y, i3, i4, c3969h2, executor);
            this.f12498R = false;
            c4403g2.m22570o(m23653H0, m23649r0);
            return c4403g2;
        }
    }

    /* renamed from: v0 */
    private Priority m23645v0(Priority priority) {
        int i = C3970a.f12500b[priority.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return Priority.HIGH;
            }
            if (i == 3 || i == 4) {
                return Priority.IMMEDIATE;
            }
            throw new IllegalArgumentException("unknown priority: " + m22598y());
        }
        return Priority.NORMAL;
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: w0 */
    private void m23644w0(List<AbstractC4400d<Object>> list) {
        for (AbstractC4400d<Object> abstractC4400d : list) {
            mo23652o0(abstractC4400d);
        }
    }

    /* renamed from: y0 */
    private <Y extends AbstractC4411h<TranscodeType>> Y m23642y0(Y y, AbstractC4400d<TranscodeType> abstractC4400d, AbstractC4397a<?> abstractC4397a, Executor executor) {
        C4382j.m22719d(y);
        if (this.f12497Q) {
            AbstractC4399c m23650q0 = m23650q0(y, abstractC4400d, abstractC4397a, executor);
            AbstractC4399c mo22555g = y.mo22555g();
            if (m23650q0.mo22581d(mo22555g) && !m23659B0(abstractC4397a, mo22555g)) {
                if (!((AbstractC4399c) C4382j.m22719d(mo22555g)).isRunning()) {
                    mo22555g.mo22577h();
                }
                return y;
            }
            this.f12486F.m23635m(y);
            y.mo22557d(m23650q0);
            this.f12486F.m23622z(y, m23650q0);
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    /* renamed from: A0 */
    public AbstractC4412i<ImageView, TranscodeType> m23660A0(ImageView imageView) {
        C3969h<TranscodeType> c3969h;
        C4383k.m22717a();
        C4382j.m22719d(imageView);
        if (!m22642Q() && m22644N() && imageView.getScaleType() != null) {
            switch (C3970a.f12499a[imageView.getScaleType().ordinal()]) {
                case 1:
                    c3969h = clone().mo22639T();
                    break;
                case 2:
                    c3969h = clone().mo22638U();
                    break;
                case 3:
                case 4:
                case 5:
                    c3969h = clone().mo22637V();
                    break;
                case 6:
                    c3969h = clone().mo22638U();
                    break;
            }
            return (AbstractC4412i) m23642y0(this.f12489I.m23672a(imageView, this.f12487G), null, c3969h, C4374e.m22737b());
        }
        c3969h = this;
        return (AbstractC4412i) m23642y0(this.f12489I.m23672a(imageView, this.f12487G), null, c3969h, C4374e.m22737b());
    }

    /* renamed from: C0 */
    public C3969h<TranscodeType> mo23658C0(Uri uri) {
        return m23654G0(uri);
    }

    /* renamed from: D0 */
    public C3969h<TranscodeType> m23657D0(Integer num) {
        return m23654G0(num).mo22632a(C4401e.m22588q0(C4364a.m22760c(this.f12485E)));
    }

    /* renamed from: E0 */
    public C3969h<TranscodeType> mo23656E0(Object obj) {
        return m23654G0(obj);
    }

    /* renamed from: F0 */
    public C3969h<TranscodeType> mo23655F0(String str) {
        return m23654G0(str);
    }

    /* renamed from: o0 */
    public C3969h<TranscodeType> mo23652o0(AbstractC4400d<TranscodeType> abstractC4400d) {
        if (m22650H()) {
            return mo22622g().mo23652o0(abstractC4400d);
        }
        if (abstractC4400d != null) {
            if (this.f12492L == null) {
                this.f12492L = new ArrayList();
            }
            this.f12492L.add(abstractC4400d);
        }
        return m22624e0();
    }

    /* renamed from: p0 */
    public C3969h<TranscodeType> mo22632a(AbstractC4397a<?> abstractC4397a) {
        C4382j.m22719d(abstractC4397a);
        return (C3969h) super.mo22632a(abstractC4397a);
    }

    /* renamed from: t0 */
    public C3969h<TranscodeType> mo22622g() {
        C3969h<TranscodeType> c3969h = (C3969h) super.clone();
        c3969h.f12490J = (AbstractC3974j<?, ? super TranscodeType>) c3969h.f12490J.clone();
        if (c3969h.f12492L != null) {
            c3969h.f12492L = new ArrayList(c3969h.f12492L);
        }
        C3969h<TranscodeType> c3969h2 = c3969h.f12493M;
        if (c3969h2 != null) {
            c3969h.f12493M = c3969h2.mo22622g();
        }
        C3969h<TranscodeType> c3969h3 = c3969h.f12494N;
        if (c3969h3 != null) {
            c3969h.f12494N = c3969h3.mo22622g();
        }
        return c3969h;
    }

    /* renamed from: u0 */
    public C3969h<TranscodeType> mo23646u0(C3969h<TranscodeType> c3969h) {
        if (m22650H()) {
            return mo22622g().mo23646u0(c3969h);
        }
        this.f12494N = c3969h;
        return m22624e0();
    }

    /* renamed from: x0 */
    public <Y extends AbstractC4411h<TranscodeType>> Y m23643x0(Y y) {
        return (Y) m23641z0(y, null, C4374e.m22737b());
    }

    /* renamed from: z0 */
    <Y extends AbstractC4411h<TranscodeType>> Y m23641z0(Y y, AbstractC4400d<TranscodeType> abstractC4400d, Executor executor) {
        return (Y) m23642y0(y, abstractC4400d, this, executor);
    }
}
