package p193e.p194a.p1052m;

import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import p193e.p194a.p1052m.C17844a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.m.m */
/* loaded from: classes7-dex2jar.jar:e/a/m/m.class */
public final class C17873m extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C17844a.C17848d f50846b;

    /* renamed from: c */
    public final /* synthetic */ CharacterStyle f50847c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17873m(C17844a.C17848d c17848d, CharacterStyle characterStyle) {
        super(0);
        this.f50846b = c17848d;
        this.f50847c = characterStyle;
    }

    public Object invoke() {
        String url = ((URLSpan) this.f50847c).getURL();
        l.d(url, "style.url");
        ((C17882v) this.f50846b.f50823c).m15722x4(url);
        return s.a;
    }
}
