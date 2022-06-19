package com.bumptech.glide;

import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.AbstractC1745i;
import com.bumptech.glide.p073f.AbstractC1414b;
import com.bumptech.glide.p073f.AbstractC1420c;
import com.bumptech.glide.p073f.AbstractC1421d;
import com.bumptech.glide.p073f.C1402a;
import com.bumptech.glide.p073f.C1422e;
import com.bumptech.glide.p073f.C1424g;
import com.bumptech.glide.p073f.C1427h;
import com.bumptech.glide.p073f.p074a.AbstractC1410h;
import com.bumptech.glide.p073f.p074a.AbstractC1411i;
import com.bumptech.glide.p076g.C1429a;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
import java.util.List;
/* renamed from: com.bumptech.glide.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h.class */
public class C1432h<TranscodeType> implements Cloneable {

    /* renamed from: a */
    protected static final C1422e f4724a = new C1422e().m17131b(AbstractC1745i.f5303c).m17146a(EnumC1428g.LOW).m17128b(true);

    /* renamed from: b */
    protected C1422e f4725b;

    /* renamed from: c */
    private final Context f4726c;

    /* renamed from: d */
    private final C1459i f4727d;

    /* renamed from: e */
    private final Class<TranscodeType> f4728e;

    /* renamed from: f */
    private final C1422e f4729f;

    /* renamed from: g */
    private final ComponentCallbacks2C1361c f4730g;

    /* renamed from: h */
    private final C1391e f4731h;

    /* renamed from: i */
    private AbstractC1463j<?, ? super TranscodeType> f4732i;

    /* renamed from: j */
    private Object f4733j;

    /* renamed from: k */
    private List<AbstractC1421d<TranscodeType>> f4734k;

    /* renamed from: l */
    private C1432h<TranscodeType> f4735l;

    /* renamed from: m */
    private C1432h<TranscodeType> f4736m;

    /* renamed from: n */
    private Float f4737n;

    /* renamed from: o */
    private boolean f4738o = true;

    /* renamed from: p */
    private boolean f4739p;

    /* renamed from: q */
    private boolean f4740q;

    /* renamed from: com.bumptech.glide.h$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/h$1.class */
    public static /* synthetic */ class C14331 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4741a;

