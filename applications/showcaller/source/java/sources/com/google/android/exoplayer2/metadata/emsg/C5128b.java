package com.google.android.exoplayer2.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.metadata.emsg.b */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/b.class */
public final class C5128b {

    /* renamed from: a */
    private final ByteArrayOutputStream f16096a;

    /* renamed from: b */
    private final DataOutputStream f16097b;

    public C5128b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f16096a = byteArrayOutputStream;
        this.f16097b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: b */
    private static void m20381b(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    /* renamed from: c */
    private static void m20380c(DataOutputStream dataOutputStream, long j) {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }

    /* renamed from: a */
    public byte[] m20382a(EventMessage eventMessage) {
        this.f16096a.reset();
        try {
            m20381b(this.f16097b, eventMessage.f16090f);
            String str = eventMessage.f16091g;
            if (str == null) {
                str = "";
            }
            m20381b(this.f16097b, str);
            m20380c(this.f16097b, eventMessage.f16092h);
            m20380c(this.f16097b, eventMessage.f16093i);
            this.f16097b.write(eventMessage.f16094j);
            this.f16097b.flush();
            return this.f16096a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
