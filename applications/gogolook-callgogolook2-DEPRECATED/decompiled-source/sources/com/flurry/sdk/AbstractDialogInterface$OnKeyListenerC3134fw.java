package com.flurry.sdk;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.flurry.sdk.fw */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fw.class */
public abstract class AbstractDialogInterface$OnKeyListenerC3134fw extends RelativeLayout implements DialogInterface.OnKeyListener {

    /* renamed from: a */
    public static final String f5102a = AbstractDialogInterface$OnKeyListenerC3134fw.class.getSimpleName();

    /* renamed from: b */
    public final AbstractC3518x f5103b;

    /* renamed from: c */
    public final AbstractC3137a f5104c;

    /* renamed from: d */
    public ProgressDialog f5105d;

    /* renamed from: e */
    public AtomicBoolean f5106e = new AtomicBoolean(false);

    /* renamed from: f */
    public long f5107f = Long.MIN_VALUE;

    /* renamed from: g */
    public final AbstractC3344jl<C3002dq> f5108g = new AbstractC3344jl<C3002dq>() { // from class: com.flurry.sdk.fw.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3002dq dqVar) {
            if (System.currentTimeMillis() - AbstractDialogInterface$OnKeyListenerC3134fw.this.f5107f > 8000) {
                C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.fw.1.1
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C3356jq.m32615a(3, AbstractDialogInterface$OnKeyListenerC3134fw.f5102a, "Failed to load view in 8 seconds.");
                        AbstractDialogInterface$OnKeyListenerC3134fw.this.dismissProgressDialog();
                        AbstractDialogInterface$OnKeyListenerC3134fw.this.removeTimerListener();
                        AbstractDialogInterface$OnKeyListenerC3134fw.this.onViewLoadTimeout();
                    }
                });
            }
        }
    };

    /* renamed from: com.flurry.sdk.fw$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fw$a.class */
    public interface AbstractC3137a {
        /* renamed from: a */
        void mo32972a();

        /* renamed from: b */
        void mo32971b();

        /* renamed from: c */
        void mo32970c();
    }

    public AbstractDialogInterface$OnKeyListenerC3134fw(Context context, AbstractC3518x xVar, AbstractC3137a aVar) {
        super(context);
        this.f5103b = xVar;
        this.f5104c = aVar;
    }

    public void addTimerListener() {
        this.f5107f = System.currentTimeMillis();
        C3003dr.m33334a().m33333a(this.f5108g);
    }

    public void cleanupLayout() {
        removeTimerListener();
    }

    public void dismissProgressDialog() {
        ProgressDialog progressDialog = this.f5105d;
        if (progressDialog != null && progressDialog.isShowing()) {
            try {
                try {
                    this.f5105d.dismiss();
                } catch (Exception e) {
                    C3356jq.m32614a(6, f5102a, "Error in dismissing progress dialog", e);
                }
            } finally {
                this.f5105d = null;
            }
        }
        C3356jq.m32615a(3, f5102a, "Dismiss progress bar.");
        this.f5107f = Long.MIN_VALUE;
        removeTimerListener();
    }

    public C2853ay getAdController() {
        return this.f5103b.mo32279k();
    }

    public int getAdFrameIndex() {
        return this.f5103b.mo32279k().f4111b.f4150e;
    }

    public AbstractC3518x getAdObject() {
        return this.f5103b;
    }

    public C2909cf getAdUnit() {
        return this.f5103b.mo32279k().f4111b.f4147b;
    }

    public void initLayout() {
    }

    public boolean isViewAttachedToActivity() {
        String str = f5102a;
        C3356jq.m32615a(3, str, "fViewAttachedToWindow " + this.f5106e.get());
        return this.f5106e.get();
    }

    public void onActivityDestroy() {
        dismissProgressDialog();
    }

    public void onActivityPause() {
    }

    public void onActivityResume() {
    }

    public void onActivityStart() {
    }

    public void onActivityStop() {
        dismissProgressDialog();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5106e.set(true);
    }

    public boolean onBackKey() {
        return false;
    }

    public void onConfigurationChanged() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5106e.set(false);
    }

    public void onEvent(EnumC2874bi biVar, Map<String, String> map) {
        Context context = getContext();
        AbstractC3518x xVar = this.f5103b;
        C3007du.m33321a(biVar, map, context, xVar, xVar.mo32279k(), 0);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        String str = f5102a;
        C3356jq.m32615a(3, str, "onkey,keycode=" + i + ",event=" + keyEvent.getAction());
        if (dialogInterface != this.f5105d || i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        onEvent(EnumC2874bi.EV_AD_WILL_CLOSE, Collections.emptyMap());
        dialogInterface.dismiss();
        return true;
    }

    public void onViewBack() {
        AbstractC3137a aVar = this.f5104c;
        if (aVar != null) {
            aVar.mo32972a();
        }
    }

    public void onViewClose() {
        AbstractC3137a aVar = this.f5104c;
        if (aVar != null) {
            aVar.mo32971b();
        }
    }

    public void onViewError() {
        AbstractC3137a aVar = this.f5104c;
        if (aVar != null) {
            aVar.mo32970c();
        }
    }

    public void onViewLoadTimeout() {
    }

    public void removeTimerListener() {
        this.f5107f = Long.MIN_VALUE;
        C3003dr.m33334a().m33332b(this.f5108g);
    }

    public void setOrientation(int i) {
        if (getContext() instanceof Activity) {
            Activity activity = (Activity) getContext();
            if (getAdController().m33526d()) {
                C3006dt.m33322b(activity, i);
            }
        }
    }

    public void showProgressDialog() {
        if (getAdController().m33526d()) {
            Context context = getContext();
            ProgressDialog progressDialog = this.f5105d;
            if (progressDialog == null) {
                if (context != null) {
                    C3356jq.m32615a(3, f5102a, "Create and show progress bar");
                    this.f5105d = new ProgressDialog(context);
                    this.f5105d.setProgressStyle(0);
                    this.f5105d.setMessage("Loading...");
                    this.f5105d.setCancelable(true);
                    this.f5105d.setCanceledOnTouchOutside(false);
                    this.f5105d.setOnKeyListener(this);
                    this.f5105d.show();
                    addTimerListener();
                    return;
                }
                C3356jq.m32615a(3, f5102a, "Context is null, cannot create progress dialog.");
            } else if (!progressDialog.isShowing()) {
                C3356jq.m32615a(3, f5102a, "Show progress bar.");
                this.f5105d.show();
                addTimerListener();
            }
        }
    }
}
