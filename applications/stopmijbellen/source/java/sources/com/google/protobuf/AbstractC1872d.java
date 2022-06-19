package com.google.protobuf;

import com.google.android.gms.common.api.Api;
/* renamed from: com.google.protobuf.d */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/d.class */
public abstract class AbstractC1872d {

    /* renamed from: a */
    public int f7057a = 100;

    /* renamed from: com.google.protobuf.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/protobuf/d$b.class */
    public static final class C1874b extends AbstractC1872d {

        /* renamed from: b */
        public final byte[] f7058b;

        /* renamed from: c */
        public final boolean f7059c;

        /* renamed from: d */
        public int f7060d;

        /* renamed from: e */
        public int f7061e;

        /* renamed from: f */
        public int f7062f;

        /* renamed from: g */
        public int f7063g;

        /* renamed from: h */
        public int f7064h = Api.BaseClientBuilder.API_PRIORITY_OTHER;

        public C1874b(byte[] bArr, int i, int i2, boolean z, C1873a c1873a) {
            super(null);
            this.f7058b = bArr;
            this.f7060d = i2 + i;
            this.f7062f = i;
            this.f7063g = i;
            this.f7059c = z;
        }

        /* renamed from: b */
        public int m4335b() {
            return this.f7062f - this.f7063g;
        }

        /* renamed from: c */
        public int m4334c(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int m4335b = m4335b() + i;
                int i2 = this.f7064h;
                if (m4335b > i2) {
                    throw InvalidProtocolBufferException.m4396c();
                }
                this.f7064h = m4335b;
                m4333d();
                return i2;
            }
            throw InvalidProtocolBufferException.m4397b();
        }

        /* renamed from: d */
        public final void m4333d() {
            int i = this.f7060d + this.f7061e;
            this.f7060d = i;
            int i2 = i - this.f7063g;
            int i3 = this.f7064h;
            if (i2 <= i3) {
                this.f7061e = 0;
                return;
            }
            int i4 = i2 - i3;
            this.f7061e = i4;
            this.f7060d = i - i4;
        }
    }

    public AbstractC1872d(C1873a c1873a) {
    }

    /* renamed from: a */
    public static AbstractC1872d m4336a(byte[] bArr, int i, int i2, boolean z) {
        C1874b c1874b = new C1874b(bArr, i, i2, z, null);
        try {
            c1874b.m4334c(i2);
            return c1874b;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
