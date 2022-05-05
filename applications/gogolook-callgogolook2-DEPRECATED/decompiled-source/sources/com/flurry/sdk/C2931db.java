package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
/* renamed from: com.flurry.sdk.db */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/db.class */
public class C2931db extends AbstractC3376kb {

    /* renamed from: d */
    public static final String f4558d = "com.flurry.sdk.db";

    /* renamed from: a */
    public String f4559a;

    /* renamed from: b */
    public String f4560b;

    /* renamed from: c */
    public HashMap<String, Object> f4561c;

    /* renamed from: e */
    public boolean f4562e;

    /* renamed from: f */
    public int f4563f;

    /* renamed from: com.flurry.sdk.db$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/db$a.class */
    public static final class C2932a implements AbstractC3417kl<C2931db> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C2931db mo32526a(InputStream inputStream) throws IOException {
            C3356jq.m32615a(5, C2931db.f4558d, "AdsAsyncReportInfoSerializerV1 deserialize");
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.db.a.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2931db dbVar = new C2931db((byte) 0);
            dbVar.f4559a = dataInputStream.readUTF();
            dbVar.f4560b = dataInputStream.readUTF();
            dbVar.m32568a(dataInputStream.readUTF());
            dbVar.f5796n = dataInputStream.readLong();
            dbVar.f4562e = dataInputStream.readBoolean();
            dbVar.f5797o = dataInputStream.readBoolean();
            dbVar.f5798p = dataInputStream.readInt();
            return dbVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C2931db dbVar) throws IOException {
            C3356jq.m32615a(5, C2931db.f4558d, "AdsAsyncReportInfoSerializerV1 serialize");
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }

    /* renamed from: com.flurry.sdk.db$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/db$b.class */
    public static final class C2934b implements AbstractC3417kl<C2931db> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C2931db mo32526a(InputStream inputStream) throws IOException {
            C3356jq.m32615a(5, C2931db.f4558d, "AdsAsyncReportInfoSerializerV2 deserialize");
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.db.b.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2931db dbVar = new C2931db((byte) 0);
            dbVar.f5796n = dataInputStream.readLong();
            dbVar.f5797o = dataInputStream.readBoolean();
            dbVar.f5798p = dataInputStream.readInt();
            dbVar.f5799q = dataInputStream.readUTF();
            dbVar.f5800r = dataInputStream.readUTF();
            dbVar.f4559a = dataInputStream.readUTF();
            dbVar.f4560b = dataInputStream.readUTF();
            dbVar.f4562e = dataInputStream.readBoolean();
            return dbVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C2931db dbVar) throws IOException {
            C3356jq.m32615a(5, C2931db.f4558d, "AdsAsyncReportInfoSerializerV2 deserialize");
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }

    /* renamed from: com.flurry.sdk.db$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/db$c.class */
    public static final class C2936c implements AbstractC3417kl<C2931db> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C2931db mo32526a(InputStream inputStream) throws IOException {
            C3356jq.m32615a(5, C2931db.f4558d, "AdsAsyncReportInfoSerializerV3 deserialize");
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.db.c.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2931db dbVar = new C2931db((byte) 0);
            dbVar.f5796n = dataInputStream.readLong();
            dbVar.f5797o = dataInputStream.readBoolean();
            dbVar.f5798p = dataInputStream.readInt();
            dbVar.f5799q = dataInputStream.readUTF();
            dbVar.f5800r = dataInputStream.readUTF();
            dbVar.f4559a = dataInputStream.readUTF();
            dbVar.f4560b = dataInputStream.readUTF();
            dbVar.f4562e = dataInputStream.readBoolean();
            dbVar.f4563f = dataInputStream.readInt();
            return dbVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C2931db dbVar) throws IOException {
            C2931db dbVar2 = dbVar;
            C3356jq.m32615a(5, C2931db.f4558d, "AdsAsyncReportInfoSerializerV3 serialize");
            if (outputStream != null && dbVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.db.c.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeLong(dbVar2.f5796n);
                dataOutputStream.writeBoolean(dbVar2.f5797o);
                dataOutputStream.writeInt(dbVar2.f5798p);
                dataOutputStream.writeUTF(dbVar2.f5799q);
                dataOutputStream.writeUTF(dbVar2.f5800r);
                dataOutputStream.writeUTF(dbVar2.f4559a);
                dataOutputStream.writeUTF(dbVar2.f4560b);
                dataOutputStream.writeBoolean(dbVar2.f4562e);
                dataOutputStream.writeInt(dbVar2.f4563f);
                dataOutputStream.flush();
            }
        }
    }

    public C2931db() {
        this.f4561c = null;
    }

    public /* synthetic */ C2931db(byte b) {
        this();
    }

    public C2931db(String str, String str2, String str3, long j, int i) {
        this.f4561c = null;
        m32568a(str3);
        this.f5796n = j;
        this.f4559a = str;
        this.f4560b = str2;
        this.f4563f = i;
    }

    public C2931db(String str, String str2, String str3, long j, int i, HashMap<String, Object> hashMap) {
        this.f4561c = null;
        m32568a(str3);
        this.f5796n = j;
        this.f4559a = str;
        this.f4560b = str2;
        this.f4563f = i;
        this.f4561c = hashMap;
    }

    @Override // com.flurry.sdk.AbstractC3376kb
    /* renamed from: a */
    public final int mo32569a() {
        return this.f4563f;
    }
}
