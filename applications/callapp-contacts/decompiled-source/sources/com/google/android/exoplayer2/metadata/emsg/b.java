package com.google.android.exoplayer2.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/emsg/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f21441a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f21442b;

    public b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f21441a = byteArrayOutputStream;
        this.f21442b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void a(DataOutputStream dataOutputStream, long j) throws IOException {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }

    private static void a(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public final byte[] a(EventMessage eventMessage) {
        this.f21441a.reset();
        try {
            a(this.f21442b, eventMessage.schemeIdUri);
            a(this.f21442b, eventMessage.value != null ? eventMessage.value : "");
            a(this.f21442b, eventMessage.durationMs);
            a(this.f21442b, eventMessage.id);
            this.f21442b.write(eventMessage.messageData);
            this.f21442b.flush();
            return this.f21441a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
