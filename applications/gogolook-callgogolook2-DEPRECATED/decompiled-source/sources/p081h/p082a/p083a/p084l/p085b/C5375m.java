package p081h.p082a.p083a.p084l.p085b;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import java.util.List;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.p084l.p086c.AbstractC5382a;
import p081h.p082a.p083a.p088n.p090l.C5477i;
import p081h.p082a.p083a.p088n.p090l.C5502q;
import p081h.p082a.p083a.p088n.p091m.AbstractC5506a;
import p081h.p082a.p083a.p092o.C5530f;
/* renamed from: h.a.a.l.b.m */
/* loaded from: classes-dex2jar.jar:h/a/a/l/b/m.class */
public class C5375m implements AbstractC5374l, AbstractC5382a.AbstractC5383a {

    /* renamed from: a */
    public final Path f13452a = new Path();

    /* renamed from: b */
    public final String f13453b;

    /* renamed from: c */
    public final C5344f f13454c;

    /* renamed from: d */
    public final C5477i.EnumC5480c f13455d;

    /* renamed from: e */
    public final AbstractC5382a<?, Float> f13456e;

    /* renamed from: f */
    public final AbstractC5382a<?, PointF> f13457f;

    /* renamed from: g */
    public final AbstractC5382a<?, Float> f13458g;
    @Nullable

    /* renamed from: h */
    public final AbstractC5382a<?, Float> f13459h;

    /* renamed from: i */
    public final AbstractC5382a<?, Float> f13460i;
    @Nullable

    /* renamed from: j */
    public final AbstractC5382a<?, Float> f13461j;

    /* renamed from: k */
    public final AbstractC5382a<?, Float> f13462k;
    @Nullable

    /* renamed from: l */
    public C5381r f13463l;

    /* renamed from: m */
    public boolean f13464m;

    /* renamed from: h.a.a.l.b.m$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/l/b/m$a.class */
    public static /* synthetic */ class C5376a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13465a = new int[C5477i.EnumC5480c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                f13465a[C5477i.EnumC5480c.Star.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13465a[C5477i.EnumC5480c.Polygon.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public C5375m(C5344f fVar, AbstractC5506a aVar, C5477i iVar) {
        this.f13454c = fVar;
        this.f13453b = iVar.m25398c();
        this.f13455d = iVar.m25392i();
        this.f13456e = iVar.m25395f().mo25446a();
        this.f13457f = iVar.m25394g().mo25446a();
        this.f13458g = iVar.m25393h().mo25446a();
        this.f13460i = iVar.m25397d().mo25446a();
        this.f13462k = iVar.m25396e().mo25446a();
        if (this.f13455d == C5477i.EnumC5480c.Star) {
            this.f13459h = iVar.m25400a().mo25446a();
            this.f13461j = iVar.m25399b().mo25446a();
        } else {
            this.f13459h = null;
            this.f13461j = null;
        }
        aVar.m25336a(this.f13456e);
        aVar.m25336a(this.f13457f);
        aVar.m25336a(this.f13458g);
        aVar.m25336a(this.f13460i);
        aVar.m25336a(this.f13462k);
        if (this.f13455d == C5477i.EnumC5480c.Star) {
            aVar.m25336a(this.f13459h);
            aVar.m25336a(this.f13461j);
        }
        this.f13456e.mo25517a(this);
        this.f13457f.mo25517a(this);
        this.f13458g.mo25517a(this);
        this.f13460i.mo25517a(this);
        this.f13462k.mo25517a(this);
        if (this.f13455d == C5477i.EnumC5480c.Star) {
            this.f13460i.mo25517a(this);
            this.f13462k.mo25517a(this);
        }
    }

    @Override // p081h.p082a.p083a.p084l.p086c.AbstractC5382a.AbstractC5383a
    /* renamed from: a */
    public void mo25321a() {
        m25539d();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    /* renamed from: a */
    public void mo25332a(List<AbstractC5363b> list, List<AbstractC5363b> list2) {
        for (int i = 0; i < list.size(); i++) {
            AbstractC5363b bVar = list.get(i);
            if (bVar instanceof C5381r) {
                C5381r rVar = (C5381r) bVar;
                if (rVar.m25531e() == C5502q.EnumC5505c.Simultaneously) {
                    this.f13463l = rVar;
                    this.f13463l.m25535a(this);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m25541b() {
        AbstractC5382a<?, Float> aVar;
        int floor = (int) Math.floor(this.f13456e.mo25516f().floatValue());
        double radians = Math.toRadians((this.f13458g == null ? 0.0d : aVar.mo25516f().floatValue()) - 90.0d);
        double d = floor;
        float f = (float) (6.283185307179586d / d);
        float floatValue = this.f13462k.mo25516f().floatValue() / 100.0f;
        float floatValue2 = this.f13460i.mo25516f().floatValue();
        double d2 = floatValue2;
        float cos = (float) (Math.cos(radians) * d2);
        float sin = (float) (Math.sin(radians) * d2);
        this.f13452a.moveTo(cos, sin);
        double d3 = f;
        double d4 = radians + d3;
        double ceil = Math.ceil(d);
        int i = 0;
        while (i < ceil) {
            float cos2 = (float) (Math.cos(d4) * d2);
            float sin2 = (float) (d2 * Math.sin(d4));
            if (floatValue != 0.0f) {
                double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                float cos3 = (float) Math.cos(atan2);
                float sin3 = (float) Math.sin(atan2);
                double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                float cos4 = (float) Math.cos(atan22);
                float sin4 = (float) Math.sin(atan22);
                float f2 = floatValue2 * floatValue * 0.25f;
                this.f13452a.cubicTo(cos - (cos3 * f2), sin - (sin3 * f2), cos2 + (cos4 * f2), sin2 + (f2 * sin4), cos2, sin2);
            } else {
                this.f13452a.lineTo(cos2, sin2);
            }
            d4 += d3;
            i++;
            sin = sin2;
            cos = cos2;
        }
        PointF f3 = this.f13457f.mo25516f();
        this.f13452a.offset(f3.x, f3.y);
        this.f13452a.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v2, types: [double] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m25540c() {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p082a.p083a.p084l.p085b.C5375m.m25540c():void");
    }

    /* renamed from: d */
    public final void m25539d() {
        this.f13464m = false;
        this.f13454c.invalidateSelf();
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5363b
    public String getName() {
        return this.f13453b;
    }

    @Override // p081h.p082a.p083a.p084l.p085b.AbstractC5374l
    public Path getPath() {
        if (this.f13464m) {
            return this.f13452a;
        }
        this.f13452a.reset();
        int i = C5376a.f13465a[this.f13455d.ordinal()];
        if (i == 1) {
            m25540c();
        } else if (i == 2) {
            m25541b();
        }
        this.f13452a.close();
        C5530f.m25250a(this.f13452a, this.f13463l);
        this.f13464m = true;
        return this.f13452a;
    }
}
