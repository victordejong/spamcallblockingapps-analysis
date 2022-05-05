package p645m;

import java.io.IOException;
/* renamed from: m.h */
/* loaded from: classes3-dex2jar.jar:m/h.class */
public abstract class AbstractC15177h implements AbstractC15193s {
    public final AbstractC15193s delegate;

    public AbstractC15177h(AbstractC15193s sVar) {
        if (sVar != null) {
            this.delegate = sVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final AbstractC15193s delegate() {
        return this.delegate;
    }

    @Override // p645m.AbstractC15193s
    public long read(C15170c cVar, long j) throws IOException {
        return this.delegate.read(cVar, j);
    }

    @Override // p645m.AbstractC15193s
    public C15194t timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}
