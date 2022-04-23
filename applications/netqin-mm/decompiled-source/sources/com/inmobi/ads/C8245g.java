package com.inmobi.ads;

import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.NetworkError;
/* renamed from: com.inmobi.ads.g */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/g.class */
public final class C8245g {

    /* renamed from: a */
    public C8384d f32157a;

    /* renamed from: b */
    public InMobiAdRequestStatus f32158b;

    /* renamed from: c */
    public C8240f f32159c;

    /* renamed from: com.inmobi.ads.g$1 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/g$1.class */
    public static final /* synthetic */ class C82461 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f32160a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[NetworkError.ErrorCode.values().length];
            f32160a = iArr;
            try {
                iArr[NetworkError.ErrorCode.NETWORK_UNAVAILABLE_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32160a[NetworkError.ErrorCode.BAD_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32160a[NetworkError.ErrorCode.HTTP_GATEWAY_TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f32160a[NetworkError.ErrorCode.HTTP_INTERNAL_SERVER_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32160a[NetworkError.ErrorCode.HTTP_NOT_IMPLEMENTED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f32160a[NetworkError.ErrorCode.HTTP_BAD_GATEWAY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f32160a[NetworkError.ErrorCode.HTTP_SERVER_NOT_AVAILABLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f32160a[NetworkError.ErrorCode.HTTP_VERSION_NOT_SUPPORTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f32160a[NetworkError.ErrorCode.GDPR_COMPLIANCE_ENFORCED.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    public C8245g(C8240f fVar, C8384d dVar) {
        this.f32159c = fVar;
        this.f32157a = dVar;
        NetworkError networkError = dVar.f32624b;
        if (networkError != null) {
            switch (C82461.f32160a[networkError.f32582a.ordinal()]) {
                case 1:
                    this.f32158b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
                    return;
                case 2:
                    InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID);
                    this.f32158b = inMobiAdRequestStatus;
                    String str = this.f32157a.f32624b.f32583b;
                    if (str != null) {
                        inMobiAdRequestStatus.setCustomMessage(str);
                        return;
                    }
                    return;
                case 3:
                    this.f32158b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT);
                    return;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    this.f32158b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.SERVER_ERROR);
                    return;
                case 9:
                    this.f32158b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED);
                    return;
                default:
                    this.f32158b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
                    return;
            }
        }
    }
}
