package com.google.android.exoplayer2.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.metadata.emsg.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/b.class */
public final class C11204b {

    /* renamed from: a */
    private final ByteArrayOutputStream f36766a;

    /* renamed from: b */
    private final DataOutputStream f36767b;

    public C11204b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f36766a = byteArrayOutputStream;
        this.f36767b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: a */
    private static void m21208a(DataOutputStream dataOutputStream, long j) throws IOException {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }

    /* renamed from: a */
    private static void m21207a(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    /* renamed from: a */
    public final byte[] m21209a(EventMessage eventMessage) {
        this.f36766a.reset();
        try {
            m21207a(this.f36767b, eventMessage.schemeIdUri);
            m21207a(this.f36767b, eventMessage.value != null ? eventMessage.value : "");
            m21208a(this.f36767b, eventMessage.durationMs);
            m21208a(this.f36767b, eventMessage.f36765id);
            this.f36767b.write(eventMessage.messageData);
            this.f36767b.flush();
            return this.f36766a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
