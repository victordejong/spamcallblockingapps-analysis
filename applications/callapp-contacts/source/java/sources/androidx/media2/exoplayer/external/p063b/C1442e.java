package androidx.media2.exoplayer.external.p063b;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* renamed from: androidx.media2.exoplayer.external.b.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/e.class */
public class C1442e extends AbstractC1436a {

    /* renamed from: b */
    public final C1437b f5493b = new C1437b();

    /* renamed from: c */
    public ByteBuffer f5494c;

    /* renamed from: d */
    public long f5495d;

    /* renamed from: e */
    public ByteBuffer f5496e;

    /* renamed from: f */
    private final int f5497f;

    public C1442e(int i) {
        this.f5497f = i;
    }

    /* renamed from: d */
    private ByteBuffer m42906d(int i) {
        int i2 = this.f5497f;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f5494c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1436a
    /* renamed from: a */
    public final void mo41916a() {
        super.mo41916a();
        ByteBuffer byteBuffer = this.f5494c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    @EnsuresNonNull({"data"})
    /* renamed from: c */
    public final void m42907c(int i) {
        ByteBuffer byteBuffer = this.f5494c;
        if (byteBuffer == null) {
            this.f5494c = m42906d(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f5494c.position();
        int i2 = i + position;
        if (capacity >= i2) {
            return;
        }
        ByteBuffer m42906d = m42906d(i2);
        if (position > 0) {
            this.f5494c.position(0);
            this.f5494c.limit(position);
            m42906d.put(this.f5494c);
        }
        this.f5494c = m42906d;
    }

    /* renamed from: f */
    public final boolean m42905f() {
        return this.f5494c == null && this.f5497f == 0;
    }

    /* renamed from: g */
    public final boolean m42904g() {
        return m42912b(1073741824);
    }

    /* renamed from: h */
    public final void m42903h() {
        this.f5494c.flip();
        ByteBuffer byteBuffer = this.f5496e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
    }
}
