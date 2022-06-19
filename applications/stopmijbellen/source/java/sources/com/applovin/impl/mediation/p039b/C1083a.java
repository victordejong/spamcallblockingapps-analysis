package com.applovin.impl.mediation.p039b;

import android.app.Activity;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.sdk.AppLovinMediationProvider;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.b.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/a.class */
public class C1083a extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final List<C1049f> f3911a;

    /* renamed from: c */
    private final Activity f3912c;

    /* renamed from: com.applovin.impl.mediation.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/a$a.class */
    public static class C1085a extends AbstractRunnableC1331a {

        /* renamed from: a */
        private final C1049f f3915a;

        /* renamed from: c */
        private final List<C1049f> f3916c;

        /* renamed from: d */
        private final Activity f3917d;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private C1085a(com.applovin.impl.mediation.p038a.C1049f r6, java.util.List<com.applovin.impl.mediation.p038a.C1049f> r7, com.applovin.impl.sdk.C1408l r8, android.app.Activity r9) {
            /*
                r5 = this;
                java.lang.String r0 = "TaskSequentialInitAdapter:"
                java.lang.StringBuilder r0 = android.support.p012v4.media.C0082b.m8752j(r0)
                r10 = r0
                r0 = r10
                r1 = r6
                java.lang.String r1 = r1.m6654N()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r10
                java.lang.String r1 = r1.toString()
                r2 = r8
                r3 = 1
                r0.<init>(r1, r2, r3)
                r0 = r5
                r1 = r9
                r0.f3917d = r1
                r0 = r5
                r1 = r6
                r0.f3915a = r1
                r0 = r5
                r1 = r7
                r0.f3916c = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.p039b.C1083a.C1085a.<init>(com.applovin.impl.mediation.a.f, java.util.List, com.applovin.impl.sdk.l, android.app.Activity):void");
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m8752j = C0082b.m8752j("Auto-initing ");
            m8752j.append(this.f3915a);
            m8752j.append("...");
            m5733a(m8752j.toString());
            this.f5113b.m5540C().m6179a(this.f3915a, this.f3917d, new Runnable() { // from class: com.applovin.impl.mediation.b.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    C1085a c1085a = C1085a.this;
                    StringBuilder m8752j2 = C0082b.m8752j("Initialization task for adapter '");
                    m8752j2.append(C1085a.this.f3915a.m6653O());
                    m8752j2.append("' finished");
                    c1085a.m5733a(m8752j2.toString());
                    int indexOf = C1085a.this.f3916c.indexOf(C1085a.this.f3915a);
                    if (indexOf >= C1085a.this.f3916c.size() - 1) {
                        C1085a.this.m5733a("Finished initializing adapters");
                        return;
                    }
                    C1049f c1049f = (C1049f) C1085a.this.f3916c.get(indexOf + 1);
                    C1085a.this.f5113b.m5525R().m5652a(new C1085a(c1049f, C1085a.this.f3916c, C1085a.this.f5113b, C1085a.this.f3917d), C1362o.EnumC1364a.MAIN, c1049f.m6633aa());
                }
            });
        }
    }

    public C1083a(List<C1049f> list, Activity activity, C1408l c1408l) {
        super("TaskAutoInitAdapters", c1408l, true);
        this.f3911a = list;
        this.f3912c = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f3911a.size() <= 0) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Auto-initing ");
            sb.append(this.f3911a.size());
            sb.append(" adapters");
            sb.append(this.f5113b.m5534I().m6192a() ? " in test mode" : "");
            sb.append("...");
            m5733a(sb.toString());
            if (TextUtils.isEmpty(this.f5113b.m5450t())) {
                this.f5113b.m5470c(AppLovinMediationProvider.MAX);
            } else if (!this.f5113b.m5465f()) {
                C1479t.m5107i("AppLovinSdk", "Auto-initing adapters for non-MAX mediation provider: " + this.f5113b.m5450t());
            }
            if (this.f3912c == null) {
                C1479t.m5108h("AppLovinSdk", "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n");
            }
            if (((Boolean) this.f5113b.m5511a(C1313a.f4682Q)).booleanValue()) {
                C1049f c1049f = this.f3911a.get(0);
                this.f5113b.m5525R().m5652a(new C1085a(c1049f, this.f3911a, this.f5113b, this.f3912c), C1362o.EnumC1364a.MAIN, c1049f.m6633aa());
                return;
            }
            for (final C1049f c1049f2 : this.f3911a) {
                this.f5113b.m5525R().m5648b().execute(new Runnable() { // from class: com.applovin.impl.mediation.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C1083a c1083a = C1083a.this;
                        StringBuilder m8752j = C0082b.m8752j("Auto-initing adapter: ");
                        m8752j.append(c1049f2);
                        c1083a.m5733a(m8752j.toString());
                        C1083a.this.f5113b.m5540C().m6180a(c1049f2, C1083a.this.f3912c);
                    }
                });
            }
        } catch (Throwable th) {
            m5732a("Failed to auto-init adapters", th);
        }
    }
}
