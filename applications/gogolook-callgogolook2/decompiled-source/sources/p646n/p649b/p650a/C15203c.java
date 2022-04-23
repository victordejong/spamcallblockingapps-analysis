package p646n.p649b.p650a;

import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.tensorflow.lite.NativeInterpreterWrapper;
/* renamed from: n.b.a.c */
/* loaded from: classes3-dex2jar.jar:n/b/a/c.class */
public final class C15203c implements AutoCloseable {

    /* renamed from: a */
    public NativeInterpreterWrapper f33220a;

    /* renamed from: n.b.a.c$a */
    /* loaded from: classes3-dex2jar.jar:n/b/a/c$a.class */
    public static class C15204a {

        /* renamed from: b */
        public Boolean f33222b;

        /* renamed from: c */
        public Boolean f33223c;

        /* renamed from: d */
        public Boolean f33224d;

        /* renamed from: e */
        public Boolean f33225e;

        /* renamed from: a */
        public int f33221a = -1;

        /* renamed from: f */
        public final List<AbstractC15202b> f33226f = new ArrayList();
    }

    public C15203c(File file) {
        this(file, (C15204a) null);
    }

    public C15203c(File file, C15204a aVar) {
        this.f33220a = new NativeInterpreterWrapper(file.getAbsolutePath(), aVar);
    }

    public C15203c(ByteBuffer byteBuffer) {
        this(byteBuffer, (C15204a) null);
    }

    public C15203c(ByteBuffer byteBuffer, C15204a aVar) {
        this.f33220a = new NativeInterpreterWrapper(byteBuffer, aVar);
    }

    /* renamed from: a */
    public final void m244a() {
        if (this.f33220a == null) {
            throw new IllegalStateException("Internal error: The Interpreter has already been closed.");
        }
    }

    /* renamed from: a */
    public void m243a(Object[] objArr, Map<Integer, Object> map) {
        m244a();
        this.f33220a.m34a(objArr, map);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        NativeInterpreterWrapper nativeInterpreterWrapper = this.f33220a;
        if (nativeInterpreterWrapper != null) {
            nativeInterpreterWrapper.close();
            this.f33220a = null;
        }
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }
}
