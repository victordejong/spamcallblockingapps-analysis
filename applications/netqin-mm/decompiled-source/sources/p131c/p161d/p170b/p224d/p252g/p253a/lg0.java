package p131c.p161d.p170b.p224d.p252g.p253a;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
/* renamed from: c.d.b.d.g.a.lg0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/lg0.class */
public final class lg0 extends PushbackInputStream {

    /* renamed from: a */
    public final /* synthetic */ kg0 f13968a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lg0(kg0 kg0Var, InputStream inputStream, int i) {
        super(inputStream, 1);
        this.f13968a = kg0Var;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            this.f13968a.f13885c.m11435a();
            super.close();
        }
    }
}
