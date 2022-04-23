package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/aa.class */
public class aa extends a {

    /* renamed from: b  reason: collision with root package name */
    private static final a.AbstractC0755a f7057b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0755a f7058c = null;

    /* renamed from: a  reason: collision with root package name */
    private float f7059a;

    static {
        a();
    }

    public aa() {
        super("smhd");
    }

    private static void a() {
        b bVar = new b("SoundMediaHeaderBox.java", aa.class);
        f7057b = bVar.a("method-execution", bVar.a("1", "getBalance", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "float"), 36);
        f7058c = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "java.lang.String"), 58);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f7059a = e.g(byteBuffer);
        e.c(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.c(byteBuffer, this.f7059a);
        f.b(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return 8L;
    }

    public String toString() {
        a a2 = b.a(f7058c, this, this);
        h.a();
        h.a(a2);
        StringBuilder sb = new StringBuilder("SoundMediaHeaderBox[balance=");
        a a3 = b.a(f7057b, this, this);
        h.a();
        h.a(a3);
        sb.append(this.f7059a);
        sb.append("]");
        return sb.toString();
    }
}
