package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.iw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/iw.class */
public final class C3316iw {

    /* renamed from: a */
    public boolean f5635a;

    /* renamed from: b */
    public byte[] f5636b;

    /* renamed from: c */
    public byte[] f5637c;

    /* renamed from: d */
    public int f5638d;

    /* renamed from: com.flurry.sdk.iw$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/iw$a.class */
    public static final class C3317a implements AbstractC3417kl<C3316iw> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3316iw mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.iw.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C3316iw iwVar = new C3316iw((byte) 0);
            iwVar.f5635a = dataInputStream.readBoolean();
            int readInt = dataInputStream.readInt();
            if (readInt > 0) {
                iwVar.f5636b = new byte[readInt];
                dataInputStream.read(iwVar.f5636b, 0, readInt);
            } else {
                iwVar.f5636b = null;
            }
            int readInt2 = dataInputStream.readInt();
            if (readInt2 > 0) {
                iwVar.f5637c = new byte[readInt2];
                dataInputStream.read(iwVar.f5637c, 0, readInt2);
            } else {
                iwVar.f5637c = null;
            }
            iwVar.f5638d = dataInputStream.readInt();
            return iwVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3316iw iwVar) throws IOException {
            C3316iw iwVar2 = iwVar;
            if (outputStream != null && iwVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.iw.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeBoolean(iwVar2.f5635a);
                byte[] bArr = iwVar2.f5636b;
                if (bArr == null) {
                    dataOutputStream.writeInt(0);
                } else {
                    dataOutputStream.writeInt(bArr.length);
                    dataOutputStream.write(iwVar2.f5636b);
                }
                byte[] bArr2 = iwVar2.f5637c;
                if (bArr2 == null) {
                    dataOutputStream.writeInt(0);
                } else {
                    dataOutputStream.writeInt(bArr2.length);
                    dataOutputStream.write(iwVar2.f5637c);
                }
                dataOutputStream.writeInt(iwVar2.f5638d);
                dataOutputStream.flush();
            }
        }
    }

    public C3316iw() {
    }

    public /* synthetic */ C3316iw(byte b) {
        this();
    }

    public C3316iw(byte[] bArr, byte[] bArr2, boolean z, int i) {
        this.f5636b = bArr2;
        this.f5637c = bArr;
        this.f5635a = z;
        this.f5638d = i;
    }
}