        /* renamed from: b */
        static final /* synthetic */ int[] f4742b = new int[EnumC1428g.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009e -> B:46:0x008d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a2 -> B:40:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a6 -> B:58:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00aa -> B:52:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ae -> B:48:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b2 -> B:42:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b6 -> B:60:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ba -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00be -> B:50:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c2 -> B:44:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c6 -> B:62:0x0014). Please submit an issue!!! */
        static {
            try {
                f4742b[EnumC1428g.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4742b[EnumC1428g.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4742b[EnumC1428g.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4742b[EnumC1428g.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            f4741a = new int[ImageView.ScaleType.values().length];
            try {
                f4741a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f4741a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f4741a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f4741a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f4741a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f4741a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f4741a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f4741a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    public C1432h(ComponentCallbacks2C1361c componentCallbacks2C1361c, C1459i c1459i, Class<TranscodeType> cls, Context context) {
        this.f4730g = componentCallbacks2C1361c;
        this.f4727d = c1459i;
        this.f4728e = cls;
        this.f4729f = c1459i.m16949h();
        this.f4726c = context;
        this.f4732i = c1459i.m16956b(cls);
        this.f4725b = this.f4729f;
        this.f4731h = componentCallbacks2C1361c.m17296e();
    }

    /* renamed from: a */
    private <Y extends AbstractC1410h<TranscodeType>> Y m17047a(Y y, AbstractC1421d<TranscodeType> abstractC1421d, C1422e c1422e) {
        C1457j.m16984a();
        C1456i.m16989a(y);
        if (!this.f4739p) {
            throw new IllegalArgumentException("You must call #load() before calling #into()");
        }
        C1422e m17119j = c1422e.m17119j();
        AbstractC1414b m17037b = m17037b(y, abstractC1421d, m17119j);
        AbstractC1414b mo17181b = y.mo17181b();
        if (!m17037b.mo17076a(mo17181b) || m17044a(m17119j, mo17181b)) {
            this.f4727d.m16964a((AbstractC1410h<?>) y);
            y.mo17183a(m17037b);
            this.f4727d.m16963a(y, m17037b);
        } else {
            m17037b.mo17063h();
            if (!((AbstractC1414b) C1456i.m16989a(mo17181b)).mo17072c()) {
                mo17181b.mo17077a();
            }
        }
        return y;
    }

    /* renamed from: a */
    private AbstractC1414b m17048a(AbstractC1410h<TranscodeType> abstractC1410h, AbstractC1421d<TranscodeType> abstractC1421d, AbstractC1420c abstractC1420c, AbstractC1463j<?, ? super TranscodeType> abstractC1463j, EnumC1428g enumC1428g, int i, int i2, C1422e c1422e) {
        C1402a c1402a;
        C1402a c1402a2;
        C1402a c1402a3;
        if (this.f4736m != null) {
            c1402a = new C1402a(abstractC1420c);
            c1402a2 = c1402a;
        } else {
            c1402a = abstractC1420c;
            c1402a2 = null;
        }
        AbstractC1414b m17038b = m17038b(abstractC1410h, abstractC1421d, c1402a, abstractC1463j, enumC1428g, i, i2, c1422e);
        if (c1402a2 == null) {
            c1402a3 = m17038b;
        } else {
            int m17160A = this.f4736m.f4725b.m17160A();
            int m17158C = this.f4736m.f4725b.m17158C();
            int i3 = m17160A;
            int i4 = m17158C;
            if (C1457j.m16980a(i, i2)) {
                i3 = m17160A;
                i4 = m17158C;
                if (!this.f4736m.f4725b.m17159B()) {
                    i3 = c1422e.m17160A();
                    i4 = c1422e.m17158C();
                }
            }
            c1402a2.m17200a(m17038b, this.f4736m.m17048a(abstractC1410h, abstractC1421d, c1402a2, this.f4736m.f4732i, this.f4736m.f4725b.m17103z(), i3, i4, this.f4736m.f4725b));
            c1402a3 = c1402a2;
        }
        return c1402a3;
    }

    /* renamed from: a */
    private AbstractC1414b m17046a(AbstractC1410h<TranscodeType> abstractC1410h, AbstractC1421d<TranscodeType> abstractC1421d, C1422e c1422e, AbstractC1420c abstractC1420c, AbstractC1463j<?, ? super TranscodeType> abstractC1463j, EnumC1428g enumC1428g, int i, int i2) {
        return C1424g.m17099a(this.f4726c, this.f4731h, this.f4733j, this.f4728e, c1422e, i, i2, enumC1428g, abstractC1410h, abstractC1421d, this.f4734k, abstractC1420c, this.f4731h.m17224b(), abstractC1463j.m16946b());
    }

    /* renamed from: a */
    private EnumC1428g m17043a(EnumC1428g enumC1428g) {
        EnumC1428g enumC1428g2;
        switch (C14331.f4742b[enumC1428g.ordinal()]) {
            case 1:
                enumC1428g2 = EnumC1428g.NORMAL;
                break;
            case 2:
                enumC1428g2 = EnumC1428g.HIGH;
                break;
            case 3:
            case 4:
                enumC1428g2 = EnumC1428g.IMMEDIATE;
                break;
            default:
                throw new IllegalArgumentException("unknown priority: " + this.f4725b.m17103z());
        }
        return enumC1428g2;
    }

    /* renamed from: a */
    private boolean m17044a(C1422e c1422e, AbstractC1414b abstractC1414b) {
        return !c1422e.m17106w() && abstractC1414b.mo17070d();
    }

    /* renamed from: b */
    private AbstractC1414b m17038b(AbstractC1410h<TranscodeType> abstractC1410h, AbstractC1421d<TranscodeType> abstractC1421d, AbstractC1420c abstractC1420c, AbstractC1463j<?, ? super TranscodeType> abstractC1463j, EnumC1428g enumC1428g, int i, int i2, C1422e c1422e) {
        C1427h m17046a;
        if (this.f4735l != null) {
            if (this.f4740q) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            AbstractC1463j<?, ? super TranscodeType> abstractC1463j2 = this.f4735l.f4732i;
            if (this.f4735l.f4738o) {
                abstractC1463j2 = abstractC1463j;
            }
            EnumC1428g m17103z = this.f4735l.f4725b.m17104y() ? this.f4735l.f4725b.m17103z() : m17043a(enumC1428g);
            int m17160A = this.f4735l.f4725b.m17160A();
            int m17158C = this.f4735l.f4725b.m17158C();
            if (C1457j.m16980a(i, i2) && !this.f4735l.f4725b.m17159B()) {
                m17160A = c1422e.m17160A();
                m17158C = c1422e.m17158C();
            }
            C1427h c1427h = new C1427h(abstractC1420c);
            AbstractC1414b m17046a2 = m17046a(abstractC1410h, abstractC1421d, c1422e, c1427h, abstractC1463j, enumC1428g, i, i2);
            this.f4740q = true;
            AbstractC1414b m17048a = this.f4735l.m17048a(abstractC1410h, abstractC1421d, c1427h, abstractC1463j2, m17103z, m17160A, m17158C, this.f4735l.f4725b);
            this.f4740q = false;
            c1427h.m17075a(m17046a2, m17048a);
            m17046a = c1427h;
        } else if (this.f4737n != null) {
            C1427h c1427h2 = new C1427h(abstractC1420c);
            c1427h2.m17075a(m17046a(abstractC1410h, abstractC1421d, c1422e, c1427h2, abstractC1463j, enumC1428g, i, i2), m17046a(abstractC1410h, abstractC1421d, c1422e.clone().m17150a(this.f4737n.floatValue()), c1427h2, abstractC1463j, m17043a(enumC1428g), i, i2));
            m17046a = c1427h2;
        } else {
            m17046a = m17046a(abstractC1410h, abstractC1421d, c1422e, abstractC1420c, abstractC1463j, enumC1428g, i, i2);
        }
        return m17046a;
    }

    /* renamed from: b */
    private AbstractC1414b m17037b(AbstractC1410h<TranscodeType> abstractC1410h, AbstractC1421d<TranscodeType> abstractC1421d, C1422e c1422e) {
        return m17048a(abstractC1410h, abstractC1421d, (AbstractC1420c) null, this.f4732i, c1422e.m17103z(), c1422e.m17160A(), c1422e.m17158C(), c1422e);
    }

    /* renamed from: b */
    private C1432h<TranscodeType> m17036b(Object obj) {
        this.f4733j = obj;
        this.f4739p = true;
        return this;
    }

    /* renamed from: a */
    public <Y extends AbstractC1410h<TranscodeType>> Y m17050a(Y y) {
        return (Y) m17049a((C1432h<TranscodeType>) y, (AbstractC1421d) null);
    }

    /* renamed from: a */
    <Y extends AbstractC1410h<TranscodeType>> Y m17049a(Y y, AbstractC1421d<TranscodeType> abstractC1421d) {
        return (Y) m17047a(y, abstractC1421d, m17052a());
    }

    /* renamed from: a */
    public AbstractC1411i<ImageView, TranscodeType> m17051a(ImageView imageView) {
        C1457j.m16984a();
        C1456i.m16989a(imageView);
        C1422e c1422e = this.f4725b;
        C1422e c1422e2 = c1422e;
        if (!c1422e.m17125d()) {
            c1422e2 = c1422e;
            if (c1422e.m17127c()) {
                c1422e2 = c1422e;
                if (imageView.getScaleType() != null) {
                    switch (C14331.f4741a[imageView.getScaleType().ordinal()]) {
                        case 1:
                            c1422e2 = c1422e.clone().m17124e();
                            break;
                        case 2:
                            c1422e2 = c1422e.clone().m17122g();
                            break;
                        case 3:
                        case 4:
                        case 5:
                            c1422e2 = c1422e.clone().m17123f();
                            break;
                        case 6:
                            c1422e2 = c1422e.clone().m17122g();
                            break;
                        default:
                            c1422e2 = c1422e;
                            break;
                    }
                }
            }
        }
        return (AbstractC1411i) m17047a(this.f4731h.m17226a(imageView, this.f4728e), null, c1422e2);
    }

    /* renamed from: a */
    protected C1422e m17052a() {
        return this.f4729f == this.f4725b ? this.f4725b.clone() : this.f4725b;
    }

    /* renamed from: a */
    public C1432h<TranscodeType> m17045a(C1422e c1422e) {
        C1456i.m16989a(c1422e);
        this.f4725b = m17052a().m17147a(c1422e);
        return this;
    }

    /* renamed from: a */
    public C1432h<TranscodeType> m17042a(Integer num) {
        return m17036b(num).m17045a(C1422e.m17141a(C1429a.m17057a(this.f4726c)));
    }

    /* renamed from: a */
    public C1432h<TranscodeType> m17041a(Object obj) {
        return m17036b(obj);
    }

    /* renamed from: a */
    public C1432h<TranscodeType> m17040a(String str) {
        return m17036b(str);
    }

    /* renamed from: b */
    public C1432h<TranscodeType> clone() {
        try {
            C1432h<TranscodeType> c1432h = (C1432h) super.clone();
            c1432h.f4725b = c1432h.f4725b.clone();
            c1432h.f4732i = (AbstractC1463j<?, ? super TranscodeType>) c1432h.f4732i.clone();
            return c1432h;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
