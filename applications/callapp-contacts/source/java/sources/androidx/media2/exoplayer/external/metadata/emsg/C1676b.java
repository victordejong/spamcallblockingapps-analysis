package androidx.media2.exoplayer.external.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.metadata.emsg.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/b.class */
public final class C1676b {

    /* renamed from: a */
    private final ByteArrayOutputStream f6678a;

    /* renamed from: b */
    private final DataOutputStream f6679b;

    public C1676b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f6678a = byteArrayOutputStream;
        this.f6679b = new DataOutputStream(byteArrayOutputStream);
    }

    /* renamed from: a */
    private static void m42403a(DataOutputStream dataOutputStream, long j) throws IOException {
        dataOutputStream.writeByte(((int) (j >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j) & 255);
    }

    /* renamed from: a */
    private static void m42402a(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    /* renamed from: a */
    public final byte[] m42404a(EventMessage eventMessage) {
        this.f6678a.reset();
        try {
            m42402a(this.f6679b, eventMessage.schemeIdUri);
            m42402a(this.f6679b, eventMessage.value != null ? eventMessage.value : "");
            m42403a(this.f6679b, eventMessage.durationMs);
            m42403a(this.f6679b, eventMessage.f6677id);
            this.f6679b.write(eventMessage.messageData);
            this.f6679b.flush();
            return this.f6678a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
