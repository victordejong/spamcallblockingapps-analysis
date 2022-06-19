package p1727n3.p1751c0;

import java.io.IOException;
import java.util.Objects;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
/* renamed from: n3.c0.b */
/* loaded from: classes-dex2jar.jar:n3/c0/b.class */
public final class C25643b implements AbstractC26148c, AbstractC25661i {

    /* renamed from: a */
    public final AbstractC26148c f71832a;

    /* renamed from: b */
    public final C25644a f71833b;

    /* renamed from: n3.c0.b$a */
    /* loaded from: classes-dex2jar.jar:n3/c0/b$a.class */
    public static final class C25644a implements AbstractC26147b {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw null;
        }
    }

    @Override // p1727n3.p1751c0.AbstractC25661i
    /* renamed from: b */
    public AbstractC26148c mo3082b() {
        return this.f71832a;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f71833b.close();
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public String getDatabaseName() {
        return this.f71832a.getDatabaseName();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public AbstractC26147b getWritableDatabase() {
        Objects.requireNonNull(this.f71833b);
        throw null;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.f71832a.setWriteAheadLoggingEnabled(z);
    }
}
