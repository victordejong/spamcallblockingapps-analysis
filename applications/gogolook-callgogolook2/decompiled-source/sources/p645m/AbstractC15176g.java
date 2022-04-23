package p645m;

import java.io.IOException;
/* renamed from: m.g */
/* loaded from: classes3-dex2jar.jar:m/g.class */
public abstract class AbstractC15176g implements AbstractC15192r {
    public final AbstractC15192r delegate;

    public AbstractC15176g(AbstractC15192r rVar) {
        if (rVar != null) {
            this.delegate = rVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override // p645m.AbstractC15192r, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // p645m.AbstractC15192r
    public C15194t timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }

    @Override // p645m.AbstractC15192r
    public void write(C15170c cVar, long j) throws IOException {
        this.delegate.write(cVar, j);
    }
}
