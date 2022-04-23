package com.b.a.a;

import com.b.a.d;
import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.a;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/k.class */
public class k extends a {

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f7125d = null;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;

    /* renamed from: a  reason: collision with root package name */
    private String f7126a;

    /* renamed from: b  reason: collision with root package name */
    private long f7127b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f7128c;

    static {
        a();
    }

    public k() {
        super("ftyp");
        this.f7128c = Collections.emptyList();
    }

    public k(String str, long j, List<String> list) {
        super("ftyp");
        this.f7128c = Collections.emptyList();
        this.f7126a = str;
        this.f7127b = j;
        this.f7128c = list;
    }

    private static void a() {
        b bVar = new b("FileTypeBox.java", k.class);
        f7125d = bVar.a("method-execution", bVar.a("1", "getMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.lang.String"), 85);
        e = bVar.a("method-execution", bVar.a("1", "setMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "java.lang.String", "majorBrand", "", "void"), 94);
        f = bVar.a("method-execution", bVar.a("1", "setMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "long", "minorVersion", "", "void"), 103);
        g = bVar.a("method-execution", bVar.a("1", "getMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "long"), 113);
        h = bVar.a("method-execution", bVar.a("1", "getCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.util.List"), 122);
        i = bVar.a("method-execution", bVar.a("1", "setCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "java.util.List", "compatibleBrands", "", "void"), WebSocketProtocol.PAYLOAD_SHORT);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        this.f7126a = e.h(byteBuffer);
        this.f7127b = e.a(byteBuffer);
        int remaining = byteBuffer.remaining() / 4;
        this.f7128c = new LinkedList();
        for (int i2 = 0; i2 < remaining; i2++) {
            this.f7128c.add(e.h(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        byteBuffer.put(d.a(this.f7126a));
        f.b(byteBuffer, this.f7127b);
        for (String str : this.f7128c) {
            byteBuffer.put(d.a(str));
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (this.f7128c.size() * 4) + 8;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FileTypeBox[");
        sb.append("majorBrand=");
        org.mp4parser.aspectj.lang.a a2 = b.a(f7125d, this, this);
        h.a();
        h.a(a2);
        sb.append(this.f7126a);
        sb.append(";");
        sb.append("minorVersion=");
        org.mp4parser.aspectj.lang.a a3 = b.a(g, this, this);
        h.a();
        h.a(a3);
        sb.append(this.f7127b);
        for (String str : this.f7128c) {
            sb.append(";");
            sb.append("compatibleBrand=");
            sb.append(str);
        }
        sb.append("]");
        return sb.toString();
    }
}
