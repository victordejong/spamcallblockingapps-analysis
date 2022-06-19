package p193e.p194a.p1129p5.p1132s0;

import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.p5.s0.s */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/s.class */
public final class C19307s extends m implements p<CharacterStyle, Integer, CharacterStyle> {

    /* renamed from: b */
    public final /* synthetic */ l f53739b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19307s(l lVar) {
        super(2);
        this.f53739b = lVar;
    }

    /* renamed from: k */
    public Object m13481k(Object obj, Object obj2) {
        CharacterStyle characterStyle = (CharacterStyle) obj;
        ((Number) obj2).intValue();
        s1.z.c.l.e(characterStyle, "style");
        C19306r c19306r = characterStyle;
        if (characterStyle instanceof URLSpan) {
            c19306r = new C19306r(this, characterStyle);
        }
        return c19306r;
    }
}
