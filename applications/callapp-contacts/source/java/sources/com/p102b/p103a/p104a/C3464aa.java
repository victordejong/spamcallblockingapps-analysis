package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.C16297h;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.aa */
/* loaded from: classes-dex2jar.jar:com/b/a/a/aa.class */
public class C3464aa extends AbstractC3455a {

    /* renamed from: b */
    private static final AbstractC20997a.AbstractC20998a f13124b = null;

    /* renamed from: c */
    private static final AbstractC20997a.AbstractC20998a f13125c = null;

    /* renamed from: a */
    private float f13126a;

    static {
        m37916a();
    }

    public C3464aa() {
        super("smhd");
    }

    /* renamed from: a */
    private static void m37916a() {
        C20987b c20987b = new C20987b("SoundMediaHeaderBox.java", C3464aa.class);
        f13124b = c20987b.m164a("method-execution", c20987b.m165a("1", "getBalance", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "float"), 36);
        f13125c = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "java.lang.String"), 58);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f13126a = C3515e.m37844g(byteBuffer);
        C3515e.m37848c(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37833c(byteBuffer, this.f13126a);
        C3516f.m37836b(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return 8L;
    }

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13125c, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        StringBuilder sb = new StringBuilder("SoundMediaHeaderBox[balance=");
        AbstractC20997a m163a2 = C20987b.m163a(f13124b, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a2);
        sb.append(this.f13126a);
        sb.append("]");
        return sb.toString();
    }
}
