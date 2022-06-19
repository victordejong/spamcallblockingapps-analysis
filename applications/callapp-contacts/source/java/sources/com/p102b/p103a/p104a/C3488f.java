package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.f */
/* loaded from: classes-dex2jar.jar:com/b/a/a/f.class */
public class C3488f extends AbstractC16280c {

    /* renamed from: a */
    private static final AbstractC20997a.AbstractC20998a f13240a = null;

    static {
        m37891a();
    }

    public C3488f() {
        super("url ");
    }

    /* renamed from: a */
    private static void m37891a() {
        C20987b c20987b = new C20987b("DataEntryUrlBox.java", C3488f.class);
        f13240a = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.DataEntryUrlBox", "", "", "", "java.lang.String"), 51);
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
        AbstractC20997a m163a = C20987b.m163a(f13240a, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return "DataEntryUrlBox[]";
    }
}
