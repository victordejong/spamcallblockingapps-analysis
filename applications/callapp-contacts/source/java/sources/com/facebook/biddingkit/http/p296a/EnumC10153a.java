package com.facebook.biddingkit.http.p296a;

import com.explorestack.protobuf.openrtb.LossReason;
/* renamed from: com.facebook.biddingkit.http.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/a/a.class */
public enum EnumC10153a {
    SUCCESS(200),
    NO_BID(LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE),
    BAD_REQUEST(400),
    TIMEOUT(504),
    UNKNOWN(-1);
    
    private int mStatusCode;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.biddingkit.http.a.a$1 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/a/a$1.class */
    public static final /* synthetic */ class C101541 {

        /* renamed from: a */
        static final /* synthetic */ int[] f33565a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC10153a.values().length];
            f33565a = iArr;
            try {
                iArr[EnumC10153a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33565a[EnumC10153a.NO_BID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33565a[EnumC10153a.BAD_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33565a[EnumC10153a.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    EnumC10153a(int i) {
        this.mStatusCode = i;
    }

    public static EnumC10153a getValue(int i) {
        EnumC10153a[] values;
        for (EnumC10153a enumC10153a : values()) {
            if (enumC10153a.mStatusCode == i) {
                return enumC10153a;
            }
        }
        return UNKNOWN;
    }

    public final String getErrorMessage() {
        int i = C101541.f33565a[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown error" : "Server timeout" : "Invalid request" : "No bid" : "";
    }

    public final int getStatusCode() {
        return this.mStatusCode;
    }
}
