package com.truecaller.suspension.data;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p194a.p786g0.p790l.AbstractC14404d;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\b\u0007\u0018�� \u00132\u00020\u0001:\u0001\u0014B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto;", "Le/a/g0/l/d;", "", AnalyticsConstants.SUCCESS, "Z", "getSuccess", "()Z", "", "reason", "Ljava/lang/String;", "getReason", "()Ljava/lang/String;", "", RemoteMessageConst.TTL, "Ljava/lang/Long;", "getTtl", "()Ljava/lang/Long;", "<init>", "(ZLjava/lang/String;Ljava/lang/Long;)V", "Companion", "a", "account-suspension_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto.class */
public final class UnSuspendAccountSuccessResponseDto extends AbstractC14404d {
    public static final C4588a Companion = new C4588a(null);
    public static final String REASON_ERROR = "error";
    public static final String REASON_INVALID = "invalid";
    public static final String REASON_THROTTLED = "throttled";
    private final String reason;
    private final boolean success;
    private final Long ttl;

    /* renamed from: com.truecaller.suspension.data.UnSuspendAccountSuccessResponseDto$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/data/UnSuspendAccountSuccessResponseDto$a.class */
    public static final class C4588a {
        public C4588a(f fVar) {
        }
    }

    public UnSuspendAccountSuccessResponseDto(boolean z, String str, Long l) {
        super(null);
        this.success = z;
        this.reason = str;
        this.ttl = l;
    }

    public final String getReason() {
        return this.reason;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final Long getTtl() {
        return this.ttl;
    }
}
