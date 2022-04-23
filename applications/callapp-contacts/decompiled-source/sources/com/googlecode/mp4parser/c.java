package com.googlecode.mp4parser;

import com.b.a.a.l;
import com.b.a.e;
import com.b.a.f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c.class */
public abstract class c extends a implements l {

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0755a f33162c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f33163d = null;

    /* renamed from: a  reason: collision with root package name */
    private int f33164a;

    /* renamed from: b  reason: collision with root package name */
    private int f33165b;

    static {
        a();
    }

    public c(String str) {
        super(str);
    }

    protected c(String str, byte[] bArr) {
        super(str, bArr);
    }

    private static void a() {
        b bVar = new b("AbstractFullBox.java", c.class);
        f33162c = bVar.a("method-execution", bVar.a("1", "setVersion", "com.googlecode.mp4parser.AbstractFullBox", "int", "version", "", "void"), 51);
        f33163d = bVar.a("method-execution", bVar.a("1", "setFlags", "com.googlecode.mp4parser.AbstractFullBox", "int", "flags", "", "void"), 64);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long a(ByteBuffer byteBuffer) {
        this.f33164a = e.a(byteBuffer.get());
        this.f33165b = e.b(byteBuffer);
        return 4L;
    }

    public final void b(int i) {
        a a2 = b.a(f33162c, this, this, Integer.valueOf(i));
        h.a();
        h.a(a2);
        this.f33164a = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(ByteBuffer byteBuffer) {
        f.c(byteBuffer, this.f33164a);
        f.a(byteBuffer, this.f33165b);
    }

    public final void c(int i) {
        a a2 = b.a(f33163d, this, this, Integer.valueOf(i));
        h.a();
        h.a(a2);
        this.f33165b = i;
    }

    public final int h() {
        if (!this.isParsed) {
            parseDetails();
        }
        return this.f33164a;
    }

    public final int i() {
        if (!this.isParsed) {
            parseDetails();
        }
        return this.f33165b;
    }
}
