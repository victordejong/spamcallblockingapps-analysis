package p646n.p649b.p650a;

import org.tensorflow.lite.TensorFlowLite;
/* renamed from: n.b.a.a */
/* loaded from: classes3-dex2jar.jar:n/b/a/a.class */
public enum EnumC15200a {
    FLOAT32(1),
    INT32(2),
    UINT8(3),
    INT64(4),
    STRING(5),
    INT8(9);
    

    /* renamed from: h */
    public static final EnumC15200a[] f33216h = values();

    /* renamed from: a */
    public final int f33218a;

    /* renamed from: n.b.a.a$a */
    /* loaded from: classes3-dex2jar.jar:n/b/a/a$a.class */
    public static /* synthetic */ class C15201a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33219a = new int[EnumC15200a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            try {
                f33219a[EnumC15200a.FLOAT32.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33219a[EnumC15200a.INT32.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33219a[EnumC15200a.INT8.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33219a[EnumC15200a.UINT8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f33219a[EnumC15200a.INT64.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f33219a[EnumC15200a.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    EnumC15200a(int i) {
        this.f33218a = i;
    }

    /* renamed from: a */
    public static EnumC15200a m246a(int i) {
        EnumC15200a[] aVarArr;
        for (EnumC15200a aVar : f33216h) {
            if (aVar.f33218a == i) {
                return aVar;
            }
        }
        throw new IllegalArgumentException("DataType error: DataType " + i + " is not recognized in Java (version " + TensorFlowLite.m11b() + ")");
    }

    /* renamed from: a */
    public int m247a() {
        switch (C15201a.f33219a[ordinal()]) {
            case 1:
            case 2:
                return 4;
            case 3:
            case 4:
                return 1;
            case 5:
                return 8;
            case 6:
                return -1;
            default:
                throw new IllegalArgumentException("DataType error: DataType " + this + " is not supported yet");
        }
    }

    /* renamed from: b */
    public String m245b() {
        switch (C15201a.f33219a[ordinal()]) {
            case 1:
                return "float";
            case 2:
                return "int";
            case 3:
            case 4:
                return "byte";
            case 5:
                return "long";
            case 6:
                return "string";
            default:
                throw new IllegalArgumentException("DataType error: DataType " + this + " is not supported yet");
        }
    }
}
