package p081h.p119d.p120a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.C5807d;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p134k.C5952d;
import p081h.p119d.p120a.p142t.AbstractC6030g;
import p081h.p119d.p120a.p142t.C6038m;
import p081h.p119d.p120a.p144v.AbstractC6049f;
import p081h.p119d.p120a.p144v.C6044a;
import p081h.p119d.p120a.p145w.AbstractC6053c;
import p081h.p119d.p120a.p145w.AbstractC6054d;
import p081h.p119d.p120a.p145w.AbstractC6057f;
import p081h.p119d.p120a.p145w.AbstractFutureC6050a;
import p081h.p119d.p120a.p145w.C6051b;
import p081h.p119d.p120a.p145w.C6059h;
import p081h.p119d.p120a.p145w.RunnableC6055e;
import p081h.p119d.p120a.p145w.p146i.AbstractC6065d;
import p081h.p119d.p120a.p145w.p146i.C6066e;
import p081h.p119d.p120a.p145w.p147j.AbstractC6082k;
import p081h.p119d.p120a.p145w.p147j.C6077g;
import p081h.p119d.p120a.p148x.C6087b;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.h */
/* loaded from: classes-dex2jar.jar:h/d/a/h.class */
public class C5770h<ModelType, DataType, ResourceType, TranscodeType> implements Cloneable {

    /* renamed from: A */
    public boolean f14433A;

    /* renamed from: B */
    public Drawable f14434B;

    /* renamed from: C */
    public int f14435C;

    /* renamed from: a */
    public final Class<ModelType> f14436a;

    /* renamed from: b */
    public final Context f14437b;

    /* renamed from: c */
    public final C5776l f14438c;

    /* renamed from: d */
    public final Class<TranscodeType> f14439d;

    /* renamed from: e */
    public final C6038m f14440e;

    /* renamed from: f */
    public final AbstractC6030g f14441f;

    /* renamed from: g */
    public C6044a<ModelType, DataType, ResourceType, TranscodeType> f14442g;

    /* renamed from: h */
    public ModelType f14443h;

    /* renamed from: i */
    public AbstractC5806c f14444i;

    /* renamed from: j */
    public boolean f14445j;

    /* renamed from: k */
    public int f14446k;

    /* renamed from: l */
    public int f14447l;

    /* renamed from: m */
    public AbstractC6057f<? super ModelType, TranscodeType> f14448m;

    /* renamed from: n */
    public Float f14449n;

    /* renamed from: o */
    public C5770h<?, ?, ?, TranscodeType> f14450o;

    /* renamed from: p */
    public Float f14451p;

    /* renamed from: q */
    public Drawable f14452q;

    /* renamed from: r */
    public Drawable f14453r;

    /* renamed from: s */
    public EnumC5779n f14454s;

    /* renamed from: t */
    public boolean f14455t;

    /* renamed from: u */
    public AbstractC6065d<TranscodeType> f14456u;

    /* renamed from: v */
    public int f14457v;

    /* renamed from: w */
    public int f14458w;

    /* renamed from: x */
    public EnumC5827b f14459x;

    /* renamed from: y */
    public AbstractC5810g<ResourceType> f14460y;

    /* renamed from: z */
    public boolean f14461z;

    /* renamed from: h.d.a.h$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/h$a.class */
    public class RunnableC5771a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ RunnableC6055e f14462a;

