package androidx.media2.exoplayer.external.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/emsg/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f3450a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f3451b;

    public b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f3450a = byteArrayOutputStream;
        this.f3451b = new DataOutputStream(byteArrayOutputStream);
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
        this.f3450a.reset();
        try {
            a(this.f3451b, eventMessage.schemeIdUri);
            a(this.f3451b, eventMessage.value != null ? eventMessage.value : "");
            a(this.f3451b, eventMessage.durationMs);
            a(this.f3451b, eventMessage.id);
            this.f3451b.write(eventMessage.messageData);
            this.f3451b.flush();
            return this.f3450a.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
