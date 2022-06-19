package okhttp3.internal.http2;
/* renamed from: okhttp3.internal.http2.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/a.class */
public enum EnumC5486a {
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
    public final int f22894l;

    EnumC5486a(int i) {
        this.f22894l = i;
    }

    /* renamed from: a */
    public static EnumC5486a m529a(int i) {
        EnumC5486a enumC5486a;
        EnumC5486a[] values = values();
        int length = values.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                enumC5486a = null;
                break;
            }
            enumC5486a = values[i2];
            if (enumC5486a.f22894l == i) {
                break;
            }
            i2++;
        }
        return enumC5486a;
    }
}
