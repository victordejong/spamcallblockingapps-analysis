package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.C3518h;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.m */
/* loaded from: classes-dex2jar.jar:com/b/a/a/m.class */
public class C3496m extends AbstractC16280c {

    /* renamed from: a */
    public static final Map<String, String> f13260a;

    /* renamed from: c */
    public static final AbstractC20997a.AbstractC20998a f13261c = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f13262j = null;

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f13263k = null;

    /* renamed from: l */
    private static final AbstractC20997a.AbstractC20998a f13264l = null;

    /* renamed from: m */
    private static final AbstractC20997a.AbstractC20998a f13265m = null;

    /* renamed from: n */
    private static final AbstractC20997a.AbstractC20998a f13266n = null;

    /* renamed from: b */
    public String f13267b;

    /* renamed from: e */
    private long f13269e;

    /* renamed from: f */
    private long f13270f;

    /* renamed from: g */
    private long f13271g;

    /* renamed from: i */
    private long f13273i;

    /* renamed from: d */
    private String f13268d = null;

    /* renamed from: h */
    private boolean f13272h = true;

    static {
        m37887b();
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
        f13260a = Collections.unmodifiableMap(hashMap);
    }

    public C3496m() {
        super("hdlr");
    }

    /* renamed from: b */
    private static void m37887b() {
        C20987b c20987b = new C20987b("HandlerBox.java", C3496m.class);
        f13262j = c20987b.m164a("method-execution", c20987b.m165a("1", "getHandlerType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 78);
        f13263k = c20987b.m164a("method-execution", c20987b.m165a("1", "setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", "", "void"), 87);
        f13261c = c20987b.m164a("method-execution", c20987b.m165a("1", "setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", "", "void"), 91);
        f13264l = c20987b.m164a("method-execution", c20987b.m165a("1", "getName", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 95);
        f13265m = c20987b.m164a("method-execution", c20987b.m165a("1", "getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 99);
        f13266n = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 149);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13273i = C3515e.m37851a(byteBuffer);
        this.f13267b = C3515e.m37843h(byteBuffer);
        this.f13269e = C3515e.m37851a(byteBuffer);
        this.f13270f = C3515e.m37851a(byteBuffer);
        this.f13271g = C3515e.m37851a(byteBuffer);
        if (byteBuffer.remaining() <= 0) {
            this.f13272h = false;
            return;
        }
        String m37850a = C3515e.m37850a(byteBuffer, byteBuffer.remaining());
        this.f13268d = m37850a;
        if (!m37850a.endsWith("��")) {
            this.f13272h = false;
            return;
        }
        String str = this.f13268d;
        this.f13268d = str.substring(0, str.length() - 1);
        this.f13272h = true;
    }

    /* renamed from: a */
    public final String m37888a() {
        AbstractC20997a m163a = C20987b.m163a(f13262j, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13267b;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13273i);
        byteBuffer.put(C3514d.m37853a(this.f13267b));
        C3516f.m37835b(byteBuffer, this.f13269e);
        C3516f.m37835b(byteBuffer, this.f13270f);
        C3516f.m37835b(byteBuffer, this.f13271g);
        String str = this.f13268d;
        if (str != null) {
            byteBuffer.put(C3518h.m37829a(str));
        }
        if (this.f13272h) {
            byteBuffer.put((byte) 0);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return this.f13272h ? C3518h.m37827b(this.f13268d) + 25 : C3518h.m37827b(this.f13268d) + 24;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13266n, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder("HandlerBox[handlerType=");
        sb.append(m37888a());
        sb.append(";name=");
        AbstractC20997a m163a2 = C20987b.m163a(f13264l, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13268d);
        sb.append("]");
        return sb.toString();
    }
}
