package com.b.a.a;

import com.b.a.d;
import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/m.class */
public class m extends c {

    /* renamed from: a  reason: collision with root package name */
    public static final Map<String, String> f7129a;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7130c = null;
    private static final a.AbstractC0755a j = null;
    private static final a.AbstractC0755a k = null;
    private static final a.AbstractC0755a l = null;
    private static final a.AbstractC0755a m = null;
    private static final a.AbstractC0755a n = null;

    /* renamed from: b  reason: collision with root package name */
    public String f7131b;
    private long e;
    private long f;
    private long g;
    private long i;

    /* renamed from: d  reason: collision with root package name */
    private String f7132d = null;
    private boolean h = true;

    static {
        b();
        HashMap hashMap = new HashMap();
        hashMap.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("mdir", "Apple Meta Data iTunes Reader");
        hashMap.put("mp7b", "MPEG-7 binary XML");
        hashMap.put("mp7t", "MPEG-7 XML");
        hashMap.put("vide", "Video Track");
        hashMap.put("soun", "Sound Track");
        hashMap.put("hint", "Hint Track");
        hashMap.put("appl", "Apple specific");
        hashMap.put("meta", "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        f7129a = Collections.unmodifiableMap(hashMap);
    }

    public m() {
        super("hdlr");
    }

    private static void b() {
        b bVar = new b("HandlerBox.java", m.class);
        j = bVar.a("method-execution", bVar.a("1", "getHandlerType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 78);
        k = bVar.a("method-execution", bVar.a("1", "setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", "", "void"), 87);
        f7130c = bVar.a("method-execution", bVar.a("1", "setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", "", "void"), 91);
        l = bVar.a("method-execution", bVar.a("1", "getName", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 95);
        m = bVar.a("method-execution", bVar.a("1", "getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 99);
        n = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 149);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.i = e.a(byteBuffer);
        this.f7131b = e.h(byteBuffer);
        this.e = e.a(byteBuffer);
        this.f = e.a(byteBuffer);
        this.g = e.a(byteBuffer);
        if (byteBuffer.remaining() > 0) {
            String a2 = e.a(byteBuffer, byteBuffer.remaining());
            this.f7132d = a2;
            if (a2.endsWith("��")) {
                String str = this.f7132d;
                this.f7132d = str.substring(0, str.length() - 1);
                this.h = true;
                return;
            }
            this.h = false;
            return;
        }
        this.h = false;
    }

    public final String a() {
        a a2 = b.a(j, this, this);
        h.a();
        h.a(a2);
        return this.f7131b;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.i);
        byteBuffer.put(d.a(this.f7131b));
        f.b(byteBuffer, this.e);
        f.b(byteBuffer, this.f);
        f.b(byteBuffer, this.g);
        String str = this.f7132d;
        if (str != null) {
            byteBuffer.put(com.b.a.h.a(str));
        }
        if (this.h) {
            byteBuffer.put((byte) 0);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return this.h ? com.b.a.h.b(this.f7132d) + 25 : com.b.a.h.b(this.f7132d) + 24;
    }

    public String toString() {
        a a2 = b.a(n, this, this);
        h.a();
        h.a(a2);
        StringBuilder sb = new StringBuilder("HandlerBox[handlerType=");
        sb.append(a());
        sb.append(";name=");
        a a3 = b.a(l, this, this);
        h.a();
        h.a(a3);
        sb.append(this.f7132d);
        sb.append("]");
        return sb.toString();
    }
}
