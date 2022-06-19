package com.truecaller.sdk.oAuth.networking.data.error;

import androidx.annotation.Keep;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.C21114a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J0\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0007J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0019\u001a\u0004\b\u001b\u0010\u0007¨\u0006\u001e"}, d2 = {"Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;", "Le/a/v4/s0/l/e/b/a;", "", "errorCode", "()I", "", "errorMessage", "()Ljava/lang/String;", "component1", "component2", "component3", UpdateKey.STATUS, "message", "details", "copy", "(ILjava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getStatus", "Ljava/lang/String;", "getMessage", "getDetails", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/error/InternalApiError.class */
public final class InternalApiError extends C21114a {
    private final String details;
    private final String message;
    private final int status;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalApiError(int i, String str, String str2) {
        super(0, null, 3, null);
        l.e(str, "message");
        this.status = i;
        this.message = str;
        this.details = str2;
    }

    public static /* synthetic */ InternalApiError copy$default(InternalApiError internalApiError, int i, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = internalApiError.status;
        }
        if ((i2 & 2) != 0) {
            str = internalApiError.message;
        }
        if ((i2 & 4) != 0) {
            str2 = internalApiError.details;
        }
        return internalApiError.copy(i, str, str2);
    }

    public final int component1() {
        return this.status;
    }

    public final String component2() {
        return this.message;
    }

    public final String component3() {
        return this.details;
    }

    public final InternalApiError copy(int i, String str, String str2) {
        l.e(str, "message");
        return new InternalApiError(i, str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof InternalApiError)) {
                return false;
            }
            InternalApiError internalApiError = (InternalApiError) obj;
            return this.status == internalApiError.status && l.a(this.message, internalApiError.message) && l.a(this.details, internalApiError.details);
        }
        return true;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.C21114a, p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b
    public int errorCode() {
        return this.status;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.C21114a, p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b
    public String errorMessage() {
        String str = this.details;
        if (str == null) {
            str = this.message;
        }
        return str;
    }

    public final String getDetails() {
        return this.details;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getStatus() {
        return this.status;
    }

    public int hashCode() {
        int i = this.status;
        String str = this.message;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.details;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InternalApiError(status=");
        m8728C.append(this.status);
        m8728C.append(", message=");
        m8728C.append(this.message);
        m8728C.append(", details=");
        return C22128a.m8618h(m8728C, this.details, ")");
    }
}
