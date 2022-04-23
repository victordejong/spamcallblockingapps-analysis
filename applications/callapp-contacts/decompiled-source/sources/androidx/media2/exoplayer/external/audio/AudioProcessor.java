package androidx.media2.exoplayer.external.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioProcessor.class */
public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f2838a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException.class */
    public static final class UnhandledFormatException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnhandledFormatException(int r5, int r6, int r7) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 78
                r1.<init>(r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "Unhandled format: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = " Hz, "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = " channels in encoding "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r8
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioProcessor.UnhandledFormatException.<init>(int, int, int):void");
        }
    }

    void a(ByteBuffer byteBuffer);

    boolean a();

    boolean a(int i, int i2, int i3) throws UnhandledFormatException;

    int b();

    int c();

    int d();

    void e();

    ByteBuffer f();

    boolean g();

    void h();

    void i();
}
