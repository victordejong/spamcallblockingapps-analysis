package com.flurry.sdk;

import com.flurry.sdk.C3229hp;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.ho */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ho.class */
public class C3225ho extends AbstractC3376kb {

    /* renamed from: a */
    public final long f5378a;

    /* renamed from: b */
    public final int f5379b;

    /* renamed from: c */
    public final int f5380c;

    /* renamed from: d */
    public final EnumC3253hv f5381d;

    /* renamed from: e */
    public final Map<String, String> f5382e;

    /* renamed from: g */
    public C3242hs f5384g;

    /* renamed from: i */
    public int f5386i;

    /* renamed from: j */
    public int f5387j;

    /* renamed from: k */
    public String f5388k;

    /* renamed from: l */
    public String f5389l;

    /* renamed from: m */
    public boolean f5390m;

    /* renamed from: h */
    public long f5385h = 30000;

    /* renamed from: f */
    public ArrayList<C3229hp> f5383f = new ArrayList<>();

    /* renamed from: com.flurry.sdk.ho$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ho$a.class */
    public static final class C3226a implements AbstractC3417kl<C3225ho> {

        /* renamed from: a */
        public C3414kk<C3229hp> f5391a = new C3414kk<>(new C3229hp.C3230a());

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ C3225ho mo32526a(InputStream inputStream) throws IOException {
            HashMap hashMap;
            if (inputStream == null) {
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(this, inputStream) { // from class: com.flurry.sdk.ho.a.2
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }
            };
            String readUTF = dataInputStream.readUTF();
            if (readUTF.equals("")) {
                readUTF = null;
            }
            String readUTF2 = dataInputStream.readUTF();
            long readLong = dataInputStream.readLong();
            int readInt = dataInputStream.readInt();
            long readLong2 = dataInputStream.readLong();
            int readInt2 = dataInputStream.readInt();
            int readInt3 = dataInputStream.readInt();
            EnumC3253hv a = EnumC3253hv.m32799a(dataInputStream.readInt());
            int readInt4 = dataInputStream.readInt();
            if (readInt4 != 0) {
                hashMap = new HashMap();
                for (int i = 0; i < readInt4; i++) {
                    hashMap.put(dataInputStream.readUTF(), dataInputStream.readUTF());
                }
            } else {
                hashMap = null;
            }
            long readLong3 = dataInputStream.readLong();
            int readInt5 = dataInputStream.readInt();
            int readInt6 = dataInputStream.readInt();
            String readUTF3 = dataInputStream.readUTF();
            if (readUTF3.equals("")) {
                readUTF3 = null;
            }
            boolean readBoolean = dataInputStream.readBoolean();
            C3225ho hoVar = new C3225ho(readUTF, readLong2, readUTF2, readLong, readInt2, readInt3, a, hashMap, readInt5, readInt6, readUTF3);
            hoVar.f5385h = readLong3;
            hoVar.f5390m = readBoolean;
            hoVar.f5798p = readInt;
            hoVar.f5383f = (ArrayList) this.f5391a.mo32526a(inputStream);
            hoVar.m32860d();
            return hoVar;
        }

        @Override // com.flurry.sdk.AbstractC3417kl
        /* renamed from: a */
        public final /* synthetic */ void mo32525a(OutputStream outputStream, C3225ho hoVar) throws IOException {
            C3225ho hoVar2 = hoVar;
            if (!(outputStream == null || hoVar2 == null)) {
                DataOutputStream dataOutputStream = new DataOutputStream(this, outputStream) { // from class: com.flurry.sdk.ho.a.1
                    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                    public final void close() {
                    }
                };
                if (hoVar2.f5389l != null) {
                    dataOutputStream.writeUTF(hoVar2.f5389l);
                } else {
                    dataOutputStream.writeUTF("");
                }
                String str = hoVar2.f5800r;
                if (str != null) {
                    dataOutputStream.writeUTF(str);
                } else {
                    dataOutputStream.writeUTF("");
                }
                dataOutputStream.writeLong(hoVar2.f5796n);
                dataOutputStream.writeInt(hoVar2.f5798p);
                dataOutputStream.writeLong(hoVar2.f5378a);
                dataOutputStream.writeInt(hoVar2.f5379b);
                dataOutputStream.writeInt(hoVar2.f5380c);
                dataOutputStream.writeInt(hoVar2.f5381d.f5447e);
                Map map = hoVar2.f5382e;
                if (map != null) {
                    dataOutputStream.writeInt(hoVar2.f5382e.size());
                    for (String str2 : hoVar2.f5382e.keySet()) {
                        dataOutputStream.writeUTF(str2);
                        dataOutputStream.writeUTF((String) map.get(str2));
                    }
                } else {
                    dataOutputStream.writeInt(0);
                }
                dataOutputStream.writeLong(hoVar2.f5385h);
                dataOutputStream.writeInt(hoVar2.f5386i);
                dataOutputStream.writeInt(hoVar2.f5387j);
                if (hoVar2.f5388k != null) {
                    dataOutputStream.writeUTF(hoVar2.f5388k);
                } else {
                    dataOutputStream.writeUTF("");
                }
                dataOutputStream.writeBoolean(hoVar2.f5390m);
                dataOutputStream.flush();
                this.f5391a.m32528a(outputStream, (List<C3229hp>) hoVar2.f5383f);
            }
        }
    }

    public C3225ho(String str, long j, String str2, long j2, int i, int i2, EnumC3253hv hvVar, Map<String, String> map, int i3, int i4, String str3) {
        m32568a(str2);
        this.f5796n = j2;
        mo32567a_();
        this.f5389l = str;
        this.f5378a = j;
        this.f5801s = i;
        this.f5379b = i;
        this.f5380c = i2;
        this.f5381d = hvVar;
        this.f5382e = map;
        this.f5386i = i3;
        this.f5387j = i4;
        this.f5388k = str3;
    }

    @Override // com.flurry.sdk.AbstractC3376kb
    /* renamed from: a_ */
    public final void mo32567a_() {
        super.mo32567a_();
        if (this.f5798p != 1) {
            this.f5385h *= 3;
        }
    }

    /* renamed from: c */
    public final void m32862c() {
        synchronized (this) {
            this.f5384g.m32817c();
        }
    }

    /* renamed from: d */
    public final void m32860d() {
        Iterator<C3229hp> it = this.f5383f.iterator();
        while (it.hasNext()) {
            it.next().f5403l = this;
        }
    }
}