        public RunnableC5771a(RunnableC6055e eVar) {
            this.f14462a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f14462a.isCancelled()) {
                C5770h.this.m24512b((C5770h) this.f14462a);
            }
        }
    }

    /* renamed from: h.d.a.h$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/h$b.class */
    public static /* synthetic */ class C5772b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14464a = new int[ImageView.ScaleType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f14464a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14464a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14464a[ImageView.ScaleType.FIT_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14464a[ImageView.ScaleType.FIT_END.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C5770h(Context context, Class<ModelType> cls, AbstractC6049f<ModelType, DataType, ResourceType, TranscodeType> fVar, Class<TranscodeType> cls2, C5776l lVar, C6038m mVar, AbstractC6030g gVar) {
        this.f14444i = C6087b.m23890a();
        this.f14451p = Float.valueOf(1.0f);
        C6044a<ModelType, DataType, ResourceType, TranscodeType> aVar = null;
        this.f14454s = null;
        this.f14455t = true;
        this.f14456u = C6066e.m23925c();
        this.f14457v = -1;
        this.f14458w = -1;
        this.f14459x = EnumC5827b.RESULT;
        this.f14460y = C5952d.m24124a();
        this.f14437b = context;
        this.f14436a = cls;
        this.f14439d = cls2;
        this.f14438c = lVar;
        this.f14440e = mVar;
        this.f14441f = gVar;
        this.f14442g = fVar != null ? new C6044a<>(fVar) : aVar;
        if (context == null) {
            throw new NullPointerException("Context can't be null");
        } else if (cls != null && fVar == null) {
            throw new NullPointerException("LoadProvider must not be null");
        }
    }

    public C5770h(AbstractC6049f<ModelType, DataType, ResourceType, TranscodeType> fVar, Class<TranscodeType> cls, C5770h<ModelType, ?, ?, ?> hVar) {
        this(hVar.f14437b, hVar.f14436a, fVar, cls, hVar.f14438c, hVar.f14440e, hVar.f14441f);
        this.f14443h = hVar.f14443h;
        this.f14445j = hVar.f14445j;
        this.f14444i = hVar.f14444i;
        this.f14459x = hVar.f14459x;
        this.f14455t = hVar.f14455t;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24521a(int i) {
        this.f14447l = i;
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24519a(Drawable drawable) {
        this.f14452q = drawable;
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24505a(EnumC5779n nVar) {
        this.f14454s = nVar;
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> m24517a(AbstractC5805b<DataType> bVar) {
        C6044a<ModelType, DataType, ResourceType, TranscodeType> aVar = this.f14442g;
        if (aVar != null) {
            aVar.m23976a(bVar);
        }
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24504a(AbstractC5806c cVar) {
        if (cVar != null) {
            this.f14444i = cVar;
            return this;
        }
        throw new NullPointerException("Signature must not be null");
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24503a(AbstractC5808e<DataType, ResourceType> eVar) {
        C6044a<ModelType, DataType, ResourceType, TranscodeType> aVar = this.f14442g;
        if (aVar != null) {
            aVar.m23975a(eVar);
        }
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24502a(EnumC5827b bVar) {
        this.f14459x = bVar;
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24501a(AbstractC6057f<? super ModelType, TranscodeType> fVar) {
        this.f14448m = fVar;
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24500a(AbstractC6065d<TranscodeType> dVar) {
        if (dVar != null) {
            this.f14456u = dVar;
            return this;
        }
        throw new NullPointerException("Animation factory must not be null!");
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24513a(ModelType modeltype) {
        this.f14443h = modeltype;
        this.f14445j = true;
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24499a(boolean z) {
        this.f14455t = !z;
        return this;
    }

    /* renamed from: a */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24498a(AbstractC5810g<ResourceType>... gVarArr) {
        this.f14461z = true;
        if (gVarArr.length == 1) {
            this.f14460y = gVarArr[0];
        } else {
            this.f14460y = new C5807d(gVarArr);
        }
        return this;
    }

    /* renamed from: a */
    public AbstractFutureC6050a<TranscodeType> m24520a(int i, int i2) {
        RunnableC6055e eVar = new RunnableC6055e(this.f14438c.m24462k(), i, i2);
        this.f14438c.m24462k().post(new RunnableC5771a(eVar));
        return eVar;
    }

    /* renamed from: a */
    public final AbstractC6053c m24516a(AbstractC6082k<TranscodeType> kVar) {
        if (this.f14454s == null) {
            this.f14454s = EnumC5779n.NORMAL;
        }
        return m24514a(kVar, (C6059h) null);
    }

    /* renamed from: a */
    public final AbstractC6053c m24515a(AbstractC6082k<TranscodeType> kVar, float f, EnumC5779n nVar, AbstractC6054d dVar) {
        return C6051b.m23960b(this.f14442g, this.f14443h, this.f14444i, this.f14437b, nVar, kVar, f, this.f14452q, this.f14446k, this.f14453r, this.f14447l, this.f14434B, this.f14435C, this.f14448m, dVar, this.f14438c.m24464i(), this.f14460y, this.f14439d, this.f14455t, this.f14456u, this.f14458w, this.f14457v, this.f14459x);
    }

    /* renamed from: a */
    public final AbstractC6053c m24514a(AbstractC6082k<TranscodeType> kVar, C6059h hVar) {
        C5770h<?, ?, ?, TranscodeType> hVar2 = this.f14450o;
        if (hVar2 != null) {
            if (!this.f14433A) {
                if (hVar2.f14456u.equals(C6066e.m23925c())) {
                    this.f14450o.f14456u = this.f14456u;
                }
                C5770h<?, ?, ?, TranscodeType> hVar3 = this.f14450o;
                if (hVar3.f14454s == null) {
                    hVar3.f14454s = m24510g();
                }
                if (C6096h.m23863a(this.f14458w, this.f14457v)) {
                    C5770h<?, ?, ?, TranscodeType> hVar4 = this.f14450o;
                    if (!C6096h.m23863a(hVar4.f14458w, hVar4.f14457v)) {
                        this.f14450o.mo24495b(this.f14458w, this.f14457v);
                    }
                }
                C6059h hVar5 = new C6059h(hVar);
                AbstractC6053c a = m24515a(kVar, this.f14451p.floatValue(), this.f14454s, hVar5);
                this.f14433A = true;
                AbstractC6053c a2 = this.f14450o.m24514a(kVar, hVar5);
                this.f14433A = false;
                hVar5.m23941a(a, a2);
                return hVar5;
            }
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else if (this.f14449n == null) {
            return m24515a(kVar, this.f14451p.floatValue(), this.f14454s, hVar);
        } else {
            C6059h hVar6 = new C6059h(hVar);
            hVar6.m23941a(m24515a(kVar, this.f14451p.floatValue(), this.f14454s, hVar6), m24515a(kVar, this.f14449n.floatValue(), m24510g(), hVar6));
            return hVar6;
        }
    }

    /* renamed from: a */
    public AbstractC6082k<TranscodeType> mo24518a(ImageView imageView) {
        C6096h.m23856b();
        if (imageView != null) {
            if (!this.f14461z && imageView.getScaleType() != null) {
                int i = C5772b.f14464a[imageView.getScaleType().ordinal()];
                if (i == 1) {
                    mo24493d();
                } else if (i == 2 || i == 3 || i == 4) {
                    mo24492e();
                }
            }
            AbstractC6082k<TranscodeType> a = this.f14438c.m24482a(imageView, this.f14439d);
            m24512b((C5770h<ModelType, DataType, ResourceType, TranscodeType>) a);
            return a;
        }
        throw new IllegalArgumentException("You must pass in a non null View");
    }

    /* renamed from: b */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24496b(int i) {
        this.f14446k = i;
        return this;
    }

    /* renamed from: b */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24495b(int i, int i2) {
        if (C6096h.m23863a(i, i2)) {
            this.f14458w = i;
            this.f14457v = i2;
            return this;
        }
        throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
    }

    /* renamed from: b */
    public <Y extends AbstractC6082k<TranscodeType>> Y m24512b(Y y) {
        C6096h.m23856b();
        if (y == null) {
            throw new IllegalArgumentException("You must pass in a non null Target");
        } else if (this.f14445j) {
            AbstractC6053c a = y.mo23907a();
            if (a != null) {
                a.clear();
                this.f14440e.m23990a(a);
                a.mo23940b();
            }
            AbstractC6053c a2 = m24516a((AbstractC6082k) y);
            y.mo23906a(a2);
            this.f14441f.mo24008a(y);
            this.f14440e.m23988b(a2);
            return y;
        } else {
            throw new IllegalArgumentException("You must first set a model (try #load())");
        }
    }

    /* renamed from: c */
    public AbstractC6082k<TranscodeType> m24511c(int i, int i2) {
        C6077g a = C6077g.m23914a(i, i2);
        m24512b((C5770h<ModelType, DataType, ResourceType, TranscodeType>) a);
        return a;
    }

    public C5770h<ModelType, DataType, ResourceType, TranscodeType> clone() {
        try {
            C5770h<ModelType, DataType, ResourceType, TranscodeType> hVar = (C5770h) super.clone();
            hVar.f14442g = this.f14442g != null ? this.f14442g.clone() : null;
            return hVar;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: d */
    public void mo24493d() {
    }

    /* renamed from: e */
    public void mo24492e() {
    }

    /* renamed from: f */
    public C5770h<ModelType, DataType, ResourceType, TranscodeType> mo24491f() {
        return mo24500a((AbstractC6065d) C6066e.m23925c());
    }

    /* renamed from: g */
    public final EnumC5779n m24510g() {
        EnumC5779n nVar = this.f14454s;
        return nVar == EnumC5779n.LOW ? EnumC5779n.NORMAL : nVar == EnumC5779n.NORMAL ? EnumC5779n.HIGH : EnumC5779n.IMMEDIATE;
    }

    /* renamed from: h */
    public AbstractC6082k<TranscodeType> m24509h() {
        return m24511c(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }
}
