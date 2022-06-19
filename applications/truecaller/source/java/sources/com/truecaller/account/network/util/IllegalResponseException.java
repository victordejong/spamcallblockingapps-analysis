package com.truecaller.account.network.util;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0003\u0018��2\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/account/network/util/IllegalResponseException;", "", "", "body", "exception", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/util/IllegalResponseException.class */
public final class IllegalResponseException extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IllegalResponseException(String str, Throwable th) {
        super(str, th);
        l.e(th, "exception");
    }
}
