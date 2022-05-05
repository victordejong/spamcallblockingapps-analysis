package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.kn */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kn.class */
public final class C3419kn<T> implements AbstractC3417kl<T> {

    /* renamed from: a */
    public final String f5846a;

    /* renamed from: b */
    public final int f5847b;

    /* renamed from: c */
    public final AbstractC3422ko<T> f5848c;

    public C3419kn(String str, int i, AbstractC3422ko<T> koVar) {
        this.f5846a = str;
        this.f5847b = i;
        this.f5848c = koVar;
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final T mo32526a(InputStream inputStream) throws IOException {
        if (inputStream == null || this.f5848c == null) {
            return null;
        }
        DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.kn.2
            @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }
        };
        String readUTF = dataInputStream.readUTF();
        if (this.f5846a.equals(readUTF)) {
            return this.f5848c.mo32339a(dataInputStream.readInt()).mo32526a(dataInputStream);
        }
        throw new IOException("Signature: " + readUTF + " is invalid");
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final void mo32525a(OutputStream outputStream, T t) throws IOException {
        if (outputStream != null && this.f5848c != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.kn.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            dataOutputStream.writeUTF(this.f5846a);
            dataOutputStream.writeInt(this.f5847b);
            this.f5848c.mo32339a(this.f5847b).mo32525a(dataOutputStream, t);
            dataOutputStream.flush();
        }
    }
}
