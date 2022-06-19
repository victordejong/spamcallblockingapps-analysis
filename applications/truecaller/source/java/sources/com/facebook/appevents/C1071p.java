package com.facebook.appevents;

import com.facebook.internal.C1168q0;
import java.io.ObjectStreamException;
import java.io.Serializable;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018�� \u00132\u00020\u0001:\u0002\u0013\u0014B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0002R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/AccessTokenAppIdPair;", "Ljava/io/Serializable;", "accessToken", "Lcom/facebook/AccessToken;", "(Lcom/facebook/AccessToken;)V", "accessTokenString", "", "applicationId", "(Ljava/lang/String;Ljava/lang/String;)V", "getAccessTokenString", "()Ljava/lang/String;", "getApplicationId", "equals", "", "o", "", "hashCode", "", "writeReplace", "Companion", "SerializationProxyV1", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.p */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/p.class */
public final class C1071p implements Serializable {

    /* renamed from: a */
    public final String f2954a;

    /* renamed from: b */
    public final String f2955b;

    @Metadata(d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0002\b��\u0018�� \b2\u00020\u0001:\u0001\bB\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\t"}, d2 = {"Lcom/facebook/appevents/AccessTokenAppIdPair$SerializationProxyV1;", "Ljava/io/Serializable;", "accessTokenString", "", "appId", "(Ljava/lang/String;Ljava/lang/String;)V", "readResolve", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.p$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/p$a.class */
    public static final class C1072a implements Serializable {

        /* renamed from: a */
        public final String f2956a;

        /* renamed from: b */
        public final String f2957b;

        public C1072a(String str, String str2) {
            l.e(str2, "appId");
            this.f2956a = str;
            this.f2957b = str2;
        }

        private final Object readResolve() throws ObjectStreamException {
            return new C1071p(this.f2956a, this.f2957b);
        }
    }

    public C1071p(String str, String str2) {
        l.e(str2, "applicationId");
        this.f2954a = str2;
        this.f2955b = C1168q0.m41700B(str) ? null : str;
    }

    private final Object writeReplace() throws ObjectStreamException {
        return new C1072a(this.f2955b, this.f2954a);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1071p)) {
            return false;
        }
        C1071p c1071p = (C1071p) obj;
        boolean z = false;
        if (C1168q0.m41682a(c1071p.f2955b, this.f2955b)) {
            z = false;
            if (C1168q0.m41682a(c1071p.f2954a, this.f2954a)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        String str = this.f2955b;
        return (str == null ? 0 : str.hashCode()) ^ this.f2954a.hashCode();
    }
}
