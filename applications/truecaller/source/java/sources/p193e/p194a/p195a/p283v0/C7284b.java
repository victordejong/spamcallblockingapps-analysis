package p193e.p194a.p195a.p283v0;

import com.truecaller.api.services.previews.p140v1.models.MediaPreview;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p244k.p245a.p248g2.AbstractC6559a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.linkpreviews.LinkMetaDataExtractorImpl$extractMetaDataInternal$preview$1", f = "LinkMetaDataExtractor.kt", l = {97}, m = "invokeSuspend")
/* renamed from: e.a.a.v0.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/v0/b.class */
public final class C7284b extends i implements p<i0, d<? super MediaPreview>, Object> {

    /* renamed from: e */
    public int f23255e;

    /* renamed from: f */
    public final /* synthetic */ C7285c f23256f;

    /* renamed from: g */
    public final /* synthetic */ String f23257g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7284b(C7285c c7285c, String str, d dVar) {
        super(2, dVar);
        this.f23256f = c7285c;
        this.f23257g = str;
    }

    /* renamed from: i */
    public final d<s> m29858i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7284b(this.f23256f, this.f23257g, dVar);
    }

    /* renamed from: k */
    public final Object m29857k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7284b(this.f23256f, this.f23257g, dVar).m29856s(s.a);
    }

    /* renamed from: s */
    public final Object m29856s(Object obj) {
        a aVar = a.a;
        int i = this.f23255e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6559a abstractC6559a = this.f23256f.f23260c;
            String str = this.f23257g;
            this.f23255e = 1;
            Object mo30766b = abstractC6559a.mo30766b(str, this);
            obj = mo30766b;
            if (mo30766b == aVar) {
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
