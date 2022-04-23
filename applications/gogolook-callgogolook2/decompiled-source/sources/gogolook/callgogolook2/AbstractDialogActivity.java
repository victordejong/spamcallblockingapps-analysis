package gogolook.callgogolook2;

import android.app.Activity;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.widget.FrameLayout;
import p459j.p460a.p582w0.C14037j3;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/AbstractDialogActivity.class */
public abstract class AbstractDialogActivity extends Activity {

    /* renamed from: a */
    public Context f10363a;

    /* renamed from: b */
    public Subscription f10364b;

    /* renamed from: c */
    public FrameLayout f10365c;

    /* renamed from: d */
    public DisplayMetrics f10366d;

    /* renamed from: e */
    public KeyguardManager f10367e;

    /* renamed from: gogolook.callgogolook2.AbstractDialogActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/AbstractDialogActivity$a.class */
    public class DialogInterface$OnDismissListenerC4293a implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC4293a() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            AbstractDialogActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.AbstractDialogActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/AbstractDialogActivity$b.class */
    public class C4294b implements Action1<Object> {
        public C4294b() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            AbstractDialogActivity.this.m29090a(obj);
        }
    }

    /* renamed from: a */
    public abstract Dialog mo26021a(Activity activity);

    /* renamed from: a */
    public final void m29091a() {
        this.f10365c = new FrameLayout(this.f10363a);
        this.f10365c.setOnClickListener(null);
        setContentView(this.f10365c);
    }

    /* renamed from: a */
    public void m29090a(Object obj) {
    }

    /* renamed from: b */
    public final void m29089b() {
        this.f10364b = C14037j3.m2731a().mo2703a((Action1) new C4294b());
    }

    /* renamed from: c */
    public boolean mo28588c() {
        return true;
    }

    /* renamed from: d */
    public final void m29088d() {
        Subscription subscription = this.f10364b;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f10364b.unsubscribe();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        setRequestedOrientation(3);
        super.onCreate(bundle);
        this.f10363a = this;
        this.f10367e = (KeyguardManager) getSystemService("keyguard");
        this.f10366d = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getMetrics(this.f10366d);
        requestWindowFeature(1);
        getWindow().getDecorView().setBackgroundColor(0);
        getWindow().setLayout(-1, -1);
        overridePendingTransition(0, 0);
        m29091a();
        Dialog a = mo26021a((Activity) this);
        if (a != null) {
            a.setOwnerActivity(this);
            a.setOnDismissListener(new DialogInterface$OnDismissListenerC4293a());
            a.show();
        } else {
            finish();
        }
        m29089b();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m29088d();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (mo28588c()) {
            PowerManager powerManager = (PowerManager) getSystemService("power");
            if (!this.f10367e.inKeyguardRestrictedInputMode() && powerManager.isScreenOn()) {
                finish();
            }
        }
    }
}
