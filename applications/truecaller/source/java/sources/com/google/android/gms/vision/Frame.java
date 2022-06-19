package com.google.android.gms.vision;

import java.nio.ByteBuffer;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/Frame.class */
public class Frame {

    /* renamed from: a */
    public Metadata f6526a;

    /* renamed from: b */
    public ByteBuffer f6527b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/Frame$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public Frame f6528a = new Frame();

        /* renamed from: a */
        public Builder m38492a(ByteBuffer byteBuffer, int i, int i2, int i3) {
            if (byteBuffer != null) {
                if (byteBuffer.capacity() < i * i2) {
                    throw new IllegalArgumentException("Invalid image data size.");
                }
                if (i3 != 16 && i3 != 17 && i3 != 842094169) {
                    throw new IllegalArgumentException(C22128a.m8690L1(37, "Unsupported image format: ", i3));
                }
                Frame frame = this.f6528a;
                frame.f6527b = byteBuffer;
                Metadata metadata = frame.f6526a;
                metadata.f6529a = i;
                metadata.f6530b = i2;
                metadata.f6534f = i3;
                return this;
            }
            throw new IllegalArgumentException("Null image data supplied.");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/vision/Frame$Metadata.class */
    public static class Metadata {

        /* renamed from: a */
        public int f6529a;

        /* renamed from: b */
        public int f6530b;

        /* renamed from: c */
        public int f6531c;

        /* renamed from: d */
        public long f6532d;

        /* renamed from: e */
        public int f6533e;

        /* renamed from: f */
        public int f6534f = -1;

        public Metadata() {
        }

        public Metadata(Metadata metadata) {
            this.f6529a = metadata.f6529a;
            this.f6530b = metadata.f6530b;
            this.f6531c = metadata.f6531c;
            this.f6532d = metadata.f6532d;
            this.f6533e = metadata.f6533e;
        }
    }

    private Frame() {
        this.f6526a = new Metadata();
        this.f6527b = null;
    }
}
