package p193e.p194a.p195a.p200c;

import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Message;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.j3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/j3.class */
public final class C5400j3 extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C5373i3 f18486b;

    /* renamed from: c */
    public final /* synthetic */ Message f18487c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5400j3(C5373i3 c5373i3, Message message) {
        super(1);
        this.f18486b = c5373i3;
        this.f18487c = message;
    }

    /* renamed from: d */
    public Object m33175d(Object obj) {
        AbstractC5522m3 abstractC5522m3;
        if (((Boolean) obj).booleanValue() && (abstractC5522m3 = (AbstractC5522m3) this.f18486b.f57683a) != null) {
            if (abstractC5522m3 != null) {
                abstractC5522m3.mo32353a(C2752R.string.ConversationDownloadCompleted);
            }
            C5373i3 c5373i3 = this.f18486b;
            d.w2(c5373i3, c5373i3.f18374i, (j0) null, new C5480l3(c5373i3, this.f18487c, null), 2, (Object) null);
        }
        return s.a;
    }
}
