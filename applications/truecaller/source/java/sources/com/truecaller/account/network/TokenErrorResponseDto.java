package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\b\u0007\u0018�� \u00132\u00020\u0001:\u0001\u0014B'\u0012\b\b\u0001\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/truecaller/account/network/TokenErrorResponseDto;", "", "", "message", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "", "nextCallDuration", "Ljava/lang/Long;", "getNextCallDuration", "()Ljava/lang/Long;", "", UpdateKey.STATUS, "I", "getStatus", "()I", "<init>", "(ILjava/lang/String;Ljava/lang/Long;)V", "Companion", "a", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/TokenErrorResponseDto.class */
public final class TokenErrorResponseDto {
    public static final C2775a Companion = new C2775a(null);
    public static final int STATUS_APPLICATION_NOT_SUPPORTED = 40002;
    public static final int STATUS_CLIENT_SECRET_WRONG = 40004;
    public static final int STATUS_INCORRECT_PRIVACY_SELECTION = 40012;
    public static final int STATUS_INTERNAL_SERVER_ERROR = 50002;
    public static final int STATUS_INVALID_BODY_FORMAT = 40001;
    public static final int STATUS_INVALID_PHONE_NUMBER = 40003;
    public static final int STATUS_MOBILE_SERVICES_MISSING = 40302;
    public static final int STATUS_NUMBER_ALREADY_REGISTERED = 40011;
    public static final int STATUS_NUMBER_BLOCKED = 40106;
    public static final int STATUS_VERIFICATION_UNAVAILABLE_LEGAL = 45101;
    private final String message;
    private final Long nextCallDuration;
    private final int status;

    /* renamed from: com.truecaller.account.network.TokenErrorResponseDto$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/TokenErrorResponseDto$a.class */
    public static final class C2775a {
        public C2775a(f fVar) {
        }
    }

    public TokenErrorResponseDto(int i, String str, Long l) {
        this.status = i;
        this.message = str;
        this.nextCallDuration = l;
    }

    public /* synthetic */ TokenErrorResponseDto(int i, String str, Long l, int i2, f fVar) {
        this(i, str, (i2 & 4) != 0 ? null : l);
    }

    public final String getMessage() {
        return this.message;
    }

    public final Long getNextCallDuration() {
        return this.nextCallDuration;
    }

    public final int getStatus() {
        return this.status;
    }
}
