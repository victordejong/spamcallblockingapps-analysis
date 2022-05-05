package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.hj */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hj.class */
public final class C3202hj {

    /* renamed from: a */
    public long f5327a;

    /* renamed from: b */
    public boolean f5328b;

    /* renamed from: c */
    public byte[] f5329c;

    /* renamed from: com.flurry.sdk.hj$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hj$a.class */
    public static final class C3203a implements AbstractC3417kl<C3202hj> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3202hj mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.hj.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C3202hj hjVar = new C3202hj();
            hjVar.f5327a = dataInputStream.readLong();
            hjVar.f5328b = dataInputStream.readBoolean();
            hjVar.f5329c = new byte[dataInputStream.readInt()];
            dataInputStream.readFully(hjVar.f5329c);
            return hjVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3202hj hjVar) throws IOException {
            C3202hj hjVar2 = hjVar;
            if (outputStream != null && hjVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.hj.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeLong(hjVar2.f5327a);
                dataOutputStream.writeBoolean(hjVar2.f5328b);
                dataOutputStream.writeInt(hjVar2.f5329c.length);
                dataOutputStream.write(hjVar2.f5329c);
                dataOutputStream.flush();
            }
        }
    }
}
