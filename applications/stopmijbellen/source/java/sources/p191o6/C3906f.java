package p191o6;

import com.google.protobuf.AbstractC1888i;
import java.util.Objects;
import p287x6.AbstractC4918p;
import p287x6.AbstractC4921s;
import p287x6.C4924v;
/* renamed from: o6.f */
/* loaded from: classes-dex2jar.jar:o6/f.class */
public final class C3906f extends AbstractC1888i<C3906f, C3908b> implements AbstractC4918p {
    public static final int CPU_CLOCK_RATE_KHZ_FIELD_NUMBER = 2;
    public static final int CPU_PROCESSOR_COUNT_FIELD_NUMBER = 6;
    private static final C3906f DEFAULT_INSTANCE;
    public static final int DEVICE_RAM_SIZE_KB_FIELD_NUMBER = 3;
    public static final int MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 4;
    public static final int MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER = 5;
    private static volatile AbstractC4921s<C3906f> PARSER;
    public static final int PROCESS_NAME_FIELD_NUMBER = 1;
    private int bitField0_;
    private int cpuClockRateKhz_;
    private int cpuProcessorCount_;
    private int deviceRamSizeKb_;
    private int maxAppJavaHeapMemoryKb_;
    private int maxEncouragedAppJavaHeapMemoryKb_;
    private String processName_ = "";

    /* renamed from: o6.f$b */
    /* loaded from: classes-dex2jar.jar:o6/f$b.class */
    public static final class C3908b extends AbstractC1888i.AbstractC1889a<C3906f, C3908b> implements AbstractC4918p {
        public C3908b() {
            super(C3906f.DEFAULT_INSTANCE);
        }

        public C3908b(C3907a c3907a) {
            super(C3906f.DEFAULT_INSTANCE);
        }
    }

    static {
        C3906f c3906f = new C3906f();
        DEFAULT_INSTANCE = c3906f;
        AbstractC1888i.m4285x(C3906f.class, c3906f);
    }

    /* renamed from: A */
    public static void m1698A(C3906f c3906f, int i) {
        c3906f.bitField0_ |= 16;
        c3906f.maxAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: B */
    public static void m1697B(C3906f c3906f, int i) {
        c3906f.bitField0_ |= 32;
        c3906f.maxEncouragedAppJavaHeapMemoryKb_ = i;
    }

    /* renamed from: C */
    public static void m1696C(C3906f c3906f, int i) {
        c3906f.bitField0_ |= 8;
        c3906f.deviceRamSizeKb_ = i;
    }

    /* renamed from: D */
    public static C3906f m1695D() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: F */
    public static C3908b m1693F() {
        return DEFAULT_INSTANCE.m4291q();
    }

    /* renamed from: z */
    public static void m1691z(C3906f c3906f, String str) {
        Objects.requireNonNull(c3906f);
        Objects.requireNonNull(str);
        c3906f.bitField0_ |= 1;
        c3906f.processName_ = str;
    }

    /* renamed from: E */
    public boolean m1694E() {
        return (this.bitField0_ & 16) != 0;
    }

    @Override // com.google.protobuf.AbstractC1888i
    /* renamed from: r */
    public final Object mo1597r(AbstractC1888i.EnumC1893e enumC1893e, Object obj, Object obj2) {
        switch (enumC1893e.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new C4924v(DEFAULT_INSTANCE, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဈ��\u0002င\u0001\u0003င\u0003\u0004င\u0004\u0005င\u0005\u0006င\u0002", new Object[]{"bitField0_", "processName_", "cpuClockRateKhz_", "deviceRamSizeKb_", "maxAppJavaHeapMemoryKb_", "maxEncouragedAppJavaHeapMemoryKb_", "cpuProcessorCount_"});
            case 3:
                return new C3906f();
            case 4:
                return new C3908b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                AbstractC4921s<C3906f> abstractC4921s = PARSER;
                AbstractC4921s<C3906f> abstractC4921s2 = abstractC4921s;
                if (abstractC4921s == null) {
                    synchronized (C3906f.class) {
                        try {
                            AbstractC4921s<C3906f> abstractC4921s3 = PARSER;
                            abstractC4921s2 = abstractC4921s3;
                            if (abstractC4921s3 == null) {
                                abstractC4921s2 = new AbstractC1888i.C1890b<>(DEFAULT_INSTANCE);
                                PARSER = abstractC4921s2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return abstractC4921s2;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
