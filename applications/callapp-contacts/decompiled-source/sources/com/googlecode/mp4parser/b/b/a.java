package com.googlecode.mp4parser.b.b;

import com.googlecode.mp4parser.b.b.a.b;
import com.googlecode.mp4parser.b.b.a.l;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a.class */
public class a extends c {

    /* renamed from: c  reason: collision with root package name */
    private static Logger f33093c = Logger.getLogger(a.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f33094d = null;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;

    /* renamed from: a  reason: collision with root package name */
    protected b f33095a;

    /* renamed from: b  reason: collision with root package name */
    protected ByteBuffer f33096b;

    static {
        b();
    }

    public a(String str) {
        super(str);
    }

    private static void b() {
        org.mp4parser.aspectj.a.b.b bVar = new org.mp4parser.aspectj.a.b.b("AbstractDescriptorBox.java", a.class);
        f33094d = bVar.a("method-execution", bVar.a("1", "getData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.nio.ByteBuffer"), 42);
        e = bVar.a("method-execution", bVar.a("1", "setData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "java.nio.ByteBuffer", "data", "", "void"), 46);
        f = bVar.a("method-execution", bVar.a("1", "getDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"), 62);
        g = bVar.a("method-execution", bVar.a("1", "setDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor", "descriptor", "", "void"), 66);
        h = bVar.a("method-execution", bVar.a("1", "getDescriptorAsString", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.lang.String"), 70);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f33096b = byteBuffer.slice();
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
        try {
            this.f33096b.rewind();
            this.f33095a = l.a(-1, this.f33096b.duplicate());
        } catch (IOException e2) {
            f33093c.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e2);
        } catch (IndexOutOfBoundsException e3) {
            f33093c.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e3);
        }
    }

    public final b a() {
        org.mp4parser.aspectj.lang.a a2 = org.mp4parser.aspectj.a.b.b.a(f, this, this);
        h.a();
        h.a(a2);
        return this.f33095a;
    }

    public final void a(b bVar) {
        org.mp4parser.aspectj.lang.a a2 = org.mp4parser.aspectj.a.b.b.a(g, this, this, bVar);
        h.a();
        h.a(a2);
        this.f33095a = bVar;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        this.f33096b.rewind();
        byteBuffer.put(this.f33096b);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return this.f33096b.limit() + 4;
    }
}
