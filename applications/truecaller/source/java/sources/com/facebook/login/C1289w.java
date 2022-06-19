package com.facebook.login;

import com.facebook.AccessToken;
import com.facebook.AuthenticationToken;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B7\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J?\u0010\u0016\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u001d"}, d2 = {"Lcom/facebook/login/LoginResult;", "", "accessToken", "Lcom/facebook/AccessToken;", "authenticationToken", "Lcom/facebook/AuthenticationToken;", "recentlyGrantedPermissions", "", "", "recentlyDeniedPermissions", "(Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;Ljava/util/Set;Ljava/util/Set;)V", "getAccessToken", "()Lcom/facebook/AccessToken;", "getAuthenticationToken", "()Lcom/facebook/AuthenticationToken;", "getRecentlyDeniedPermissions", "()Ljava/util/Set;", "getRecentlyGrantedPermissions", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.w */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/w.class */
public final class C1289w {

    /* renamed from: a */
    public final AccessToken f3508a;

    /* renamed from: b */
    public final AuthenticationToken f3509b;

    /* renamed from: c */
    public final Set<String> f3510c;

    /* renamed from: d */
    public final Set<String> f3511d;

    public C1289w(AccessToken accessToken, AuthenticationToken authenticationToken, Set<String> set, Set<String> set2) {
        l.e(accessToken, "accessToken");
        l.e(set, "recentlyGrantedPermissions");
        l.e(set2, "recentlyDeniedPermissions");
        this.f3508a = accessToken;
        this.f3509b = authenticationToken;
        this.f3510c = set;
        this.f3511d = set2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1289w)) {
            return false;
        }
        C1289w c1289w = (C1289w) obj;
        return l.a(this.f3508a, c1289w.f3508a) && l.a(this.f3509b, c1289w.f3509b) && l.a(this.f3510c, c1289w.f3510c) && l.a(this.f3511d, c1289w.f3511d);
    }

    public int hashCode() {
        int hashCode = this.f3508a.hashCode();
        AuthenticationToken authenticationToken = this.f3509b;
        return this.f3511d.hashCode() + ((this.f3510c.hashCode() + (((hashCode * 31) + (authenticationToken == null ? 0 : authenticationToken.hashCode())) * 31)) * 31);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LoginResult(accessToken=");
        m8728C.append(this.f3508a);
        m8728C.append(", authenticationToken=");
        m8728C.append(this.f3509b);
        m8728C.append(", recentlyGrantedPermissions=");
        m8728C.append(this.f3510c);
        m8728C.append(", recentlyDeniedPermissions=");
        m8728C.append(this.f3511d);
        m8728C.append(')');
        return m8728C.toString();
    }
}
