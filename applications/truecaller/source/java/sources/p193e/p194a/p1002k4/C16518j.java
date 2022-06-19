package p193e.p194a.p1002k4;

import com.google.android.gms.maps.model.LatLng;
import com.truecaller.placepicker.data.GeocodedPlace;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.p1004o.AbstractC16538g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.placepicker.PlacePickerPresenter$fetchPlaceFromLatLong$1", f = "PlacePickerPresenter.kt", l = {58}, m = "invokeSuspend")
/* renamed from: e.a.k4.j */
/* loaded from: classes11-dex2jar.jar:e/a/k4/j.class */
public final class C16518j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f46443e;

    /* renamed from: f */
    public int f46444f;

    /* renamed from: g */
    public final /* synthetic */ C16512i f46445g;

    /* renamed from: h */
    public final /* synthetic */ LatLng f46446h;

    @e(c = "com.truecaller.placepicker.PlacePickerPresenter$fetchPlaceFromLatLong$1$geocodedPlace$1", f = "PlacePickerPresenter.kt", l = {59}, m = "invokeSuspend")
    /* renamed from: e.a.k4.j$a */
    /* loaded from: classes11-dex2jar.jar:e/a/k4/j$a.class */
    public static final class C16519a extends i implements p<i0, d<? super GeocodedPlace>, Object> {

        /* renamed from: e */
        public int f46447e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16519a(d dVar) {
            super(2, dVar);
            C16518j.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17285i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16519a(dVar);
        }

        /* renamed from: k */
        public final Object m17284k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16519a(dVar).m17283s(s.a);
        }

        /* renamed from: s */
        public final Object m17283s(Object obj) {
            a aVar = a.a;
            int i = this.f46447e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C16518j c16518j = C16518j.this;
                AbstractC16538g abstractC16538g = c16518j.f46445g.f46422j;
                LatLng latLng = c16518j.f46446h;
                double d = latLng.a;
                double d2 = latLng.b;
                this.f46447e = 1;
                Object mo17269b = abstractC16538g.mo17269b(d, d2, this);
                obj = mo17269b;
                if (mo17269b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16518j(C16512i c16512i, LatLng latLng, d dVar) {
        super(2, dVar);
        this.f46445g = c16512i;
        this.f46446h = latLng;
    }

    /* renamed from: i */
    public final d<s> m17288i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16518j c16518j = new C16518j(this.f46445g, this.f46446h, dVar);
        c16518j.f46443e = obj;
        return c16518j;
    }

    /* renamed from: k */
    public final Object m17287k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16518j c16518j = new C16518j(this.f46445g, this.f46446h, dVar);
        c16518j.f46443e = obj;
        return c16518j.m17286s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b7, code lost:
        if (r6 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d0, code lost:
        if (r6 != null) goto L33;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m17286s(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1002k4.C16518j.m17286s(java.lang.Object):java.lang.Object");
    }
}
