package p193e.p194a.p294b.p295a.p325h.p327b;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import com.truecaller.placepicker.data.GeocodedPlace;
import javax.inject.Inject;
import p1727n3.p1868v.AbstractC27005g0;
import p193e.p194a.p1002k4.p1004o.AbstractC16538g;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p295a.p322f.AbstractC7795f;
import p193e.p194a.p294b.p295a.p324g.AbstractC7809g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b.a.h.b.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/b/b.class */
public final class C7817b implements AbstractC7816a {

    /* renamed from: a */
    public final AbstractC16538g f24330a;

    /* renamed from: b */
    public final AbstractC7795f f24331b;

    /* renamed from: c */
    public final AbstractC19223c0 f24332c;

    /* renamed from: d */
    public final AbstractC7809g f24333d;

    @e(c = "com.truecaller.bizmon.newBusiness.editAddress.model.SubPlaceRepositoryImpl$getPincodePlace$1", f = "SubPlaceRepositoryImpl.kt", l = {24, 26}, m = "invokeSuspend")
    /* renamed from: e.a.b.a.h.b.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/h/b/b$a.class */
    public static final class C7818a extends i implements p<AbstractC27005g0<GeocodedPlace>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f24334e;

        /* renamed from: f */
        public int f24335f;

        /* renamed from: h */
        public final /* synthetic */ int f24337h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7818a(int i, d dVar) {
            super(2, dVar);
            C7817b.this = r5;
            this.f24337h = i;
        }

        /* renamed from: i */
        public final d<s> m29278i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C7818a c7818a = new C7818a(this.f24337h, dVar);
            c7818a.f24334e = obj;
            return c7818a;
        }

        /* renamed from: k */
        public final Object m29277k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C7818a c7818a = new C7818a(this.f24337h, dVar);
            c7818a.f24334e = obj;
            return c7818a.m29276s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00e7  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m29276s(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p325h.p327b.C7817b.C7818a.m29276s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C7817b(AbstractC16538g abstractC16538g, AbstractC7795f abstractC7795f, AbstractC19223c0 abstractC19223c0, AbstractC7809g abstractC7809g) {
        l.e(abstractC16538g, "placeRepository");
        l.e(abstractC7795f, "geolocationRepository");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC7809g, "dispacherProvider");
        this.f24330a = abstractC16538g;
        this.f24331b = abstractC7795f;
        this.f24332c = abstractC19223c0;
        this.f24333d = abstractC7809g;
    }

    @Override // p193e.p194a.p294b.p295a.p325h.p327b.AbstractC7816a
    /* renamed from: a */
    public LiveData<GeocodedPlace> mo29279a(int i) {
        return MediaSessionCompat.m43285M0(this.f24333d.mo29283a(), 0L, new C7818a(i, null), 2);
    }
}
