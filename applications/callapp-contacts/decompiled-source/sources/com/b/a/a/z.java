package com.b.a.a;

import com.b.a.d;
import com.b.a.e;
import com.b.a.f;
import com.b.a.h;
import com.googlecode.mp4parser.c;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/z.class */
public class z extends c {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f7164d = true;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;
    private static final a.AbstractC0755a j = null;
    private static final a.AbstractC0755a k = null;

    /* renamed from: b  reason: collision with root package name */
    long f7166b;

    /* renamed from: a  reason: collision with root package name */
    String f7165a = "    ";

    /* renamed from: c  reason: collision with root package name */
    String f7167c = null;

    static {
        b();
    }

    public z() {
        super("schm");
    }

    private static void b() {
        b bVar = new b("SchemeTypeBox.java", z.class);
        e = bVar.a("method-execution", bVar.a("1", "getSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 44);
        f = bVar.a("method-execution", bVar.a("1", "getSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "long"), 48);
        g = bVar.a("method-execution", bVar.a("1", "getSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 52);
        h = bVar.a("method-execution", bVar.a("1", "setSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeType", "", "void"), 56);
        i = bVar.a("method-execution", bVar.a("1", "setSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "int", "schemeVersion", "", "void"), 61);
        j = bVar.a("method-execution", bVar.a("1", "setSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeUri", "", "void"), 65);
        k = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 93);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f7165a = e.h(byteBuffer);
        this.f7166b = e.a(byteBuffer);
        if ((i() & 1) == 1) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                byte b2 = byteBuffer.get();
                if (b2 == 0) {
                    this.f7167c = h.a(byteArrayOutputStream.toByteArray());
                    return;
                }
                byteArrayOutputStream.write(b2);
            }
        }
    }

    public final String a() {
        a a2 = b.a(e, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return this.f7165a;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        byteBuffer.put(d.a(this.f7165a));
        f.b(byteBuffer, this.f7166b);
        if ((i() & 1) == 1) {
            byteBuffer.put(h.a(this.f7167c));
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return ((i() & 1) == 1 ? h.b(this.f7167c) + 1 : 0) + 12;
    }

    public String toString() {
        a a2 = b.a(k, this, this);
        com.googlecode.mp4parser.h.a();
        com.googlecode.mp4parser.h.a(a2);
        return "Schema Type Box[schemeUri=" + this.f7167c + "; schemeType=" + this.f7165a + "; schemeVersion=" + this.f7166b + "; ]";
    }
}
