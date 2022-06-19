package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.ab */
/* loaded from: classes-dex2jar.jar:com/b/a/a/ab.class */
public class C3465ab extends AbstractC3478c {

    /* renamed from: b */
    private static final AbstractC20997a.AbstractC20998a f13127b = null;

    /* renamed from: c */
    private static final AbstractC20997a.AbstractC20998a f13128c = null;

    /* renamed from: a */
    private long[] f13129a = new long[0];

    static {
        m37915b();
    }

    public C3465ab() {
        super("stco");
    }

    /* renamed from: b */
    private static void m37915b() {
        C20987b c20987b = new C20987b("StaticChunkOffsetBox.java", C3465ab.class);
        f13127b = c20987b.m164a("method-execution", c20987b.m165a("1", "getChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "", "", "", "[J"), 39);
        f13128c = c20987b.m164a("method-execution", c20987b.m165a("1", "setChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "[J", "chunkOffsets", "", "void"), 48);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        int m7517a = C16282b.m7517a(C3515e.m37851a(byteBuffer));
        this.f13129a = new long[m7517a];
        for (int i = 0; i < m7517a; i++) {
            this.f13129a[i] = C3515e.m37851a(byteBuffer);
        }
    }

    @Override // com.p102b.p103a.p104a.AbstractC3478c
    /* renamed from: a */
    public final void mo37895a(long[] jArr) {
        AbstractC20997a m162a = C20987b.m162a(f13128c, this, this, jArr);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.f13129a = jArr;
    }

    @Override // com.p102b.p103a.p104a.AbstractC3478c
    /* renamed from: a */
    public final long[] mo37896a() {
        AbstractC20997a m163a = C20987b.m163a(f13127b, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f13129a;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        C3516f.m37835b(byteBuffer, this.f13129a.length);
        for (long j : this.f13129a) {
            C3516f.m37835b(byteBuffer, j);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return (this.f13129a.length * 4) + 8;
    }
}
