package com.truecaller.sdk.oAuth.networking.data;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J8\u0010\f\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0018\u0010\u0004R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0019\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u001a\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "code", "packageName", "fingerprint", "state", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getState", "getCode", "getFingerprint", "getPackageName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/AuthCodeResponse.class */
public final class AuthCodeResponse {
    private final String code;
    private final String fingerprint;
    @b("package_name")
    private final String packageName;
    private final String state;

    public AuthCodeResponse(String str, String str2, String str3, String str4) {
        C22128a.m8699J0(str, "code", str2, "packageName", str3, "fingerprint", str4, "state");
        this.code = str;
        this.packageName = str2;
        this.fingerprint = str3;
        this.state = str4;
    }

    public static /* synthetic */ AuthCodeResponse copy$default(AuthCodeResponse authCodeResponse, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authCodeResponse.code;
        }
        if ((i & 2) != 0) {
            str2 = authCodeResponse.packageName;
        }
        if ((i & 4) != 0) {
            str3 = authCodeResponse.fingerprint;
        }
        if ((i & 8) != 0) {
            str4 = authCodeResponse.state;
        }
        return authCodeResponse.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.code;
    }

    public final String component2() {
        return this.packageName;
    }

    public final String component3() {
        return this.fingerprint;
    }

    public final String component4() {
        return this.state;
    }

    public final AuthCodeResponse copy(String str, String str2, String str3, String str4) {
        l.e(str, "code");
        l.e(str2, "packageName");
        l.e(str3, "fingerprint");
        l.e(str4, "state");
        return new AuthCodeResponse(str, str2, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AuthCodeResponse)) {
                return false;
            }
            AuthCodeResponse authCodeResponse = (AuthCodeResponse) obj;
            return l.a(this.code, authCodeResponse.code) && l.a(this.packageName, authCodeResponse.packageName) && l.a(this.fingerprint, authCodeResponse.fingerprint) && l.a(this.state, authCodeResponse.state);
        }
        return true;
    }

    public final String getCode() {
        return this.code;
    }

    public final String getFingerprint() {
        return this.fingerprint;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getState() {
        return this.state;
    }

    public int hashCode() {
        String str = this.code;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.packageName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.fingerprint;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.state;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AuthCodeResponse(code=");
        m8728C.append(this.code);
        m8728C.append(", packageName=");
        m8728C.append(this.packageName);
        m8728C.append(", fingerprint=");
        m8728C.append(this.fingerprint);
        m8728C.append(", state=");
        return C22128a.m8618h(m8728C, this.state, ")");
    }
}
