package p193e.p194a.p195a.p284w0;

import com.truecaller.messaging.conversation.richtext.FormattingStyle;
import java.util.Map;
import p193e.p194a.p195a.p200c.p219p8.AbstractC5659a;
import s1.z.c.a0;
import s1.z.c.l;
/* renamed from: e.a.a.w0.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/w0/b.class */
public final class C7291b implements AbstractC5659a {

    /* renamed from: a */
    public final /* synthetic */ Map f23270a;

    /* renamed from: b */
    public final /* synthetic */ a0 f23271b;

    public C7291b(Map map, a0 a0Var) {
        this.f23270a = map;
        this.f23271b = a0Var;
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: a */
    public void mo29849a(int i, int i2, int i3) {
        this.f23271b.a++;
    }

    @Override // p193e.p194a.p195a.p200c.p219p8.AbstractC5659a
    /* renamed from: b */
    public void mo29848b(FormattingStyle formattingStyle, int i, int i2) {
        l.e(formattingStyle, "style");
        Map map = this.f23270a;
        Integer num = (Integer) map.get(formattingStyle);
        map.put(formattingStyle, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
    }
}
