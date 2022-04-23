package com.facebook.biddingkit.http.a;

import com.explorestack.protobuf.openrtb.LossReason;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/a/a.class */
public enum a {
    SUCCESS(200),
    NO_BID(LossReason.LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT_VALUE),
    BAD_REQUEST(400),
    TIMEOUT(504),
    UNKNOWN(-1);
    
    private int mStatusCode;

    /* renamed from: com.facebook.biddingkit.http.a.a$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/a/a$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f19753a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f19753a = iArr;
            try {
                iArr[a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19753a[a.NO_BID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19753a[a.BAD_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19753a[a.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    a(int i) {
        this.mStatusCode = i;
    }

    public static a getValue(int i) {
        a[] values;
        for (a aVar : values()) {
            if (aVar.mStatusCode == i) {
                return aVar;
            }
        }
        return UNKNOWN;
    }

    public final String getErrorMessage() {
        int i = AnonymousClass1.f19753a[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown error" : "Server timeout" : "Invalid request" : "No bid" : "";
    }

    public final int getStatusCode() {
        return this.mStatusCode;
    }
}
