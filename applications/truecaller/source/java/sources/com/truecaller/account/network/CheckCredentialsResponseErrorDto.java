package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/truecaller/account/network/CheckCredentialsResponseErrorDto;", "", "", RemoteMessageConst.TTL, "Ljava/lang/Long;", "getTtl", "()Ljava/lang/Long;", "", UpdateKey.STATUS, "I", "getStatus", "()I", "<init>", "(ILjava/lang/Long;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/CheckCredentialsResponseErrorDto.class */
public final class CheckCredentialsResponseErrorDto {
    private final int status;
    private final Long ttl;

    public CheckCredentialsResponseErrorDto(int i, Long l) {
        this.status = i;
        this.ttl = l;
    }

    public final int getStatus() {
        return this.status;
    }

    public final Long getTtl() {
        return this.ttl;
    }
}
