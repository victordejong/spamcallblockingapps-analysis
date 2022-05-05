package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.bl */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bl.class */
public final class C2877bl {

    /* renamed from: a */
    public EnumC2917cn f4298a;

    /* renamed from: b */
    public String f4299b;

    /* renamed from: c */
    public long f4300c;

    /* renamed from: d */
    public long f4301d;

    /* renamed from: e */
    public long f4302e;

    /* renamed from: f */
    public int f4303f;

    /* renamed from: g */
    public int f4304g;

    /* renamed from: h */
    public int f4305h;

    /* renamed from: i */
    public int f4306i;

    /* renamed from: j */
    public long f4307j;

    /* renamed from: com.flurry.sdk.bl$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bl$a.class */
    public static final class C2878a implements AbstractC3417kl<C2877bl> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C2877bl mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.bl.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2877bl blVar = new C2877bl((byte) 0);
            blVar.f4298a = (EnumC2917cn) Enum.valueOf(EnumC2917cn.class, dataInputStream.readUTF());
            blVar.f4299b = dataInputStream.readUTF();
            blVar.f4300c = dataInputStream.readLong();
            blVar.f4301d = dataInputStream.readLong();
            blVar.f4302e = dataInputStream.readLong();
            blVar.f4303f = dataInputStream.readInt();
            blVar.f4304g = dataInputStream.readInt();
            blVar.f4305h = dataInputStream.readInt();
            blVar.f4306i = dataInputStream.readInt();
            blVar.f4307j = dataInputStream.readLong();
            return blVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C2877bl blVar) throws IOException {
            C2877bl blVar2 = blVar;
            if (outputStream != null && blVar2 != null) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.bl.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                dataOutputStream.writeUTF(blVar2.f4298a.name());
                dataOutputStream.writeUTF(blVar2.f4299b);
                dataOutputStream.writeLong(blVar2.f4300c);
                dataOutputStream.writeLong(blVar2.f4301d);
                dataOutputStream.writeLong(blVar2.f4302e);
                dataOutputStream.writeInt(blVar2.f4303f);
                dataOutputStream.writeInt(blVar2.f4304g);
                dataOutputStream.writeInt(blVar2.f4305h);
                dataOutputStream.writeInt(blVar2.f4306i);
                dataOutputStream.writeLong(blVar2.f4307j);
                dataOutputStream.flush();
            }
        }
    }

    /* renamed from: com.flurry.sdk.bl$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bl$b.class */
    public static final class C2881b implements AbstractC3417kl<C2877bl> {
        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C2877bl mo32526a(InputStream inputStream) throws IOException {
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.bl.b.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            C2877bl blVar = new C2877bl((byte) 0);
            blVar.f4298a = EnumC2917cn.ADSPACE;
            blVar.f4302e = 0L;
            blVar.f4307j = 0L;
            blVar.f4299b = dataInputStream.readUTF();
            blVar.f4300c = dataInputStream.readLong();
            blVar.f4301d = dataInputStream.readLong();
            blVar.f4306i = dataInputStream.readInt();
            blVar.f4303f = dataInputStream.readInt();
            blVar.f4304g = dataInputStream.readInt();
            blVar.f4305h = dataInputStream.readInt();
            return blVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C2877bl blVar) throws IOException {
            throw new UnsupportedOperationException("Serialization not supported");
        }
    }

    public C2877bl() {
    }

    public /* synthetic */ C2877bl(byte b) {
        this();
    }

    public C2877bl(C2916cm cmVar) {
        this.f4298a = cmVar.f4491a;
        this.f4299b = cmVar.f4492b;
        this.f4300c = cmVar.f4493c;
        this.f4301d = cmVar.f4494d;
        this.f4302e = cmVar.f4495e;
        this.f4303f = cmVar.f4496f;
        this.f4304g = cmVar.f4497g;
        this.f4305h = cmVar.f4498h;
        this.f4306i = 0;
        this.f4307j = 0L;
    }
}
