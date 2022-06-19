package p193e.p194a.p1129p5.p1132s0;

import java.io.Closeable;
import java.io.IOException;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.p5.s0.h */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/h.class */
public final class C19293h extends m implements l<Throwable, s> {

    /* renamed from: b */
    public final /* synthetic */ Closeable f53708b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19293h(Closeable closeable) {
        super(1);
        this.f53708b = closeable;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0018 -> B:5:0x0014). Please submit an issue!!! */
    /* renamed from: d */
    public Object m13491d(Object obj) {
        Throwable th = (Throwable) obj;
        Closeable closeable = this.f53708b;
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
        return s.a;
    }
}
