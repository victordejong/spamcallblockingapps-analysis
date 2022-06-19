package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import p193e.p194a.p1070n2.p1071a.AbstractC18468e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0007\u0018��2\u00020\u0001B?\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u000e\u001a\u0004\b\u0016\u0010\u0010R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0004\u001a\u0004\b\u0018\u0010\u0006¨\u0006\u001b"}, d2 = {"Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;", "Le/a/n2/a/e;", "", RemoteMessageConst.TTL, "Ljava/lang/Long;", "getTtl", "()Ljava/lang/Long;", "", "suspended", "Ljava/lang/Boolean;", "getSuspended", "()Ljava/lang/Boolean;", "", "installationId", "Ljava/lang/String;", "getInstallationId", "()Ljava/lang/String;", "nextCallDuration", "J", "getNextCallDuration", "()J", "domain", "getDomain", "nextSuspensionCheck", "getNextSuspensionCheck", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/CheckCredentialsResponseSuccessDto.class */
public final class CheckCredentialsResponseSuccessDto extends AbstractC18468e {
    private final String domain;
    private final String installationId;
    private final long nextCallDuration;
    private final Long nextSuspensionCheck;
    private final Boolean suspended;
    private final Long ttl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckCredentialsResponseSuccessDto(long j, String str, String str2, Long l, Boolean bool, Long l2) {
        super(null);
        l.e(str, "domain");
        this.nextCallDuration = j;
        this.domain = str;
        this.installationId = str2;
        this.ttl = l;
        this.suspended = bool;
        this.nextSuspensionCheck = l2;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getInstallationId() {
        return this.installationId;
    }

    public final long getNextCallDuration() {
        return this.nextCallDuration;
    }

    public final Long getNextSuspensionCheck() {
        return this.nextSuspensionCheck;
    }

    public final Boolean getSuspended() {
        return this.suspended;
    }

    public final Long getTtl() {
        return this.ttl;
    }
}
