package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.hz */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/hz.class */
public final class C3258hz {

    /* renamed from: a */
    public String f5456a;

    /* renamed from: b */
    public int f5457b;

    /* renamed from: c */
    public long f5458c;

    /* renamed from: d */
    public String f5459d;

    /* renamed from: e */
    public String f5460e;

    /* renamed from: f */
    public Throwable f5461f;

    /* renamed from: g */
    public Map<String, String> f5462g;

    /* renamed from: h */
    public Map<String, String> f5463h;

    public C3258hz(int i, long j, String str, String str2, String str3, Throwable th, Map<String, String> map, Map<String, String> map2) {
        this.f5462g = new HashMap();
        this.f5463h = new HashMap();
        this.f5457b = i;
        this.f5458c = j;
        this.f5456a = str;
        this.f5459d = str2;
        this.f5460e = str3;
        this.f5461f = th;
        if (map != null) {
            this.f5462g = map;
        }
        if (map2 != null) {
            this.f5463h = map2;
        }
    }

    /* renamed from: a */
    public final byte[] m32791a() {
        Throwable th;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        r9 = null;
        DataOutputStream dataOutputStream = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            } catch (IOException e) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            dataOutputStream.writeShort(this.f5457b);
            dataOutputStream.writeLong(this.f5458c);
            dataOutputStream.writeUTF(this.f5456a);
            dataOutputStream.writeUTF(this.f5459d);
            dataOutputStream.writeUTF(this.f5460e);
            dataOutputStream.writeShort(this.f5462g.size());
            for (Map.Entry<String, String> entry : this.f5462g.entrySet()) {
                dataOutputStream.writeUTF(entry.getKey());
                dataOutputStream.writeUTF(entry.getValue());
            }
            dataOutputStream.writeShort(this.f5463h.size());
            for (Map.Entry<String, String> entry2 : this.f5463h.entrySet()) {
                dataOutputStream.writeUTF(entry2.getKey());
                dataOutputStream.writeUTF(entry2.getValue());
            }
            if (this.f5461f != null) {
                if ("uncaught".equals(this.f5456a)) {
                    dataOutputStream.writeByte(3);
                } else {
                    dataOutputStream.writeByte(2);
                }
                dataOutputStream.writeByte(2);
                StringBuilder sb = new StringBuilder("");
                String property = System.getProperty("line.separator");
                for (StackTraceElement stackTraceElement : this.f5461f.getStackTrace()) {
                    sb.append(stackTraceElement);
                    sb.append(property);
                }
                if (this.f5461f.getCause() != null) {
                    sb.append(property);
                    sb.append("Caused by: ");
                    for (StackTraceElement stackTraceElement2 : this.f5461f.getCause().getStackTrace()) {
                        sb.append(stackTraceElement2);
                        sb.append(property);
                    }
                }
                byte[] bytes = sb.toString().getBytes();
                dataOutputStream.writeInt(bytes.length);
                dataOutputStream.write(bytes);
            } else {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeByte(0);
            }
            dataOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
            C3445la.m32465a(dataOutputStream);
        } catch (IOException e2) {
            dataOutputStream = dataOutputStream;
            bArr = new byte[0];
            C3445la.m32465a(dataOutputStream);
            return bArr;
        } catch (Throwable th3) {
            th = th3;
            C3445la.m32465a(dataOutputStream);
            throw th;
        }
        return bArr;
    }
}
