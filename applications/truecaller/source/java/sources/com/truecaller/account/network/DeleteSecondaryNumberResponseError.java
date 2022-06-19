package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import kotlin.Metadata;
import p193e.p194a.p1070n2.p1071a.AbstractC18470g;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t\b\u0007\u0018�� \u000e2\u00020\u0001:\u0001\u000fB\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010"}, d2 = {"Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;", "Le/a/n2/a/g;", "", UpdateKey.STATUS, "I", "getStatus", "()I", "", "message", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", "<init>", "(ILjava/lang/String;)V", "Companion", "a", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/DeleteSecondaryNumberResponseError.class */
public final class DeleteSecondaryNumberResponseError extends AbstractC18470g {
    public static final C2771a Companion = new C2771a(null);
    public static final int STATUS_NUMBER_NOT_FOUND = 40406;
    private final String message;
    private final int status;

    /* renamed from: com.truecaller.account.network.DeleteSecondaryNumberResponseError$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/DeleteSecondaryNumberResponseError$a.class */
    public static final class C2771a {
        public C2771a(f fVar) {
        }
    }

    public DeleteSecondaryNumberResponseError(int i, String str) {
        super(null);
        this.status = i;
        this.message = str;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getStatus() {
        return this.status;
    }
}
