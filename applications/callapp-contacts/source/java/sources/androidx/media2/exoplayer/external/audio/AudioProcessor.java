package androidx.media2.exoplayer.external.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioProcessor.class */
public interface AudioProcessor {

    /* renamed from: a */
    public static final ByteBuffer f5221a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

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

    /* renamed from: a */
    void mo42943a(ByteBuffer byteBuffer);

    /* renamed from: a */
    boolean mo42945a();

    /* renamed from: a */
    boolean mo42944a(int i, int i2, int i3) throws UnhandledFormatException;

    /* renamed from: b */
    int mo42951b();

    /* renamed from: c */
    int mo42950c();

    /* renamed from: d */
    int mo42949d();

    /* renamed from: e */
    void mo42948e();

    /* renamed from: f */
    ByteBuffer mo42942f();

    /* renamed from: g */
    boolean mo42941g();

    /* renamed from: h */
    void mo42947h();

    /* renamed from: i */
    void mo42946i();
}
