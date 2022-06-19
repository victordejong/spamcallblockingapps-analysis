package p193e.p194a.p1080o.p1081a.p1094h;

import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.a.h.c */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/h/c.class */
public final class C18644c extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C18645d f52463b;

    /* renamed from: c */
    public final /* synthetic */ CharacterStyle f52464c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18644c(C18645d c18645d, CharacterStyle characterStyle) {
        super(0);
        this.f52463b = c18645d;
        this.f52464c = characterStyle;
    }

    public Object invoke() {
        AbstractC18646e abstractC18646e = this.f52463b.f52465b.f52458e;
        if (abstractC18646e == null) {
            l.l("presenter");
            throw null;
        }
        String url = ((URLSpan) this.f52464c).getURL();
        l.d(url, "style.url");
        abstractC18646e.mo14669D(url);
        return s.a;
    }
}
