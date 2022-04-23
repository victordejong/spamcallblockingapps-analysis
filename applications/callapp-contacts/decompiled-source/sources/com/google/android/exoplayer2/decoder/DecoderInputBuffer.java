package com.google.android.exoplayer2.decoder;

import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/DecoderInputBuffer.class */
public class DecoderInputBuffer extends a {

    /* renamed from: b  reason: collision with root package name */
    public final b f20821b;

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f20822c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f20823d;
    public long e;
    public ByteBuffer f;
    private final int g;
    private final int h;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/DecoderInputBuffer$InsufficientCapacityException.class */
    public static final class InsufficientCapacityException extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        public final int f20824a;

        /* renamed from: b  reason: collision with root package name */
        public final int f20825b;

        public InsufficientCapacityException(int i, int i2) {
            super("Buffer too small (" + i + " < " + i2 + ")");
            this.f20824a = i;
            this.f20825b = i2;
        }
    }

    public DecoderInputBuffer(int i) {
        this(i, 0);
    }

    public DecoderInputBuffer(int i, int i2) {
        this.f20821b = new b();
        this.g = i;
        this.h = i2;
    }

    private ByteBuffer d(int i) {
        int i2 = this.g;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f20822c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public void a() {
        super.a();
        ByteBuffer byteBuffer = this.f20822c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f20823d = false;
    }

    @EnsuresNonNull({"data"})
    public final void c(int i) {
        int i2 = i + this.h;
        ByteBuffer byteBuffer = this.f20822c;
        if (byteBuffer == null) {
            this.f20822c = d(i2);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i3 = i2 + position;
        if (capacity >= i3) {
            this.f20822c = byteBuffer;
            return;
        }
        ByteBuffer d2 = d(i3);
        d2.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            d2.put(byteBuffer);
        }
        this.f20822c = d2;
    }

    public final boolean f() {
        return this.f20822c == null && this.g == 0;
    }

    public final boolean g() {
        return b(1073741824);
    }

    public final void h() {
        ByteBuffer byteBuffer = this.f20822c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
