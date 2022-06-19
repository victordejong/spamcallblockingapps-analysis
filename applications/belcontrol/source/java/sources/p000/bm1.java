package p000;

import java.io.Closeable;
import java.util.Objects;
import javax.annotation.Nullable;
/* renamed from: bm1 */
/* loaded from: classes3-dex2jar.jar:bm1.class */
public abstract class bm1 implements Closeable {

    /* renamed from: bm1$a */
    /* loaded from: classes3-dex2jar.jar:bm1$a.class */
    public class C0254a extends bm1 {

        /* renamed from: a */
        public final /* synthetic */ long f1991a;

        /* renamed from: b */
        public final /* synthetic */ em1 f1992b;

        public C0254a(xl1 xl1Var, long j, em1 em1Var) {
            this.f1991a = j;
            this.f1992b = em1Var;
        }

        @Override // p000.bm1
        /* renamed from: g */
        public em1 mo5603g() {
            return this.f1992b;
        }
    }

    /* renamed from: a */
    public static bm1 m5605a(@Nullable xl1 xl1Var, long j, em1 em1Var) {
        Objects.requireNonNull(em1Var, "source == null");
        return new C0254a(xl1Var, j, em1Var);
    }

    /* renamed from: e */
    public static bm1 m5604e(@Nullable xl1 xl1Var, byte[] bArr) {
        dm1 dm1Var = new dm1();
        dm1Var.m2488D(bArr);
        return m5605a(xl1Var, bArr.length, dm1Var);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        cm1.m5301c(mo5603g());
    }

    /* renamed from: g */
    public abstract em1 mo5603g();
}
