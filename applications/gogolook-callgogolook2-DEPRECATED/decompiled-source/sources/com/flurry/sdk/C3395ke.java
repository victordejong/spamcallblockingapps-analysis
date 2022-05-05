package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;
/* renamed from: com.flurry.sdk.ke */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ke.class */
public final class C3395ke {

    /* renamed from: a */
    public String f5837a;

    /* renamed from: b */
    public byte[] f5838b;

    /* renamed from: com.flurry.sdk.ke$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ke$a.class */
    public static final class C3396a implements AbstractC3417kl<C3395ke> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3395ke mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.ke.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C3395ke keVar = new C3395ke((byte) 0);
            int readShort = dataInputStream.readShort();
            if (readShort == 0) {
                return null;
            }
            keVar.f5838b = new byte[readShort];
            dataInputStream.readFully(keVar.f5838b);
            dataInputStream.readUnsignedShort();
            return keVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3395ke keVar) throws IOException {
            C3395ke keVar2 = keVar;
            if (outputStream != null && keVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.ke.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeShort(keVar2.f5838b.length);
                dataOutputStream.write(keVar2.f5838b);
                dataOutputStream.writeShort(0);
                dataOutputStream.flush();
            }
        }
    }

    public C3395ke() {
        this.f5837a = null;
        this.f5838b = null;
    }

    public /* synthetic */ C3395ke(byte b) {
        this();
    }

    public C3395ke(byte[] bArr) {
        this.f5837a = null;
        this.f5838b = null;
        this.f5837a = UUID.randomUUID().toString();
        this.f5838b = bArr;
    }

    /* renamed from: a */
    public static String m32545a(String str) {
        return ".yflurrydatasenderblock." + str;
    }
}
