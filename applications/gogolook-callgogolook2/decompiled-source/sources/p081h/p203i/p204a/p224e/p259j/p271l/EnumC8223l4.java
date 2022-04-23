package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.l4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l4.class */
public enum EnumC8223l4 implements AbstractC8286o9 {
    NO_ERROR(0),
    INCOMPATIBLE_INPUT(1),
    INCOMPATIBLE_OUTPUT(2),
    INCOMPATIBLE_TFLITE_VERSION(3),
    MISSING_OP(4),
    DATA_TYPE_ERROR(6),
    TFLITE_INTERNAL_ERROR(7),
    TFLITE_UNKNOWN_ERROR(8),
    MEDIAPIPE_ERROR(9),
    TIME_OUT_FETCHING_MODEL_METADATA(5),
    MODEL_NOT_DOWNLOADED(100),
    URI_EXPIRED(101),
    NO_NETWORK_CONNECTION(102),
    METERED_NETWORK(103),
    DOWNLOAD_FAILED(104),
    MODEL_INFO_DOWNLOAD_UNSUCCESSFUL_HTTP_STATUS(105),
    MODEL_INFO_DOWNLOAD_NO_HASH(106),
    MODEL_INFO_DOWNLOAD_CONNECTION_FAILED(107),
    NO_VALID_MODEL(108),
    LOCAL_MODEL_INVALID(109),
    REMOTE_MODEL_INVALID(110),
    REMOTE_MODEL_LOADER_ERROR(111),
    REMOTE_MODEL_LOADER_LOADS_NO_MODEL(112),
    SMART_REPLY_LANG_ID_DETECTAION_FAILURE(113),
    MODEL_NOT_REGISTERED(114),
    MODEL_TYPE_MISUSE(115),
    MODEL_HASH_MISMATCH(116),
    UNKNOWN_ERROR(9999);
    

    /* renamed from: a */
    public final int f19058a;

    static {
        new AbstractC8338r9<EnumC8223l4>() { // from class: h.i.a.e.j.l.n4
        };
    }

    EnumC8223l4(int i) {
        this.f19058a = i;
    }

    /* renamed from: b */
    public static AbstractC8319q9 m18364b() {
        return C8244m4.f19084a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8286o9
    /* renamed from: a */
    public final int mo17910a() {
        return this.f19058a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + EnumC8223l4.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.f19058a + " name=" + name() + '>';
    }
}
