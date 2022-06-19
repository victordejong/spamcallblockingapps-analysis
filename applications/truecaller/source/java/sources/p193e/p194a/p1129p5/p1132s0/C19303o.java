package p193e.p194a.p1129p5.p1132s0;

import s1.s;
import s1.z.b.l;
import s1.z.c.m;
import u3.f;
/* renamed from: e.a.p5.s0.o */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/o.class */
public final class C19303o extends m implements l<Throwable, s> {

    /* renamed from: b */
    public final /* synthetic */ f f53734b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19303o(f fVar) {
        super(1);
        this.f53734b = fVar;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0012 -> B:4:0x000e). Please submit an issue!!! */
    /* renamed from: d */
    public Object m13482d(Object obj) {
        Throwable th = (Throwable) obj;
        try {
            this.f53734b.cancel();
        } catch (Throwable th2) {
        }
        return s.a;
    }
}
