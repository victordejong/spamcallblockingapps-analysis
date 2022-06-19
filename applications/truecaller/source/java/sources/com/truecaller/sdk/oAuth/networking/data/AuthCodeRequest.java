package com.truecaller.sdk.oAuth.networking.data;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018��2\u00020\u0001BC\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J\u0010\u0010\n\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u0004JV\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0004J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004R\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001c\u001a\u0004\b\u001e\u0010\u0004R\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001c\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010\r\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001c\u001a\u0004\b \u0010\u0004R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001c\u001a\u0004\b!\u0010\u0004R\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\"\u0010\u0004R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001c\u001a\u0004\b#\u0010\u0004¨\u0006&"}, d2 = {"Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "component7", "requestId", "clientId", "responseType", "codeChallenge", "codeChallengeMethod", "scope", "state", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getScope", "getCodeChallenge", "getClientId", "getResponseType", "getRequestId", "getCodeChallengeMethod", "getState", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/oAuth/networking/data/AuthCodeRequest.class */
public final class AuthCodeRequest {
    @b("client_id")
    private final String clientId;
    @b("code_challenge")
    private final String codeChallenge;
    @b("code_challenge_method")
    private final String codeChallengeMethod;
    @b("request_id")
    private final String requestId;
    @b("response_type")
    private final String responseType;
    private final String scope;
    private final String state;

    public AuthCodeRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        l.e(str, "requestId");
        l.e(str2, "clientId");
        l.e(str3, "responseType");
        l.e(str4, "codeChallenge");
        l.e(str5, "codeChallengeMethod");
        l.e(str6, "scope");
        l.e(str7, "state");
        this.requestId = str;
        this.clientId = str2;
        this.responseType = str3;
        this.codeChallenge = str4;
        this.codeChallengeMethod = str5;
        this.scope = str6;
        this.state = str7;
    }

    public /* synthetic */ AuthCodeRequest(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, f fVar) {
        this(str, str2, (i & 4) != 0 ? "code" : str3, str4, (i & 16) != 0 ? "S256" : str5, str6, str7);
    }

    public static /* synthetic */ AuthCodeRequest copy$default(AuthCodeRequest authCodeRequest, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, Object obj) {
        if ((i & 1) != 0) {
            str = authCodeRequest.requestId;
        }
        if ((i & 2) != 0) {
            str2 = authCodeRequest.clientId;
        }
        if ((i & 4) != 0) {
            str3 = authCodeRequest.responseType;
        }
        if ((i & 8) != 0) {
            str4 = authCodeRequest.codeChallenge;
        }
        if ((i & 16) != 0) {
            str5 = authCodeRequest.codeChallengeMethod;
        }
        if ((i & 32) != 0) {
            str6 = authCodeRequest.scope;
        }
        if ((i & 64) != 0) {
            str7 = authCodeRequest.state;
        }
        return authCodeRequest.copy(str, str2, str3, str4, str5, str6, str7);
    }

    public final String component1() {
        return this.requestId;
    }

    public final String component2() {
        return this.clientId;
    }

    public final String component3() {
        return this.responseType;
    }

    public final String component4() {
        return this.codeChallenge;
    }

    public final String component5() {
        return this.codeChallengeMethod;
    }

    public final String component6() {
        return this.scope;
    }

    public final String component7() {
        return this.state;
    }

    public final AuthCodeRequest copy(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        l.e(str, "requestId");
        l.e(str2, "clientId");
        l.e(str3, "responseType");
        l.e(str4, "codeChallenge");
        l.e(str5, "codeChallengeMethod");
        l.e(str6, "scope");
        l.e(str7, "state");
        return new AuthCodeRequest(str, str2, str3, str4, str5, str6, str7);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AuthCodeRequest)) {
                return false;
            }
            AuthCodeRequest authCodeRequest = (AuthCodeRequest) obj;
            return l.a(this.requestId, authCodeRequest.requestId) && l.a(this.clientId, authCodeRequest.clientId) && l.a(this.responseType, authCodeRequest.responseType) && l.a(this.codeChallenge, authCodeRequest.codeChallenge) && l.a(this.codeChallengeMethod, authCodeRequest.codeChallengeMethod) && l.a(this.scope, authCodeRequest.scope) && l.a(this.state, authCodeRequest.state);
        }
        return true;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getCodeChallenge() {
        return this.codeChallenge;
    }

    public final String getCodeChallengeMethod() {
        return this.codeChallengeMethod;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final String getResponseType() {
        return this.responseType;
    }

    public final String getScope() {
        return this.scope;
    }

    public final String getState() {
        return this.state;
    }

    public int hashCode() {
        String str = this.requestId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.clientId;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.responseType;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.codeChallenge;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.codeChallengeMethod;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.scope;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.state;
        if (str7 != null) {
            i = str7.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AuthCodeRequest(requestId=");
        m8728C.append(this.requestId);
        m8728C.append(", clientId=");
        m8728C.append(this.clientId);
        m8728C.append(", responseType=");
        m8728C.append(this.responseType);
        m8728C.append(", codeChallenge=");
        m8728C.append(this.codeChallenge);
        m8728C.append(", codeChallengeMethod=");
        m8728C.append(this.codeChallengeMethod);
        m8728C.append(", scope=");
        m8728C.append(this.scope);
        m8728C.append(", state=");
        return C22128a.m8618h(m8728C, this.state, ")");
    }
}
