package p193e.p194a.p195a.p224d.p225a;

import android.net.Uri;
import com.truecaller.messaging.data.types.ImGroupInfo;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$editImGroup$1", f = "NewImGroupPresenter.kt", l = {197}, m = "invokeSuspend")
/* renamed from: e.a.a.d.a.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/k.class */
public final class C5891k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f19668e;

    /* renamed from: f */
    public final /* synthetic */ C5893m f19669f;

    /* renamed from: g */
    public final /* synthetic */ String f19670g;

    /* renamed from: h */
    public final /* synthetic */ String f19671h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5891k(C5893m c5893m, String str, String str2, d dVar) {
        super(2, dVar);
        this.f19669f = c5893m;
        this.f19670g = str;
        this.f19671h = str2;
    }

    /* renamed from: i */
    public final d<s> m32280i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5891k(this.f19669f, this.f19670g, this.f19671h, dVar);
    }

    /* renamed from: k */
    public final Object m32279k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5891k(this.f19669f, this.f19670g, this.f19671h, dVar).m32278s(s.a);
    }

    /* renamed from: s */
    public final Object m32278s(Object obj) {
        String str;
        C5893m c5893m;
        Uri uri;
        a aVar = a.a;
        int i = this.f19668e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!this.f19669f.m32261Vj() || (uri = (c5893m = this.f19669f).f19675h) == null) {
                C5893m c5893m2 = this.f19669f;
                if (c5893m2.f19675h == null) {
                    str = null;
                } else {
                    ImGroupInfo imGroupInfo = c5893m2.f19658e;
                    str = null;
                    if (imGroupInfo != null) {
                        str = imGroupInfo.f13321c;
                    }
                }
                C5893m c5893m3 = this.f19669f;
                c5893m3.f19679l.mo11854a().mo30882r(this.f19670g, this.f19671h, str).mo11830e(c5893m3.f19678k, new C5900o(new C5890j(c5893m3)));
                return s.a;
            }
            this.f19668e = 1;
            Object m32263Tj = c5893m.m32263Tj(uri, this);
            obj = m32263Tj;
            if (m32263Tj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        str = (String) obj;
        C5893m c5893m32 = this.f19669f;
        c5893m32.f19679l.mo11854a().mo30882r(this.f19670g, this.f19671h, str).mo11830e(c5893m32.f19678k, new C5900o(new C5890j(c5893m32)));
        return s.a;
    }
}
