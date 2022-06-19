package p193e.p194a.p195a.p257l;

import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.AbstractC6392i0;
import q3.a.i0;
import q3.a.j0;
import s1.o;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.l.c */
/* loaded from: classes10-dex2jar.jar:e/a/a/l/c.class */
public final class C6765c extends AbstractC20574a<AbstractC6767d> implements AbstractC6764b {

    /* renamed from: d */
    public final String[] f22267d;

    /* renamed from: e */
    public String f22268e;

    /* renamed from: f */
    public final f f22269f;

    /* renamed from: g */
    public final C6768e f22270g;

    /* renamed from: h */
    public final AbstractC6392i0 f22271h;

    /* renamed from: i */
    public final String f22272i;

    /* renamed from: j */
    public final String f22273j;

    /* renamed from: k */
    public final String f22274k;

    @e(c = "com.truecaller.messaging.acsreply.AcsReplyBottomSheetPresenterImpl$sendMessage$1$1", f = "AcsReplyBottomSheetPresenter.kt", l = {46}, m = "invokeSuspend")
    /* renamed from: e.a.a.l.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/c$a.class */
    public static final class C6766a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f22275e;

        /* renamed from: f */
        public final /* synthetic */ String f22276f;

        /* renamed from: g */
        public final /* synthetic */ C6765c f22277g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6766a(String str, d dVar, C6765c c6765c) {
            super(2, dVar);
            this.f22276f = str;
            this.f22277g = c6765c;
        }

        /* renamed from: i */
        public final d<s> m30457i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6766a(this.f22276f, dVar, this.f22277g);
        }

        /* renamed from: k */
        public final Object m30456k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6766a(this.f22276f, dVar, this.f22277g).m30455s(s.a);
        }

        /* renamed from: s */
        public final Object m30455s(Object obj) {
            a aVar = a.a;
            int i = this.f22275e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C6765c c6765c = this.f22277g;
                String str = this.f22276f;
                ArrayList arrayList = (ArrayList) C25225a.m3892i3(c6765c.f22267d);
                if (!arrayList.contains(str)) {
                    if (arrayList.size() >= 3) {
                        arrayList.remove(0);
                    }
                    arrayList.add(str);
                    AbstractC6392i0 abstractC6392i0 = c6765c.f22271h;
                    Object[] array = arrayList.toArray(new String[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                    abstractC6392i0.mo31131V1((String[]) array);
                }
                C6765c c6765c2 = this.f22277g;
                C6768e c6768e = c6765c2.f22270g;
                String str2 = this.f22276f;
                String str3 = c6765c2.f22272i;
                String str4 = c6765c2.f22274k;
                this.f22275e = 1;
                Object m30450a = c6768e.m30450a(str2, str3, 1, str4, null, this);
                obj = m30450a;
                if (m30450a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            o oVar = (o) obj;
            AbstractC6767d abstractC6767d = (AbstractC6767d) this.f22277g.f57683a;
            if (abstractC6767d != null) {
                abstractC6767d.mo30453Rh((Long) oVar.a, (Long) oVar.b, (Boolean) oVar.c, this.f22276f);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6765c(@Named("UI") f fVar, C6768e c6768e, AbstractC6392i0 abstractC6392i0, @Named("phone") String str, @Named("name") String str2, @Named("analytics_context") String str3) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(c6768e, "replyManager");
        l.e(abstractC6392i0, "settings");
        l.e(str, "phoneNumber");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(str3, "analyticsContext");
        this.f22269f = fVar;
        this.f22270g = c6768e;
        this.f22271h = abstractC6392i0;
        this.f22272i = str;
        this.f22273j = str2;
        this.f22274k = str3;
        String[] mo31182L0 = abstractC6392i0.mo31182L0();
        l.d(mo31182L0, "settings.replyOptions");
        this.f22267d = mo31182L0;
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6764b
    /* renamed from: N0 */
    public void mo30461N0() {
        String str = this.f22268e;
        if (str != null) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C6766a(str, null, this), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6764b
    /* renamed from: X1 */
    public void mo30460X1() {
        AbstractC6767d abstractC6767d;
        AbstractC6767d abstractC6767d2 = (AbstractC6767d) this.f57683a;
        if (abstractC6767d2 != null) {
            abstractC6767d2.mo30454Jv(this.f22273j);
        }
        String[] strArr = this.f22267d;
        if (!(!(strArr.length == 0)) || (abstractC6767d = (AbstractC6767d) this.f57683a) == null) {
            return;
        }
        abstractC6767d.mo30452a9(strArr);
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6764b
    /* renamed from: ug */
    public void mo30459ug(String str) {
        l.e(str, "text");
        this.f22268e = str;
        AbstractC6767d abstractC6767d = (AbstractC6767d) this.f57683a;
        if (abstractC6767d != null) {
            abstractC6767d.mo30451ye(!(str.length() == 0));
        }
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6764b
    /* renamed from: y8 */
    public void mo30458y8(int i) {
        this.f22268e = this.f22267d[i];
        AbstractC6767d abstractC6767d = (AbstractC6767d) this.f57683a;
        if (abstractC6767d != null) {
            abstractC6767d.mo30451ye(true);
        }
    }
}
