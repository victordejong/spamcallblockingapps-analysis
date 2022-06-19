package com.truecaller.sdk.oAuth.networking.data.error;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.C21114a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0012\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J2\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0007J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u0017\u001a\u0004\b\u0018\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u0019\u0010\u0007R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0017\u001a\u0004\b\u001a\u0010\u0007¨\u0006\u001d"}, d2 = {"Lcom/truecaller/sdk/oAuth/networking/data/error/OAuthApiError;", "Le/a/v4/s0/l/e/b/a;", "", "errorCode", "()I", "", "errorMessage", "()Ljava/lang/String;", "component1", "component2", "component3", "error", "errorDescription", "state", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/error/OAuthApiError;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getErrorDescription", "getError", "getState", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/error/OAuthApiError.class */
public final class OAuthApiError extends C21114a {
    private final String error;
    @b(AnalyticsConstants.ERROR_DESCRIPTION)
    private final String errorDescription;
    private final String state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OAuthApiError(String str, String str2, String str3) {
        super(0, null, 3, null);
        l.e(str, "error");
        this.error = str;
        this.errorDescription = str2;
        this.state = str3;
    }

    public static /* synthetic */ OAuthApiError copy$default(OAuthApiError oAuthApiError, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = oAuthApiError.error;
        }
        if ((i & 2) != 0) {
            str2 = oAuthApiError.errorDescription;
        }
        if ((i & 4) != 0) {
            str3 = oAuthApiError.state;
        }
        return oAuthApiError.copy(str, str2, str3);
    }

    public final String component1() {
        return this.error;
    }

    public final String component2() {
        return this.errorDescription;
    }

    public final String component3() {
        return this.state;
    }

    public final OAuthApiError copy(String str, String str2, String str3) {
        l.e(str, "error");
        return new OAuthApiError(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OAuthApiError)) {
                return false;
            }
            OAuthApiError oAuthApiError = (OAuthApiError) obj;
            return l.a(this.error, oAuthApiError.error) && l.a(this.errorDescription, oAuthApiError.errorDescription) && l.a(this.state, oAuthApiError.state);
        }
        return true;
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.C21114a, p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b
    public int errorCode() {
        return getCode();
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.C21114a, p193e.p194a.p1315v4.p1321s0.p1323l.p1324e.p1325b.AbstractC21115b
    public String errorMessage() {
        String str = this.errorDescription;
        if (str == null) {
            str = this.error;
        }
        return str;
    }

    public final String getError() {
        return this.error;
    }

    public final String getErrorDescription() {
        return this.errorDescription;
    }

    public final String getState() {
        return this.state;
    }

    public int hashCode() {
        String str = this.error;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.errorDescription;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.state;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OAuthApiError(error=");
        m8728C.append(this.error);
        m8728C.append(", errorDescription=");
        m8728C.append(this.errorDescription);
        m8728C.append(", state=");
        return C22128a.m8618h(m8728C, this.state, ")");
    }
}
