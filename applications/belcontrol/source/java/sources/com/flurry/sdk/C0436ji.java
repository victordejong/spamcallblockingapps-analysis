package com.flurry.sdk;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.ji */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ji.class */
public final class C0436ji {

    /* renamed from: a */
    public String f3342a;

    /* renamed from: b */
    public boolean f3343b;

    /* renamed from: c */
    public boolean f3344c;

    /* renamed from: d */
    public long f3345d;

    /* renamed from: e */
    private final Map<String, String> f3346e;

    /* renamed from: f */
    private int f3347f;

    /* renamed from: g */
    private long f3348g;

    public C0436ji(int i, String str, Map<String, String> map, long j, boolean z) {
        HashMap hashMap = new HashMap();
        this.f3346e = hashMap;
        this.f3347f = i;
        this.f3342a = str;
        if (map != null) {
            hashMap.putAll(map);
        }
        this.f3348g = j;
        this.f3343b = z;
        this.f3344c = !z;
    }

    /* renamed from: a */
    public final Map<String, String> m4706a() {
        HashMap hashMap;
        synchronized (this) {
            hashMap = new HashMap(this.f3346e);
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m4705a(long j) {
        this.f3344c = true;
        this.f3345d = j - this.f3348g;
        C0478ku.m4596a(3, "FlurryAgent", "Ended event '" + this.f3342a + "' (" + this.f3348g + ") after " + this.f3345d + "ms");
    }

    /* renamed from: a */
    public final void m4704a(Map<String, String> map) {
        synchronized (this) {
            if (map != null) {
                this.f3346e.putAll(map);
            }
        }
    }

    /* renamed from: b */
    public final void m4702b(Map<String, String> map) {
        synchronized (this) {
            this.f3346e.clear();
            if (map != null) {
                this.f3346e.putAll(map);
            }
        }
    }

    /* renamed from: b */
    public final byte[] m4703b() {
        DataOutputStream dataOutputStream;
        Throwable th;
        byte[] bArr;
        synchronized (this) {
            DataOutputStream dataOutputStream2 = null;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                dataOutputStream2 = null;
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(this.f3347f);
                    dataOutputStream.writeUTF(this.f3342a);
                    dataOutputStream.writeShort(this.f3346e.size());
                    for (Map.Entry<String, String> entry : this.f3346e.entrySet()) {
                        dataOutputStream.writeUTF(C0505md.m4481b(entry.getKey()));
                        dataOutputStream.writeUTF(C0505md.m4481b(entry.getValue()));
                    }
                    dataOutputStream.writeLong(this.f3348g);
                    dataOutputStream.writeLong(this.f3345d);
                    dataOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    C0505md.m4487a(dataOutputStream);
                    bArr = byteArray;
                } catch (IOException e) {
                    C0505md.m4487a(dataOutputStream);
                    bArr = new byte[0];
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    C0505md.m4487a(dataOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                dataOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream = dataOutputStream2;
            }
        }
        return bArr;
    }
}
