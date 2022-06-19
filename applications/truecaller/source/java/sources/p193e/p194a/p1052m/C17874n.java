package p193e.p194a.p1052m;

import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import p193e.p194a.p1052m.C17844a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.m.n */
/* loaded from: classes7-dex2jar.jar:e/a/m/n.class */
public final class C17874n extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C17844a.C17849e f50848b;

    /* renamed from: c */
    public final /* synthetic */ CharacterStyle f50849c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17874n(C17844a.C17849e c17849e, CharacterStyle characterStyle) {
        super(0);
        this.f50848b = c17849e;
        this.f50849c = characterStyle;
    }

    public Object invoke() {
        String url = ((URLSpan) this.f50849c).getURL();
        l.d(url, "style.url");
        ((C17882v) this.f50848b.f50825c).m15722x4(url);
        return s.a;
    }
}
