package com.b.a.a;

import com.googlecode.mp4parser.h;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/c.class */
public abstract class c extends com.googlecode.mp4parser.c {

    /* renamed from: a  reason: collision with root package name */
    private static final a.AbstractC0755a f7094a = null;

    static {
        b();
    }

    public c(String str) {
        super(str);
    }

    private static void b() {
        b bVar = new b("ChunkOffsetBox.java", c.class);
        f7094a = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.ChunkOffsetBox", "", "", "", "java.lang.String"), 18);
    }

    public abstract void a(long[] jArr);

    public abstract long[] a();

    public String toString() {
        a a2 = b.a(f7094a, this, this);
        h.a();
        h.a(a2);
        return String.valueOf(getClass().getSimpleName()) + "[entryCount=" + a().length + "]";
    }
}
