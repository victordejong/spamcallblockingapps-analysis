package okhttp3.internal.http2;
/* renamed from: okhttp3.internal.http2.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/a.class */
public enum EnumC2036a {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);
    

    /* renamed from: l */
    public final int f5120l;

    EnumC2036a(int i) {
        this.f5120l = i;
    }

    /* renamed from: a */
    public static EnumC2036a m2211a(int i) {
        EnumC2036a[] values;
        for (EnumC2036a enumC2036a : values()) {
            if (enumC2036a.f5120l == i) {
                return enumC2036a;
            }
        }
        return null;
    }
}
