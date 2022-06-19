package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\b\u0007\u0018�� \u00122\u00020\u0001:\u0001\u0013B-\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;", "", "", "state", "Ljava/lang/String;", "getState", "()Ljava/lang/String;", "", RemoteMessageConst.TTL, "J", "getTtl", "()J", "installationId", "getInstallationId", "domain", "getDomain", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "Companion", "a", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/ExchangeCredentialsResponseDto.class */
public final class ExchangeCredentialsResponseDto {
    public static final C2772a Companion = new C2772a(null);
    public static final String STATE_ACCEPTED = "accepted";
    public static final String STATE_EXCHANGED = "exchanged";
    private final String domain;
    private final String installationId;
    private final String state;
    private final long ttl;

    /* renamed from: com.truecaller.account.network.ExchangeCredentialsResponseDto$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/ExchangeCredentialsResponseDto$a.class */
    public static final class C2772a {
        public C2772a(f fVar) {
        }
    }

    public ExchangeCredentialsResponseDto(String str, String str2, String str3, long j) {
        l.e(str2, "state");
        this.installationId = str;
        this.state = str2;
        this.domain = str3;
        this.ttl = j;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getInstallationId() {
        return this.installationId;
    }

    public final String getState() {
        return this.state;
    }

    public final long getTtl() {
        return this.ttl;
    }
}
