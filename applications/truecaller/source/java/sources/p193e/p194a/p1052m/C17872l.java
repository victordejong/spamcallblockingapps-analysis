package p193e.p194a.p1052m;

import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import p193e.p194a.p1052m.C17844a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.m.l */
/* loaded from: classes7-dex2jar.jar:e/a/m/l.class */
public final class C17872l extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C17844a.C17847c f50844b;

    /* renamed from: c */
    public final /* synthetic */ CharacterStyle f50845c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17872l(C17844a.C17847c c17847c, CharacterStyle characterStyle) {
        super(0);
        this.f50844b = c17847c;
        this.f50845c = characterStyle;
    }

    public Object invoke() {
        String url = ((URLSpan) this.f50845c).getURL();
        l.d(url, "style.url");
        ((C17882v) this.f50844b.f50821c).m15722x4(url);
        return s.a;
    }
}
