package com.tmobile.tmoid.helperlib.sit.internal;

import android.content.Context;
import android.text.TextUtils;
import com.tmobile.tmoid.agent.Configuration;
import com.tmobile.tmoid.agent.ConfigurationProvider;
import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/SitRequestManager.class */
class SitRequestManager {

    /* renamed from: a */
    private SitRequestWorker f14896a;

    /* renamed from: b */
    private Configuration f14897b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SitRequestManager(final Context context) {
        ConfigurationProvider.m5172b(context, new ConfigurationProvider.Listener() { // from class: com.tmobile.tmoid.helperlib.sit.internal.a
            @Override // com.tmobile.tmoid.agent.ConfigurationProvider.Listener
            /* renamed from: a */
            public final void mo4702a(Configuration configuration) {
                SitRequestManager.this.m4745d(context, configuration);
            }
        });
    }

    /* renamed from: b */
    private boolean m4747b(String str, BaseSitAPIRequest baseSitAPIRequest) {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(baseSitAPIRequest.mo4773a());
        if (!z2) {
            String c = m4740i(str).m4825c();
            if (!TextUtils.isEmpty(c)) {
                baseSitAPIRequest.mo4771d(c);
                Log.m4654d("TMO-Agent", "ensureAkaToken akaTokenAvailable: " + z);
                return z;
            }
        }
        z = z2;
        Log.m4654d("TMO-Agent", "ensureAkaToken akaTokenAvailable: " + z);
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (m4728u(r8) != false) goto L_0x0041;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.tmobile.tmoid.helperlib.sit.internal.AkaAuthAPIResponse m4746c(java.lang.String r6, int r7) {
        /*
            r5 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "getAkaToken retries: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "TMO-Agent"
            r1 = r8
            java.lang.String r1 = r1.toString()
            com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
            r0 = r5
            com.tmobile.tmoid.helperlib.sit.internal.SitRequestWorker r0 = r0.f14896a
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0030
            r0 = r8
            r1 = r6
            com.tmobile.tmoid.helperlib.sit.internal.AkaAuthAPIResponse r0 = r0.m4709r(r1)
            r8 = r0
            goto L_0x0032
        L_0x0030:
            r0 = 0
            r8 = r0
        L_0x0032:
            r0 = r8
            if (r0 == 0) goto L_0x0041
            r0 = r8
            r9 = r0
            r0 = r5
            r1 = r8
            boolean r0 = r0.m4728u(r1)
            if (r0 == 0) goto L_0x0058
        L_0x0041:
            r0 = r8
            r9 = r0
            r0 = r7
            if (r0 <= 0) goto L_0x0058
            r0 = 100
            java.lang.Thread.sleep(r0)     // Catch: Exception -> 0x005b
        L_0x004e:
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = 1
            int r2 = r2 - r3
            com.tmobile.tmoid.helperlib.sit.internal.AkaAuthAPIResponse r0 = r0.m4746c(r1, r2)
            r9 = r0
        L_0x0058:
            r0 = r9
            return r0
        L_0x005b:
            r8 = move-exception
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.sit.internal.SitRequestManager.m4746c(java.lang.String, int):com.tmobile.tmoid.helperlib.sit.internal.AkaAuthAPIResponse");
    }

    /* renamed from: e */
    private ManageConnectivityAPIResponse m4744e(String str, ManageConnectivityAPIRequest manageConnectivityAPIRequest) {
        return this.f14896a.m4715l(str, manageConnectivityAPIRequest.m4804f(), manageConnectivityAPIRequest.m4805e(), manageConnectivityAPIRequest.mo4773a());
    }

    /* renamed from: f */
    private ManagePushTokenAPIResponse m4743f(ManagePushTokenAPIRequest managePushTokenAPIRequest) {
        return this.f14896a.m4713n(managePushTokenAPIRequest.m4786l(), managePushTokenAPIRequest.m4790h(), managePushTokenAPIRequest.m4789i(), managePushTokenAPIRequest.m4787k(), managePushTokenAPIRequest.m4788j(), managePushTokenAPIRequest.m4792f(), managePushTokenAPIRequest.m4791g(), managePushTokenAPIRequest.m4793e(), managePushTokenAPIRequest.mo4773a());
    }

    /* renamed from: i */
    private AkaAuthAPIResponse m4740i(String str) {
        return m4746c(str, 10);
    }

    /* renamed from: j */
    private AkaAuthAPIResponse m4739j(String str, AkaAuthAPIRequest akaAuthAPIRequest) {
        return m4740i(str);
    }

    /* renamed from: k */
    private BaseSitAPIResponse m4738k(String str, BaseSitAPIRequest baseSitAPIRequest) {
        return baseSitAPIRequest instanceof SitAPIRequest ? m4731r((SitAPIRequest) baseSitAPIRequest) : baseSitAPIRequest instanceof DeprecatedManageConnectivityAPIRequest ? m4733p((DeprecatedManageConnectivityAPIRequest) baseSitAPIRequest) : baseSitAPIRequest instanceof ManageConnectivityAPIRequest ? m4744e(str, (ManageConnectivityAPIRequest) baseSitAPIRequest) : baseSitAPIRequest instanceof ManagePushTokenAPIRequest ? m4743f((ManagePushTokenAPIRequest) baseSitAPIRequest) : baseSitAPIRequest instanceof MsisdnDataAPIRequest ? m4732q(str, (MsisdnDataAPIRequest) baseSitAPIRequest) : baseSitAPIRequest instanceof AkaAuthAPIRequest ? m4739j(str, (AkaAuthAPIRequest) baseSitAPIRequest) : null;
    }

    /* renamed from: l */
    private BaseSitAPIResponse m4737l(String str, BaseSitAPIRequest baseSitAPIRequest) {
        return m4736m(str, baseSitAPIRequest, 1);
    }

    /* renamed from: m */
    private BaseSitAPIResponse m4736m(String str, BaseSitAPIRequest baseSitAPIRequest, int i) {
        Log.m4654d("TMO-Agent", "requestInternalUsingAkaAuth retries left: " + i);
        BaseSitAPIResponse baseSitAPIResponse = null;
        if (m4747b(str, baseSitAPIRequest)) {
            baseSitAPIResponse = m4738k(str, baseSitAPIRequest);
            if (m4728u(baseSitAPIResponse)) {
                boolean g = this.f14897b.getRamStorage().m5100g(baseSitAPIRequest.mo4773a());
                baseSitAPIRequest.mo4771d(null);
                Log.m4654d("TMO-Agent", "Saved AKA token removed: " + g);
                if (i > 0) {
                    baseSitAPIResponse = m4736m(str, baseSitAPIRequest, i - 1);
                }
            }
        }
        return baseSitAPIResponse;
    }

    /* renamed from: n */
    private BaseSitAPIResponse m4735n(String str, BaseSitAPIRequest baseSitAPIRequest) {
        return m4734o(str, baseSitAPIRequest, 0);
    }

    /* renamed from: o */
    private BaseSitAPIResponse m4734o(String str, BaseSitAPIRequest baseSitAPIRequest, int i) {
        Log.m4654d("TMO-Agent", "requestInternalUsingIpAuth: " + i);
        baseSitAPIRequest.mo4771d(null);
        BaseSitAPIResponse k = m4738k(str, baseSitAPIRequest);
        BaseSitAPIResponse baseSitAPIResponse = k;
        if (m4727v(k)) {
            baseSitAPIResponse = k;
            if (i > 0) {
                baseSitAPIResponse = m4734o(str, baseSitAPIRequest, i - 1);
            }
        }
        return baseSitAPIResponse;
    }

    @Deprecated
    /* renamed from: p */
    private DeprecatedManageConnectivityAPIResponse m4733p(DeprecatedManageConnectivityAPIRequest deprecatedManageConnectivityAPIRequest) {
        return this.f14896a.m4708s(deprecatedManageConnectivityAPIRequest.m4816f(), deprecatedManageConnectivityAPIRequest.m4817e(), deprecatedManageConnectivityAPIRequest.mo4773a());
    }

    /* renamed from: q */
    private MsisdnDataAPIResponse m4732q(String str, MsisdnDataAPIRequest msisdnDataAPIRequest) {
        return this.f14896a.m4706u(str, msisdnDataAPIRequest.mo4773a());
    }

    /* renamed from: r */
    private SitAPIResponse m4731r(SitAPIRequest sitAPIRequest) {
        return this.f14896a.m4705v(sitAPIRequest.m4769f(), sitAPIRequest.m4770e(), sitAPIRequest.mo4773a());
    }

    /* renamed from: s */
    private boolean m4730s(BaseSitAPIResponse baseSitAPIResponse) {
        return m4729t(baseSitAPIResponse) == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0057, code lost:
        if (((com.tmobile.tmoid.helperlib.sit.SitIccException) r0).getErrorType() == 2) goto L_0x005f;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m4729t(com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIResponse r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.Throwable r0 = r0.m4819a()
            java.lang.Exception r0 = (java.lang.Exception) r0
            r4 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0048
            r0 = r4
            com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException r0 = (com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException) r0
            r4 = r0
            r0 = r4
            com.tmobile.tmoid.helperlib.sit.SitErrorType r0 = r0.getSitErrorType()
            com.tmobile.tmoid.helperlib.sit.SitErrorType r1 = com.tmobile.tmoid.helperlib.sit.SitErrorType.AUTHENTICATION
            if (r0 != r1) goto L_0x005d
            r0 = r4
            int r0 = r0.getErrorCode()
            r1 = 1003(0x3eb, float:1.406E-42)
            if (r0 != r1) goto L_0x002f
            goto L_0x005f
        L_0x002f:
            r0 = r4
            int r0 = r0.getErrorCode()
            r1 = 1006(0x3ee, float:1.41E-42)
            if (r0 == r1) goto L_0x0043
            r0 = r4
            int r0 = r0.getErrorCode()
            r1 = 1004(0x3ec, float:1.407E-42)
            if (r0 != r1) goto L_0x005d
        L_0x0043:
            r0 = 0
            r6 = r0
            goto L_0x005f
        L_0x0048:
            r0 = r4
            boolean r0 = r0 instanceof com.tmobile.tmoid.helperlib.sit.SitIccException
            if (r0 == 0) goto L_0x005d
            r0 = r4
            com.tmobile.tmoid.helperlib.sit.SitIccException r0 = (com.tmobile.tmoid.helperlib.sit.SitIccException) r0
            int r0 = r0.getErrorType()
            r1 = 2
            if (r0 != r1) goto L_0x005d
            goto L_0x005f
        L_0x005d:
            r0 = -1
            r6 = r0
        L_0x005f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "shouldRetry: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "TMO-Agent"
            r1 = r4
            java.lang.String r1 = r1.toString()
            com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.sit.internal.SitRequestManager.m4729t(com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIResponse):int");
    }

    /* renamed from: u */
    private boolean m4728u(BaseSitAPIResponse baseSitAPIResponse) {
        boolean z = true;
        if (m4729t(baseSitAPIResponse) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: v */
    private boolean m4727v(BaseSitAPIResponse baseSitAPIResponse) {
        return m4729t(baseSitAPIResponse) == 2;
    }

    /* renamed from: a */
    public void m4748a() {
        SitRequestWorker sitRequestWorker = this.f14896a;
        if (sitRequestWorker == null) {
            Log.m4654d("TMO-Agent", "Clear RamStorage failed");
        } else {
            sitRequestWorker.m4725b();
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m4745d(Context context, Configuration configuration) {
        this.f14897b = configuration;
        this.f14896a = new SitRequestWorker(context, configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public <T> T m4742g(BaseSitAPIRequest baseSitAPIRequest, Class<T> cls) {
        return (T) m4741h(null, baseSitAPIRequest, cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v7, types: [com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIResponse] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T m4741h(java.lang.String r5, com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest r6, java.lang.Class<T> r7) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "request requiresAuthentication: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            boolean r1 = r1.mo4820c()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "TMO-Agent"
            r1 = r7
            java.lang.String r1 = r1.toString()
            com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
            r0 = r6
            boolean r0 = r0.mo4820c()
            if (r0 == 0) goto L_0x009b
            r0 = 0
            r7 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r8 = r0
            r0 = 1
            r9 = r0
            r0 = r8
            r1 = 24
            if (r0 < r1) goto L_0x0054
            r0 = r4
            r1 = r5
            r2 = r6
            boolean r0 = r0.m4747b(r1, r2)
            if (r0 == 0) goto L_0x0079
            r0 = r4
            r1 = r5
            r2 = r6
            com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIResponse r0 = r0.m4737l(r1, r2)
            r7 = r0
            r0 = r4
            r1 = r7
            boolean r0 = r0.m4730s(r1)
            r9 = r0
            goto L_0x0079
        L_0x0054:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Android SDK too low: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            int r1 = android.os.Build.VERSION.SDK_INT
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "TMO-Agent"
            r1 = r10
            java.lang.String r1 = r1.toString()
            com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
        L_0x0079:
            r0 = r9
            if (r0 == 0) goto L_0x0090
            java.lang.String r0 = "TMO-Agent"
            java.lang.String r1 = "EAP-AKA failed. Fallback to IP auth"
            com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
            r0 = r4
            r1 = r5
            r2 = r6
            com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIResponse r0 = r0.m4735n(r1, r2)
            r7 = r0
            goto L_0x00a2
        L_0x0090:
            java.lang.String r0 = "TMO-Agent"
            java.lang.String r1 = "EAP-AKA auth successful"
            com.tmobile.tmoid.helperlib.util.Log.m4654d(r0, r1)
            goto L_0x00a2
        L_0x009b:
            r0 = r4
            r1 = r5
            r2 = r6
            com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIResponse r0 = r0.m4738k(r1, r2)
            r7 = r0
        L_0x00a2:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.sit.internal.SitRequestManager.m4741h(java.lang.String, com.tmobile.tmoid.helperlib.sit.internal.BaseSitAPIRequest, java.lang.Class):java.lang.Object");
    }
}
