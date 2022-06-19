package com.google.android.exoplayer2.decoder;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/DecoderInputBuffer.class */
public class DecoderInputBuffer extends AbstractC10929a {

    /* renamed from: b */
    public final C10930b f35335b;

    /* renamed from: c */
    public ByteBuffer f35336c;

    /* renamed from: d */
    public boolean f35337d;

    /* renamed from: e */
    public long f35338e;

    /* renamed from: f */
    public ByteBuffer f35339f;

    /* renamed from: g */
    private final int f35340g;

    /* renamed from: h */
    private final int f35341h;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException.class */
    public static final class InsufficientCapacityException extends IllegalStateException {

        /* renamed from: a */
        public final int f35342a;

        /* renamed from: b */
        public final int f35343b;

        public InsufficientCapacityException(int i, int i2) {
            super("Buffer too small (" + i + " < " + i2 + ")");
            this.f35342a = i;
            this.f35343b = i2;
        }
    }

    public DecoderInputBuffer(int i) {
        this(i, 0);
    }

    public DecoderInputBuffer(int i, int i2) {
        this.f35335b = new C10930b();
        this.f35340g = i;
        this.f35341h = i2;
    }

    /* renamed from: d */
    private ByteBuffer m21924d(int i) {
        int i2 = this.f35340g;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f35336c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    @Override // com.google.android.exoplayer2.decoder.AbstractC10929a
    /* renamed from: a */
    public void mo20663a() {
        super.mo20663a();
        ByteBuffer byteBuffer = this.f35336c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f35339f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f35337d = false;
    }

    @EnsuresNonNull({"data"})
    /* renamed from: c */
    public final void m21925c(int i) {
        int i2 = i + this.f35341h;
        ByteBuffer byteBuffer = this.f35336c;
        if (byteBuffer == null) {
            this.f35336c = m21924d(i2);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i3 = i2 + position;
        if (capacity >= i3) {
            this.f35336c = byteBuffer;
            return;
        }
        ByteBuffer m21924d = m21924d(i3);
        m21924d.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            m21924d.put(byteBuffer);
        }
        this.f35336c = m21924d;
    }

    /* renamed from: f */
    public final boolean m21923f() {
        return this.f35336c == null && this.f35340g == 0;
    }

    /* renamed from: g */
    public final boolean m21922g() {
        return m21918b(1073741824);
    }

    /* renamed from: h */
    public final void m21921h() {
        ByteBuffer byteBuffer = this.f35336c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f35339f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
