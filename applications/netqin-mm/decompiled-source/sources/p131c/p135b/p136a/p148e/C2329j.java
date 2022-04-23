package p131c.p135b.p136a.p148e;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2423p;
/* renamed from: c.b.a.e.j */
/* loaded from: classes-dex2jar.jar:c/b/a/e/j.class */
public class C2329j implements AppLovinBroadcastManager.Receiver {

    /* renamed from: c */
    public static AlertDialog f8996c;

    /* renamed from: d */
    public static final AtomicBoolean f8997d = new AtomicBoolean();

    /* renamed from: a */
    public final C2335k f8998a;

    /* renamed from: b */
    public C2423p f8999b;

    /* renamed from: c.b.a.e.j$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/j$a.class */
    public class RunnableC2330a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2341l f9000a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC2334b f9001b;

        /* renamed from: c.b.a.e.j$a$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/j$a$a.class */
        public class RunnableC2331a implements Runnable {

            /* renamed from: c.b.a.e.j$a$a$a */
            /* loaded from: classes-dex2jar.jar:c/b/a/e/j$a$a$a.class */
            public class DialogInterface$OnClickListenerC2332a implements DialogInterface.OnClickListener {
                public DialogInterface$OnClickListenerC2332a() {
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    RunnableC2330a.this.f9001b.mo30329b();
                    dialogInterface.dismiss();
                    C2329j.f8997d.set(false);
                    long longValue = ((Long) RunnableC2330a.this.f9000a.m30291a(C2251d.C2256e.f8557K)).longValue();
                    RunnableC2330a aVar = RunnableC2330a.this;
                    C2329j.this.m30344a(longValue, aVar.f9000a, aVar.f9001b);
                }
            }

            /* renamed from: c.b.a.e.j$a$a$b */
            /* loaded from: classes-dex2jar.jar:c/b/a/e/j$a$a$b.class */
            public class DialogInterface$OnClickListenerC2333b implements DialogInterface.OnClickListener {
                public DialogInterface$OnClickListenerC2333b() {
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    RunnableC2330a.this.f9001b.mo30340a();
                    dialogInterface.dismiss();
                    C2329j.f8997d.set(false);
                }
            }

            public RunnableC2331a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                AlertDialog unused = C2329j.f8996c = new AlertDialog.Builder(RunnableC2330a.this.f9000a.m30234y().m30676a()).setTitle((CharSequence) RunnableC2330a.this.f9000a.m30291a(C2251d.C2256e.f8567M)).setMessage((CharSequence) RunnableC2330a.this.f9000a.m30291a(C2251d.C2256e.f8572N)).setCancelable(false).setPositiveButton((CharSequence) RunnableC2330a.this.f9000a.m30291a(C2251d.C2256e.f8577O), new DialogInterface$OnClickListenerC2333b()).setNegativeButton((CharSequence) RunnableC2330a.this.f9000a.m30291a(C2251d.C2256e.f8582P), new DialogInterface$OnClickListenerC2332a()).create();
                C2329j.f8996c.show();
            }
        }

        public RunnableC2330a(C2341l lVar, AbstractC2334b bVar) {
            this.f9000a = lVar;
            this.f9001b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2374t tVar;
            String str;
            if (C2329j.this.f8998a.m30327c()) {
                this.f9000a.m30262d0().m30039e("ConsentAlertManager", "Consent dialog already showing, skip showing of consent alert");
                return;
            }
            Activity a = this.f9000a.m30234y().m30676a();
            if (a == null || !C2389h.m29964a(this.f9000a.m30264d())) {
                if (a == null) {
                    tVar = this.f9000a.m30262d0();
                    str = "No parent Activity found - rescheduling consent alert...";
                } else {
                    tVar = this.f9000a.m30262d0();
                    str = "No internet available - rescheduling consent alert...";
                }
                tVar.m30039e("ConsentAlertManager", str);
                C2329j.f8997d.set(false);
                C2329j.this.m30344a(((Long) this.f9000a.m30291a(C2251d.C2256e.f8562L)).longValue(), this.f9000a, this.f9001b);
                return;
            }
            AppLovinSdkUtils.runOnUiThread(new RunnableC2331a());
        }
    }

    /* renamed from: c.b.a.e.j$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/j$b.class */
    public interface AbstractC2334b {
        /* renamed from: a */
        void mo30340a();

        /* renamed from: b */
        void mo30329b();
    }

    public C2329j(C2335k kVar, C2341l lVar) {
        this.f8998a = kVar;
        lVar.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
        lVar.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
    }

    /* renamed from: a */
    public void m30344a(long j, C2341l lVar, AbstractC2334b bVar) {
        if (j > 0) {
            AlertDialog alertDialog = f8996c;
            if (alertDialog == null || !alertDialog.isShowing()) {
                if (f8997d.getAndSet(true)) {
                    if (j < this.f8999b.m29845a()) {
                        C2374t d0 = lVar.m30262d0();
                        d0.m30044b("ConsentAlertManager", "Scheduling consent alert earlier (" + j + "ms) than remaining scheduled time (" + this.f8999b.m29845a() + "ms)");
                        this.f8999b.m29837d();
                    } else {
                        C2374t d02 = lVar.m30262d0();
                        d02.m30040d("ConsentAlertManager", "Skip scheduling consent alert - one scheduled already with remaining time of " + this.f8999b.m29845a() + " milliseconds");
                        return;
                    }
                }
                C2374t d03 = lVar.m30262d0();
                d03.m30044b("ConsentAlertManager", "Scheduling consent alert for " + j + " milliseconds");
                this.f8999b = C2423p.m29844a(j, lVar, new RunnableC2330a(lVar, bVar));
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if (this.f8999b != null) {
            String action = intent.getAction();
            if ("com.applovin.application_paused".equals(action)) {
                this.f8999b.m29841b();
            } else if ("com.applovin.application_resumed".equals(action)) {
                this.f8999b.m29839c();
            }
        }
    }
}
