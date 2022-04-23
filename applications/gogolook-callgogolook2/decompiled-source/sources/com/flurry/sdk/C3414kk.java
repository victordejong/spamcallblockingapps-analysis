package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.kk */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kk.class */
public final class C3414kk<T> implements AbstractC3417kl<List<T>> {

    /* renamed from: a */
    public AbstractC3417kl<T> f5845a;

    public C3414kk(AbstractC3417kl<T> klVar) {
        this.f5845a = klVar;
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo32525a(OutputStream outputStream, Object obj) throws IOException {
        m32528a(outputStream, (List) ((List) obj));
    }

    /* renamed from: a */
    public final void m32528a(OutputStream outputStream, List<T> list) throws IOException {
        if (outputStream != null) {
            DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.kk.1
                @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            int size = list != null ? list.size() : 0;
            dataOutputStream.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f5845a.mo32525a(outputStream, list.get(i));
            }
            dataOutputStream.flush();
        }
    }

    /* renamed from: b */
    public final List<T> mo32526a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        int readInt = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.kk.2
            @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }
        }.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            T a = this.f5845a.mo32526a(inputStream);
            if (a != null) {
                arrayList.add(a);
            } else {
                throw new IOException("Missing record.");
            }
        }
        return arrayList;
    }
}
