package com.google.android.gms.internal.ads;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.x7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x7.class */
public final class C7135x7 {

    /* renamed from: a */
    private final ByteArrayOutputStream f31923a;

    /* renamed from: b */
    private final DataOutputStream f31924b;

    public C7135x7() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f31923a = byteArrayOutputStream;
        this.f31924b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: b */
    private static void m9334b(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    /* renamed from: a */
    public final byte[] m9335a(zzaiz zzaizVar) {
        this.f31923a.reset();
        try {
            m9334b(this.f31924b, zzaizVar.f33475f);
            String str = zzaizVar.f33476g;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            m9334b(this.f31924b, str2);
            this.f31924b.writeLong(zzaizVar.f33477h);
            this.f31924b.writeLong(zzaizVar.f33478i);
            this.f31924b.write(zzaizVar.f33479j);
            this.f31924b.flush();
            return this.f31923a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
