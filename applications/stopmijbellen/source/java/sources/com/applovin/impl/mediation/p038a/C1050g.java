package com.applovin.impl.mediation.p038a;

import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.C1191g;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.mediation.a.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/g.class */
public class C1050g {

    /* renamed from: a */
    private final C1052h f3813a;

    /* renamed from: b */
    private final String f3814b;

    /* renamed from: c */
    private final String f3815c;

    /* renamed from: d */
    private final String f3816d;

    /* renamed from: e */
    private final String f3817e;

    /* renamed from: com.applovin.impl.mediation.a.g$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/g$a.class */
    public interface AbstractC1051a {
        /* renamed from: a */
        void mo6518a(C1050g c1050g);
    }

    private C1050g(C1052h c1052h, C1191g c1191g, String str, String str2) {
        String str3;
        this.f3813a = c1052h;
        this.f3816d = str;
        this.f3817e = str2;
        if (c1191g != null) {
            this.f3814b = c1191g.m6131h();
            str3 = c1191g.m6129i();
        } else {
            str3 = null;
            this.f3814b = null;
        }
        this.f3815c = str3;
    }

    /* renamed from: a */
    public static C1050g m6616a(C1052h c1052h, C1191g c1191g, String str) {
        if (c1052h != null) {
            if (c1191g == null) {
                throw new IllegalArgumentException("No adapterWrapper specified");
            }
            return new C1050g(c1052h, c1191g, str, null);
        }
        throw new IllegalArgumentException("No spec specified");
    }

    /* renamed from: a */
    public static C1050g m6615a(C1052h c1052h, String str) {
        return m6613b(c1052h, null, str);
    }

    /* renamed from: b */
    public static C1050g m6613b(C1052h c1052h, C1191g c1191g, String str) {
        if (c1052h != null) {
            return new C1050g(c1052h, c1191g, null, str);
        }
        throw new IllegalArgumentException("No spec specified");
    }

    /* renamed from: a */
    public C1052h m6617a() {
        return this.f3813a;
    }

    /* renamed from: b */
    public String m6614b() {
        return this.f3814b;
    }

    /* renamed from: c */
    public String m6612c() {
        return this.f3815c;
    }

    /* renamed from: d */
    public String m6611d() {
        return this.f3816d;
    }

    /* renamed from: e */
    public String m6610e() {
        return this.f3817e;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("SignalCollectionResult{mSignalProviderSpec=");
        m8752j.append(this.f3813a);
        m8752j.append(", mSdkVersion='");
        C0033h.m8882o(m8752j, this.f3814b, '\'', ", mAdapterVersion='");
        C0033h.m8882o(m8752j, this.f3815c, '\'', ", mSignalDataLength='");
        String str = this.f3816d;
        m8752j.append(str != null ? str.length() : 0);
        m8752j.append('\'');
        m8752j.append(", mErrorMessage=");
        m8752j.append(this.f3817e);
        m8752j.append('}');
        return m8752j.toString();
    }
}
