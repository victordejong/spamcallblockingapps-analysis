package com.flurry.sdk;

import java.util.HashSet;
import java.util.Set;
/* renamed from: com.flurry.sdk.lg */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lg.class */
public abstract class AbstractC0489lg {

    /* renamed from: b */
    public final String f3546b;

    /* renamed from: e */
    public C0492li f3549e;

    /* renamed from: c */
    public String f3547c = "defaultDataKey_";

    /* renamed from: d */
    public Set<String> f3548d = new HashSet();

    /* renamed from: a */
    private AbstractC0471kp<jy> f3545a = new 1(this);

    /* renamed from: com.flurry.sdk.lg$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/lg$a.class */
    public interface AbstractC0490a {
    }

    public AbstractC0489lg(String str, String str2) {
        this.f3546b = str2;
        C0472kq.m4617a().m4613a("com.flurry.android.sdk.NetworkStateEvent", this.f3545a);
        C0462kg.m4652a().m4647b(new 2(this, str));
    }

    /* renamed from: a */
    public final void m4546a(String str) {
        C0462kg.m4652a().m4647b(new 8(this, str));
    }

    /* renamed from: a */
    public void m4545a(String str, String str2, int i) {
        C0462kg.m4652a().m4647b(new 7(this, str, str2));
    }

    /* renamed from: a */
    public abstract void m4544a(byte[] bArr, String str, String str2);

    /* renamed from: b */
    public final void m4543b() {
        C0462kg.m4652a().m4647b(new 4(this));
    }

    /* renamed from: b */
    public final void m4542b(byte[] bArr, String str, String str2) {
        if (bArr == null || bArr.length == 0) {
            C0478ku.m4596a(6, this.f3546b, "Report that has to be sent is EMPTY or NULL");
            return;
        }
        C0462kg.m4652a().m4647b(new 3(this, bArr, str, str2));
        m4543b();
    }

    /* renamed from: c */
    public final boolean m4541c() {
        return this.f3548d.size() <= 5;
    }
}
