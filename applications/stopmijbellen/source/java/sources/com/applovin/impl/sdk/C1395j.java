package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.C1493h;
import com.applovin.impl.sdk.utils.C1533n;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.sdk.j */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/j.class */
public class C1395j implements AppLovinBroadcastManager.Receiver {

    /* renamed from: b */
    private static AlertDialog f5248b;

    /* renamed from: c */
    private static final AtomicBoolean f5249c = new AtomicBoolean();

    /* renamed from: a */
    private final C1401k f5250a;

    /* renamed from: d */
    private C1533n f5251d;

    /* renamed from: com.applovin.impl.sdk.j$1 */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/j$1.class */
    public class RunnableC13961 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C1408l f5252a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC1400a f5253b;

        public RunnableC13961(C1408l c1408l, AbstractC1400a abstractC1400a) {
            C1395j.this = r4;
            this.f5252a = c1408l;
            this.f5253b = abstractC1400a;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            C1479t c1479t;
            if (C1395j.this.f5250a.m5547d()) {
                this.f5252a.m5542A().m5111e("ConsentAlertManager", "Consent dialog already showing, skip showing of consent alert");
                return;
            }
            Activity m6068a = this.f5252a.m5491ad().m6068a();
            if (m6068a != null && C1493h.m5062a(this.f5252a.m5532K())) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.j.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertDialog unused = C1395j.f5248b = new AlertDialog.Builder(RunnableC13961.this.f5252a.m5491ad().m6068a()).setTitle((CharSequence) RunnableC13961.this.f5252a.m5511a(C1314b.f4725aG)).setMessage((CharSequence) RunnableC13961.this.f5252a.m5511a(C1314b.f4726aH)).setCancelable(false).setPositiveButton((CharSequence) RunnableC13961.this.f5252a.m5511a(C1314b.f4727aI), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.j.1.1.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                RunnableC13961.this.f5253b.mo5562a();
                                dialogInterface.dismiss();
                                C1395j.f5249c.set(false);
                            }
                        }).setNegativeButton((CharSequence) RunnableC13961.this.f5252a.m5511a(C1314b.f4728aJ), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.j.1.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                RunnableC13961.this.f5253b.mo5551b();
                                dialogInterface.dismiss();
                                C1395j.f5249c.set(false);
                                long longValue = ((Long) RunnableC13961.this.f5252a.m5511a(C1314b.f4723aE)).longValue();
                                RunnableC13961 runnableC13961 = RunnableC13961.this;
                                C1395j.this.m5566a(longValue, runnableC13961.f5252a, runnableC13961.f5253b);
                            }
                        }).create();
                        C1395j.f5248b.show();
                    }
                });
                return;
            }
            if (m6068a == null) {
                c1479t = this.f5252a.m5542A();
                str = "No parent Activity found - rescheduling consent alert...";
            } else {
                c1479t = this.f5252a.m5542A();
                str = "No internet available - rescheduling consent alert...";
            }
            c1479t.m5111e("ConsentAlertManager", str);
            C1395j.f5249c.set(false);
            C1395j.this.m5566a(((Long) this.f5252a.m5511a(C1314b.f4724aF)).longValue(), this.f5252a, this.f5253b);
        }
    }

    /* renamed from: com.applovin.impl.sdk.j$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/j$a.class */
    public interface AbstractC1400a {
        /* renamed from: a */
        void mo5562a();

        /* renamed from: b */
        void mo5551b();
    }

    public C1395j(C1401k c1401k, C1408l c1408l) {
        this.f5250a = c1401k;
        c1408l.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        c1408l.m5487ah().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: a */
    public void m5566a(long j, C1408l c1408l, AbstractC1400a abstractC1400a) {
        if (j <= 0) {
            return;
        }
        AlertDialog alertDialog = f5248b;
        if (alertDialog != null && alertDialog.isShowing()) {
            return;
        }
        if (f5249c.getAndSet(true)) {
            if (j >= this.f5251d.m4966a()) {
                C1479t m5542A = c1408l.m5542A();
                StringBuilder m8752j = C0082b.m8752j("Skip scheduling consent alert - one scheduled already with remaining time of ");
                m8752j.append(this.f5251d.m4966a());
                m8752j.append(" milliseconds");
                m5542A.m5112d("ConsentAlertManager", m8752j.toString());
                return;
            }
            C1479t m5542A2 = c1408l.m5542A();
            m5542A2.m5116b("ConsentAlertManager", "Scheduling consent alert earlier (" + j + "ms) than remaining scheduled time (" + this.f5251d.m4966a() + "ms)");
            this.f5251d.m4958d();
        }
        C1479t m5542A3 = c1408l.m5542A();
        m5542A3.m5116b("ConsentAlertManager", "Scheduling consent alert for " + j + " milliseconds");
        this.f5251d = C1533n.m4965a(j, c1408l, new RunnableC13961(c1408l, abstractC1400a));
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if (this.f5251d == null) {
            return;
        }
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            this.f5251d.m4962b();
        } else if (!"com.applovin.application_resumed".equals(action)) {
        } else {
            this.f5251d.m4960c();
        }
    }
}
