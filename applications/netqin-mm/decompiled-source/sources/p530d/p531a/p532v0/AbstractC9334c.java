package p530d.p531a.p532v0;
/* renamed from: d.a.v0.c */
/* loaded from: classes2-dex2jar.jar:d/a/v0/c.class */
public abstract class AbstractC9334c implements AbstractC9377i1 {
    /* renamed from: a */
    public final void m2912a(int i) {
        if (mo2358Y() < i) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final int readInt() {
        m2912a(4);
        return (readUnsignedByte() << 24) | (readUnsignedByte() << 16) | (readUnsignedByte() << 8) | readUnsignedByte();
    }
}
