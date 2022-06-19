package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.C3518h;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.z */
/* loaded from: classes-dex2jar.jar:com/b/a/a/z.class */
public class C3511z extends AbstractC16280c {

    /* renamed from: d */
    static final /* synthetic */ boolean f13370d = true;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f13371e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f13372f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f13373g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f13374h = null;

    /* renamed from: i */
    private static final AbstractC20997a.AbstractC20998a f13375i = null;

    /* renamed from: j */
    private static final AbstractC20997a.AbstractC20998a f13376j = null;

    /* renamed from: k */
    private static final AbstractC20997a.AbstractC20998a f13377k = null;

    /* renamed from: b */
    long f13379b;

    /* renamed from: a */
    String f13378a = "    ";

    /* renamed from: c */
    String f13380c = null;

    static {
        m37858b();
    }

    public C3511z() {
        super("schm");
    }

    /* renamed from: b */
    private static void m37858b() {
        C20987b c20987b = new C20987b("SchemeTypeBox.java", C3511z.class);
        f13371e = c20987b.m164a("method-execution", c20987b.m165a("1", "getSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 44);
        f13372f = c20987b.m164a("method-execution", c20987b.m165a("1", "getSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "long"), 48);
        f13373g = c20987b.m164a("method-execution", c20987b.m165a("1", "getSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 52);
        f13374h = c20987b.m164a("method-execution", c20987b.m165a("1", "setSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeType", "", "void"), 56);
        f13375i = c20987b.m164a("method-execution", c20987b.m165a("1", "setSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "int", "schemeVersion", "", "void"), 61);
        f13376j = c20987b.m164a("method-execution", c20987b.m165a("1", "setSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeUri", "", "void"), 65);
        f13377k = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 93);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13378a = C3515e.m37843h(byteBuffer);
        this.f13379b = C3515e.m37851a(byteBuffer);
        if ((m7518i() & 1) == 1) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                byte b = byteBuffer.get();
                if (b == 0) {
                    this.f13380c = C3518h.m37828a(byteArrayOutputStream.toByteArray());
                    return;
                }
                byteArrayOutputStream.write(b);
            }
        }
    }

    /* renamed from: a */
    public final String m37859a() {
        AbstractC20997a m163a = C20987b.m163a(f13371e, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13378a;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        byteBuffer.put(C3514d.m37853a(this.f13378a));
        C3516f.m37835b(byteBuffer, this.f13379b);
        if ((m7518i() & 1) == 1) {
            byteBuffer.put(C3518h.m37829a(this.f13380c));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return ((m7518i() & 1) == 1 ? C3518h.m37827b(this.f13380c) + 1 : 0) + 12;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13377k, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "Schema Type Box[schemeUri=" + this.f13380c + "; schemeType=" + this.f13378a + "; schemeVersion=" + this.f13379b + "; ]";
    }
}
