package p193e.p194a.p1011l.p1012a;

import s1.z.b.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.l.a.a0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/a0.class */
public final class C16558a0 extends m implements l<Long, String> {

    /* renamed from: b */
    public static final C16558a0 f46545b = new C16558a0();

    public C16558a0() {
        super(1);
    }

    /* renamed from: a */
    public final String m17248a(long j) {
        String str;
        b bVar = new b(j);
        if (bVar.j()) {
            str = bVar + ", is before current time on the device (" + new b() + ')';
        } else {
            str = bVar + ", is after current time on the device (" + new b() + ')';
        }
        return str;
    }

    /* renamed from: d */
    public /* bridge */ /* synthetic */ Object m17247d(Object obj) {
        return m17248a(((Number) obj).longValue());
    }
}
