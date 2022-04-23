package com.flurry.sdk;

import com.flurry.android.FlurryAgent;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.ib */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ib.class */
public final class C3261ib {

    /* renamed from: a */
    public String f5467a;

    /* renamed from: b */
    public boolean f5468b;

    /* renamed from: c */
    public boolean f5469c;

    /* renamed from: d */
    public long f5470d;

    /* renamed from: e */
    public final Map<String, String> f5471e = new HashMap();

    /* renamed from: f */
    public int f5472f;

    /* renamed from: g */
    public long f5473g;

    public C3261ib(int i, String str, Map<String, String> map, long j, boolean z) {
        this.f5472f = i;
        this.f5467a = str;
        if (map != null) {
            this.f5471e.putAll(map);
        }
        this.f5473g = j;
        this.f5468b = z;
        this.f5469c = !this.f5468b;
    }

    /* renamed from: a */
    public final Map<String, String> m32790a() {
        HashMap hashMap;
        synchronized (this) {
            hashMap = new HashMap(this.f5471e);
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m32789a(long j) {
        this.f5469c = true;
        this.f5470d = j - this.f5473g;
        C3356jq.m32615a(3, FlurryAgent.f3814a, "Ended event '" + this.f5467a + "' (" + this.f5473g + ") after " + this.f5470d + "ms");
    }

    /* renamed from: a */
    public final void m32788a(Map<String, String> map) {
        synchronized (this) {
            if (map != null) {
                this.f5471e.putAll(map);
            }
        }
    }

    /* renamed from: b */
    public final void m32786b(Map<String, String> map) {
        synchronized (this) {
            this.f5471e.clear();
            if (map != null) {
                this.f5471e.putAll(map);
            }
        }
    }

    /* renamed from: b */
    public final byte[] m32787b() {
        Throwable th;
        byte[] bArr;
        synchronized (this) {
            r9 = null;
            DataOutputStream dataOutputStream = null;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                dataOutputStream = null;
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(this.f5472f);
                    dataOutputStream.writeUTF(this.f5467a);
                    dataOutputStream.writeShort(this.f5471e.size());
                    for (Map.Entry<String, String> entry : this.f5471e.entrySet()) {
                        dataOutputStream.writeUTF(C3445la.m32458b(entry.getKey()));
                        dataOutputStream.writeUTF(C3445la.m32458b(entry.getValue()));
                    }
                    dataOutputStream.writeLong(this.f5473g);
                    dataOutputStream.writeLong(this.f5470d);
                    dataOutputStream.flush();
                    bArr = byteArrayOutputStream.toByteArray();
                    C3445la.m32465a(dataOutputStream);
                } catch (IOException e) {
                    C3445la.m32465a(dataOutputStream);
                    bArr = new byte[0];
                    return bArr;
                } catch (Throwable th2) {
                    th = th2;
                    C3445la.m32465a(dataOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return bArr;
    }
}
