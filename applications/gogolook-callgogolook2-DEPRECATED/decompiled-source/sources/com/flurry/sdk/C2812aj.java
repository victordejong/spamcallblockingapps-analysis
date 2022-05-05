package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.aj */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aj.class */
public final class C2812aj {

    /* renamed from: a */
    public String f3986a;

    /* renamed from: b */
    public EnumC2851aw f3987b;

    /* renamed from: c */
    public long f3988c;

    /* renamed from: d */
    public long f3989d;

    /* renamed from: e */
    public EnumC2828ap f3990e;

    /* renamed from: f */
    public long f3991f;

    /* renamed from: g */
    public long f3992g;

    /* renamed from: com.flurry.sdk.aj$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/aj$a.class */
    public static final class C2813a implements AbstractC3417kl<C2812aj> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C2812aj mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.aj.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2812aj ajVar = new C2812aj((byte) 0);
            ajVar.f3986a = dataInputStream.readUTF();
            ajVar.f3987b = EnumC2851aw.m33541a(dataInputStream.readInt());
            ajVar.f3988c = dataInputStream.readLong();
            ajVar.f3989d = dataInputStream.readLong();
            ajVar.f3990e = EnumC2828ap.m33583a(dataInputStream.readInt());
            ajVar.f3991f = dataInputStream.readLong();
            ajVar.f3992g = dataInputStream.readLong();
            return ajVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C2812aj ajVar) throws IOException {
            C2812aj ajVar2 = ajVar;
            if (outputStream != null && ajVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.aj.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeUTF(ajVar2.f3986a);
                dataOutputStream.writeInt(ajVar2.f3987b.ordinal());
                dataOutputStream.writeLong(ajVar2.f3988c);
                dataOutputStream.writeLong(ajVar2.f3989d);
                dataOutputStream.writeInt(ajVar2.f3990e.ordinal());
                dataOutputStream.writeLong(ajVar2.f3991f);
                dataOutputStream.writeLong(ajVar2.f3992g);
                dataOutputStream.flush();
            }
        }
    }

    public C2812aj() {
    }

    public /* synthetic */ C2812aj(byte b) {
        this();
    }

    public C2812aj(String str, EnumC2851aw awVar, long j) {
        this.f3986a = str;
        this.f3987b = awVar;
        this.f3988c = System.currentTimeMillis();
        this.f3989d = System.currentTimeMillis();
        this.f3990e = EnumC2828ap.NONE;
        this.f3991f = j;
        this.f3992g = -1L;
    }

    /* renamed from: a */
    public final EnumC2828ap m33624a() {
        EnumC2828ap apVar;
        synchronized (this) {
            apVar = this.f3990e;
        }
        return apVar;
    }

    /* renamed from: a */
    public final void m33623a(long j) {
        synchronized (this) {
            this.f3992g = j;
        }
    }

    /* renamed from: a */
    public final void m33622a(EnumC2828ap apVar) {
        synchronized (this) {
            this.f3990e = apVar;
        }
    }

    /* renamed from: b */
    public final boolean m33621b() {
        return this.f3991f > 0 && System.currentTimeMillis() > this.f3991f;
    }

    /* renamed from: c */
    public final void m33620c() {
        synchronized (this) {
            this.f3989d = System.currentTimeMillis();
        }
    }

    public final String toString() {
        return "url: " + this.f3986a + ", type:" + this.f3987b + ", creation:" + this.f3988c + ", accessed:" + this.f3989d + ", status: " + this.f3990e + ", expiration: " + this.f3991f + ", size: " + this.f3992g;
    }
}
