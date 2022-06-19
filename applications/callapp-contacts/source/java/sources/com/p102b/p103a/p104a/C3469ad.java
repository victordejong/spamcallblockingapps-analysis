package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.C16297h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.ad */
/* loaded from: classes-dex2jar.jar:com/b/a/a/ad.class */
public class C3469ad extends AbstractC3455a {

    /* renamed from: a */
    private static final AbstractC20997a.AbstractC20998a f13140a = null;

    static {
        m37912a();
    }

    public C3469ad() {
        super("sthd");
    }

    /* renamed from: a */
    private static void m37912a() {
        C20987b c20987b = new C20987b("SubtitleMediaHeaderBox.java", C3469ad.class);
        f13140a = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SubtitleMediaHeaderBox", "", "", "", "java.lang.String"), 30);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return 4L;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13140a, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "SubtitleMediaHeaderBox";
    }
}
