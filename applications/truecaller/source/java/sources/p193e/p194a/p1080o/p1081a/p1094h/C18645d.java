package p193e.p194a.p1080o.p1081a.p1094h;

import android.content.Context;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import com.truecaller.contextcall.C3771R;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1136w0.C19348b;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.a.h.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/h/d.class */
public final class C18645d extends m implements p<CharacterStyle, Integer, CharacterStyle> {

    /* renamed from: b */
    public final /* synthetic */ C18639b f52465b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18645d(C18639b c18639b) {
        super(2);
        this.f52465b = c18639b;
    }

    /* renamed from: k */
    public Object m14678k(Object obj, Object obj2) {
        CharacterStyle characterStyle = (CharacterStyle) obj;
        ((Number) obj2).intValue();
        l.e(characterStyle, "style");
        C19348b c19348b = characterStyle;
        if (characterStyle instanceof URLSpan) {
            Context requireContext = this.f52465b.requireContext();
            int i = C3771R.color.context_call_link;
            Object obj3 = C26467a.f74235a;
            c19348b = new C19348b(C26467a.C26471d.m1787a(requireContext, i), new C18644c(this, characterStyle));
        }
        return c19348b;
    }
}
