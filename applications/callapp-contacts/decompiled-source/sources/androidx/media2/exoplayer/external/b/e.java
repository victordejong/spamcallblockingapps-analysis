package androidx.media2.exoplayer.external.b;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/e.class */
public class e extends a {

    /* renamed from: b  reason: collision with root package name */
    public final b f2948b = new b();

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f2949c;

    /* renamed from: d  reason: collision with root package name */
    public long f2950d;
    public ByteBuffer e;
    private final int f;

    public e(int i) {
        this.f = i;
    }

    private ByteBuffer d(int i) {
        int i2 = this.f;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f2949c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    @Override // androidx.media2.exoplayer.external.b.a
    public final void a() {
        super.a();
        ByteBuffer byteBuffer = this.f2949c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    @EnsuresNonNull({"data"})
    public final void c(int i) {
        ByteBuffer byteBuffer = this.f2949c;
        if (byteBuffer == null) {
            this.f2949c = d(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f2949c.position();
        int i2 = i + position;
        if (capacity < i2) {
            ByteBuffer d2 = d(i2);
            if (position > 0) {
                this.f2949c.position(0);
                this.f2949c.limit(position);
                d2.put(this.f2949c);
            }
            this.f2949c = d2;
        }
    }

    public final boolean f() {
        return this.f2949c == null && this.f == 0;
    }

    public final boolean g() {
        return b(1073741824);
    }

    public final void h() {
        this.f2949c.flip();
        ByteBuffer byteBuffer = this.e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
    }
}
