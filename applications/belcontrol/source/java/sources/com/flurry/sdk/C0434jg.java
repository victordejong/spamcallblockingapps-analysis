package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: com.flurry.sdk.jg */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jg.class */
public final class C0434jg {

    /* renamed from: a */
    public String f3335a;

    /* renamed from: b */
    private int f3336b;

    /* renamed from: c */
    private long f3337c;

    /* renamed from: d */
    private String f3338d;

    /* renamed from: e */
    private String f3339e;

    /* renamed from: f */
    private Throwable f3340f;

    public C0434jg(int i, long j, String str, String str2, String str3, Throwable th) {
        this.f3336b = i;
        this.f3337c = j;
        this.f3335a = str;
        this.f3338d = str2;
        this.f3339e = str3;
        this.f3340f = th;
    }

    /* renamed from: a */
    public final byte[] m4707a() {
        DataOutputStream dataOutputStream;
        Throwable th;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            } catch (IOException e) {
                dataOutputStream = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            dataOutputStream.writeShort(this.f3336b);
            dataOutputStream.writeLong(this.f3337c);
            dataOutputStream.writeUTF(this.f3335a);
            dataOutputStream.writeUTF(this.f3338d);
            dataOutputStream.writeUTF(this.f3339e);
            if (this.f3340f != null) {
                if ("uncaught".equals(this.f3335a)) {
                    dataOutputStream.writeByte(3);
                } else {
                    dataOutputStream.writeByte(2);
                }
                dataOutputStream.writeByte(2);
                StringBuilder sb = new StringBuilder("");
                String property = System.getProperty("line.separator");
                for (StackTraceElement stackTraceElement : this.f3340f.getStackTrace()) {
                    sb.append(stackTraceElement);
                    sb.append(property);
                }
                if (this.f3340f.getCause() != null) {
                    sb.append(property);
                    sb.append("Caused by: ");
                    for (StackTraceElement stackTraceElement2 : this.f3340f.getCause().getStackTrace()) {
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
            C0505md.m4487a(dataOutputStream);
        } catch (IOException e2) {
            dataOutputStream2 = dataOutputStream;
            byte[] bArr2 = new byte[0];
            C0505md.m4487a(dataOutputStream);
            bArr = bArr2;
            return bArr;
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream2 = dataOutputStream;
            C0505md.m4487a(dataOutputStream2);
            throw th;
        }
        return bArr;
    }
}
