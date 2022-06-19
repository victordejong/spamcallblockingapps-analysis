package p193e.p194a.p1313v3.p1314c;

import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1313v3.AbstractC21011b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.v3.c.b */
/* loaded from: classes9-dex2jar.jar:e/a/v3/c/b.class */
public final class C21013b implements AbstractC21012a {

    /* renamed from: a */
    public final AbstractC21011b f59014a;

    /* renamed from: b */
    public final AbstractC19230g f59015b;

    /* renamed from: c */
    public final f f59016c;

    @e(c = "com.truecaller.feedback.network.FeedbackNetworkHelperImpl$feedback$2", f = "FeedbackNetworkHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v3.c.b$a */
    /* loaded from: classes9-dex2jar.jar:e/a/v3/c/b$a.class */
    public static final class C21014a extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: f */
        public final /* synthetic */ CharSequence f59018f;

        /* renamed from: g */
        public final /* synthetic */ CharSequence f59019g;

        /* renamed from: h */
        public final /* synthetic */ CharSequence f59020h;

        /* renamed from: i */
        public final /* synthetic */ CharSequence f59021i;

        /* renamed from: j */
        public final /* synthetic */ String f59022j;

        /* renamed from: k */
        public final /* synthetic */ String f59023k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21014a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, String str, String str2, d dVar) {
            super(2, dVar);
            C21013b.this = r5;
            this.f59018f = charSequence;
            this.f59019g = charSequence2;
            this.f59020h = charSequence3;
            this.f59021i = charSequence4;
            this.f59022j = str;
            this.f59023k = str2;
        }

        /* renamed from: i */
        public final d<s> m10419i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21014a(this.f59018f, this.f59019g, this.f59020h, this.f59021i, this.f59022j, this.f59023k, dVar);
        }

        /* renamed from: k */
        public final Object m10418k(Object obj, Object obj2) {
            return m10419i(obj, (d) obj2).m10417s(s.a);
        }

        /* renamed from: s */
        public final Object m10417s(Object obj) {
            C25225a.m3932a3(obj);
            try {
                return new Integer(C21015c.m10416a(this.f59018f, this.f59019g, this.f59020h, this.f59021i, this.f59022j, this.f59023k, C21013b.this.f59015b.mo13790g(), C21013b.this.f59014a, null).execute().a.e);
            } catch (IOException e) {
                return null;
            }
        }
    }

    @Inject
    public C21013b(AbstractC21011b abstractC21011b, AbstractC19230g abstractC19230g, @Named("IO") f fVar) {
        l.e(abstractC21011b, "appInfoProvider");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(fVar, "asyncContext");
        this.f59014a = abstractC21011b;
        this.f59015b = abstractC19230g;
        this.f59016c = fVar;
    }

    @Override // p193e.p194a.p1313v3.p1314c.AbstractC21012a
    /* renamed from: a */
    public Object mo10420a(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, String str, String str2, d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f59016c, new C21014a(charSequence, charSequence2, charSequence3, charSequence4, str, str2, null), dVar);
    }
}
