package com.truecaller.suspension.data;

import androidx.annotation.Keep;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import kotlin.Metadata;
import p193e.p194a.p786g0.p790l.AbstractC14404d;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/suspension/data/UnSuspendAccountErrorResponseDto;", "Le/a/g0/l/d;", "", UpdateKey.STATUS, "I", "getStatus", "()I", "<init>", "(I)V", "account-suspension_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes14-dex2jar.jar:com/truecaller/suspension/data/UnSuspendAccountErrorResponseDto.class */
public final class UnSuspendAccountErrorResponseDto extends AbstractC14404d {
    private final int status;

    public UnSuspendAccountErrorResponseDto(int i) {
        super(null);
        this.status = i;
    }

    public final int getStatus() {
        return this.status;
    }
}
