package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� 22\u00020\u0001:\u00013B¥\u0001\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010$\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010&\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\f\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010(\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010,\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*¢\u0006\u0004\b0\u00101R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u0014\u0010\u0006R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0010R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0004\u001a\u0004\b\u0018\u0010\u0006R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0004\u001a\u0004\b\u001a\u0010\u0006R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006R\u001b\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001b\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\"\u0010\u0004\u001a\u0004\b#\u0010\u0006R\u001b\u0010$\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b$\u0010\u000e\u001a\u0004\b%\u0010\u0010R\u001b\u0010&\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b&\u0010\u000e\u001a\u0004\b'\u0010\u0010R\u001b\u0010(\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b(\u0010\u000e\u001a\u0004\b)\u0010\u0010R!\u0010,\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*8\u0006@\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/¨\u00064"}, d2 = {"Lcom/truecaller/account/network/TokenResponseDto;", "", "", "message", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "", UpdateKey.STATUS, "I", "getStatus", "()I", "", "backupTime", "Ljava/lang/Long;", "getBackupTime", "()Ljava/lang/Long;", "requestId", "getRequestId", "domain", "getDomain", RemoteMessageConst.TTL, "getTtl", AnalyticsConstants.METHOD, "getMethod", "installationId", "getInstallationId", "parsedCountryCode", "getParsedCountryCode", "", "suspended", "Ljava/lang/Boolean;", "getSuspended", "()Ljava/lang/Boolean;", "pattern", "getPattern", "parsedPhoneNumber", "getParsedPhoneNumber", "tokenTtl", "getTokenTtl", "userId", "getUserId", "", "Lcom/truecaller/account/network/VerificationPhoneNumber;", "phones", "Ljava/util/List;", "getPhones", "()Ljava/util/List;", "<init>", "(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/util/List;)V", "Companion", "a", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/TokenResponseDto.class */
public final class TokenResponseDto {
    public static final C2776a Companion = new C2776a(null);
    public static final String METHOD_CALL = "call";
    public static final String METHOD_SMS = "sms";
    public static final int STATUS_ACCOUNT_CREATED = 19;
    public static final int STATUS_ACCOUNT_RECOVERED = 18;
    public static final int STATUS_ALREADY_VERIFIED = 3;
    public static final int STATUS_ATTESTATION_REQUIRED = 20001;
    public static final int STATUS_BACKUP_FOUND = 17;
    public static final int STATUS_CHANGE_ACCOUNT = 20;
    public static final int STATUS_PHONE_NUMBER_BLOCKED = 21;
    public static final int STATUS_PHONE_NUMBER_BLOCKED_REUSE = 6;
    public static final int STATUS_PHONE_NUMBER_LIMIT_REACHED = 5;
    public static final int STATUS_REQUEST_ID_LIMIT_REACHED = 4;
    public static final int STATUS_SUCCESS_NOT_STORED = 12;
    public static final int STATUS_TOKEN_INVALID = 11;
    public static final int STATUS_TOKEN_PENDING = 9;
    public static final int STATUS_TOKEN_RETRY_LIMIT_REACHED = 7;
    public static final int STATUS_TOKEN_SENT = 1;
    public static final int STATUS_TOKEN_TIMED_OUT = 8;
    public static final int STATUS_VERIFICATION_FAILED = 20003;
    public static final int STATUS_VERIFICATION_FAILED_THROTTLED = 20002;
    public static final int STATUS_VERIFIED = 2;
    private final Long backupTime;
    private final String domain;
    private final String installationId;
    private final String message;
    private final String method;
    private final String parsedCountryCode;
    private final Long parsedPhoneNumber;
    private final String pattern;
    private final List<VerificationPhoneNumber> phones;
    private final String requestId;
    private final int status;
    private final Boolean suspended;
    private final Long tokenTtl;
    private final Long ttl;
    private final Long userId;

    /* renamed from: com.truecaller.account.network.TokenResponseDto$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/TokenResponseDto$a.class */
    public static final class C2776a {
        public C2776a(f fVar) {
        }
    }

    public TokenResponseDto(int i, String str, Long l, String str2, String str3, String str4, String str5, Long l2, Long l3, String str6, String str7, Long l4, Boolean bool, Long l5, List<VerificationPhoneNumber> list) {
        this.status = i;
        this.message = str;
        this.parsedPhoneNumber = l;
        this.parsedCountryCode = str2;
        this.domain = str3;
        this.requestId = str4;
        this.method = str5;
        this.tokenTtl = l2;
        this.ttl = l3;
        this.pattern = str6;
        this.installationId = str7;
        this.userId = l4;
        this.suspended = bool;
        this.backupTime = l5;
        this.phones = list;
    }

    public final Long getBackupTime() {
        return this.backupTime;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getInstallationId() {
        return this.installationId;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getMethod() {
        return this.method;
    }

    public final String getParsedCountryCode() {
        return this.parsedCountryCode;
    }

    public final Long getParsedPhoneNumber() {
        return this.parsedPhoneNumber;
    }

    public final String getPattern() {
        return this.pattern;
    }

    public final List<VerificationPhoneNumber> getPhones() {
        return this.phones;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final int getStatus() {
        return this.status;
    }

    public final Boolean getSuspended() {
        return this.suspended;
    }

    public final Long getTokenTtl() {
        return this.tokenTtl;
    }

    public final Long getTtl() {
        return this.ttl;
    }

    public final Long getUserId() {
        return this.userId;
    }
}
