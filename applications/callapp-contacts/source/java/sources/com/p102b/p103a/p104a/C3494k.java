package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16221a;
import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import okhttp3.internal.p578ws.WebSocketProtocol;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.k */
/* loaded from: classes-dex2jar.jar:com/b/a/a/k.class */
public class C3494k extends AbstractC16221a {

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f13251d = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f13252e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f13253f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f13254g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f13255h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f13256i = null;

    /* renamed from: a */
    private String f13257a;

    /* renamed from: b */
    private long f13258b;

    /* renamed from: c */
    private List<String> f13259c;

    static {
        m37889a();
    }

    public C3494k() {
        super("ftyp");
        this.f13259c = Collections.emptyList();
    }

    public C3494k(String str, long j, List<String> list) {
        super("ftyp");
        this.f13259c = Collections.emptyList();
        this.f13257a = str;
        this.f13258b = j;
        this.f13259c = list;
    }

    /* renamed from: a */
    private static void m37889a() {
        C20987b c20987b = new C20987b("FileTypeBox.java", C3494k.class);
        f13251d = c20987b.m164a("method-execution", c20987b.m165a("1", "getMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.lang.String"), 85);
        f13252e = c20987b.m164a("method-execution", c20987b.m165a("1", "setMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "java.lang.String", "majorBrand", "", "void"), 94);
        f13253f = c20987b.m164a("method-execution", c20987b.m165a("1", "setMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "long", "minorVersion", "", "void"), 103);
        f13254g = c20987b.m164a("method-execution", c20987b.m165a("1", "getMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "long"), 113);
        f13255h = c20987b.m164a("method-execution", c20987b.m165a("1", "getCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.util.List"), 122);
        f13256i = c20987b.m164a("method-execution", c20987b.m165a("1", "setCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "java.util.List", "compatibleBrands", "", "void"), WebSocketProtocol.PAYLOAD_SHORT);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        this.f13257a = C3515e.m37843h(byteBuffer);
        this.f13258b = C3515e.m37851a(byteBuffer);
        int remaining = byteBuffer.remaining() / 4;
        this.f13259c = new LinkedList();
        for (int i = 0; i < remaining; i++) {
            this.f13259c.add(C3515e.m37843h(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        byteBuffer.put(C3514d.m37853a(this.f13257a));
        C3516f.m37835b(byteBuffer, this.f13258b);
        for (String str : this.f13259c) {
            byteBuffer.put(C3514d.m37853a(str));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (this.f13259c.size() * 4) + 8;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FileTypeBox[");
        sb.append("majorBrand=");
        AbstractC20997a m163a = C20987b.m163a(f13251d, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        sb.append(this.f13257a);
        sb.append(";");
        sb.append("minorVersion=");
        AbstractC20997a m163a2 = C20987b.m163a(f13254g, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13258b);
        for (String str : this.f13259c) {
            sb.append(";");
            sb.append("compatibleBrand=");
            sb.append(str);
        }
        sb.append("]");
        return sb.toString();
    }
}
