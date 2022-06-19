package p193e.p194a.p1164r.p1176r;

import com.truecaller.account.network.TokenErrorResponseDto;
import com.truecaller.account.network.TokenResponseDto;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.r.r.a */
/* loaded from: classes16-dex2jar.jar:e/a/r/r/a.class */
public final class C19764a {

    /* renamed from: a */
    public final TokenResponseDto f54813a;

    /* renamed from: b */
    public final TokenErrorResponseDto f54814b;

    public C19764a(TokenResponseDto tokenResponseDto, TokenErrorResponseDto tokenErrorResponseDto) {
        this.f54813a = tokenResponseDto;
        this.f54814b = tokenErrorResponseDto;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19764a)) {
                return false;
            }
            C19764a c19764a = (C19764a) obj;
            return l.a(this.f54813a, c19764a.f54813a) && l.a(this.f54814b, c19764a.f54814b);
        }
        return true;
    }

    public int hashCode() {
        TokenResponseDto tokenResponseDto = this.f54813a;
        int i = 0;
        int hashCode = tokenResponseDto != null ? tokenResponseDto.hashCode() : 0;
        TokenErrorResponseDto tokenErrorResponseDto = this.f54814b;
        if (tokenErrorResponseDto != null) {
            i = tokenErrorResponseDto.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TokenResponse(success=");
        m8728C.append(this.f54813a);
        m8728C.append(", error=");
        m8728C.append(this.f54814b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
