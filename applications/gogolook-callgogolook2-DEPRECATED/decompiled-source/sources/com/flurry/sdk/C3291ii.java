package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flurry.sdk.ii */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ii.class */
public class C3291ii {

    /* renamed from: a */
    public final List<C3267ie> f5571a = new ArrayList();

    /* renamed from: b */
    public boolean f5572b;

    /* renamed from: c */
    public long f5573c;

    /* renamed from: com.flurry.sdk.ii$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ii$a.class */
    public static final class C3292a implements AbstractC3417kl<C3291ii> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3291ii mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.ii.a.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C3291ii iiVar = new C3291ii();
            dataInputStream.readUTF();
            dataInputStream.readUTF();
            iiVar.f5572b = dataInputStream.readBoolean();
            iiVar.f5573c = dataInputStream.readLong();
            while (true) {
                int readUnsignedShort = dataInputStream.readUnsignedShort();
                if (readUnsignedShort == 0) {
                    return iiVar;
                }
                byte[] bArr = new byte[readUnsignedShort];
                dataInputStream.readFully(bArr);
                iiVar.f5571a.add(0, new C3267ie(bArr));
            }
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3291ii iiVar) throws IOException {
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }
}
