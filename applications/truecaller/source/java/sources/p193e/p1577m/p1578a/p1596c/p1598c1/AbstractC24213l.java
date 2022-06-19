package p193e.p1577m.p1578a.p1596c.p1598c1;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/l.class */
public interface AbstractC24213l {

    /* renamed from: a */
    public static final ByteBuffer f67021a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* renamed from: e.m.a.c.c1.l$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/l$a.class */
    public static final class C24214a {

        /* renamed from: e */
        public static final C24214a f67022e = new C24214a(-1, -1, -1);

        /* renamed from: a */
        public final int f67023a;

        /* renamed from: b */
        public final int f67024b;

        /* renamed from: c */
        public final int f67025c;

        /* renamed from: d */
        public final int f67026d;

        public C24214a(int i, int i2, int i3) {
            this.f67023a = i;
            this.f67024b = i2;
            this.f67025c = i3;
            this.f67026d = C24773d0.m4603u(i3) ? C24773d0.m4611m(i3, i2) : -1;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("AudioFormat[sampleRate=");
            m8728C.append(this.f67023a);
            m8728C.append(", channelCount=");
            m8728C.append(this.f67024b);
            m8728C.append(", encoding=");
            return C22128a.m8701I2(m8728C, this.f67025c, ']');
        }
    }

    /* renamed from: e.m.a.c.c1.l$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/l$b.class */
    public static final class C24215b extends Exception {
        public C24215b(C24214a c24214a) {
            super("Unhandled format: " + c24214a);
        }
    }

    /* renamed from: a */
    C24214a mo5436a(C24214a c24214a) throws C24215b;

    /* renamed from: b */
    boolean mo5402b();

    /* renamed from: c */
    boolean mo5435c();

    /* renamed from: d */
    void mo5401d(ByteBuffer byteBuffer);

    /* renamed from: e */
    void mo5434e();

    /* renamed from: f */
    ByteBuffer mo5433f();

    void flush();

    void reset();
}
