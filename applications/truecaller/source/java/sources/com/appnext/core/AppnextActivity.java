package com.appnext.core;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.RotateAnimation;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.appnext.base.C0472a;
import com.appnext.core.C0540f;
/* loaded from: classes-dex2jar.jar:com/appnext/core/AppnextActivity.class */
public abstract class AppnextActivity extends Activity {

    /* renamed from: db */
    private RelativeLayout f1707db;

    /* renamed from: dc */
    public RelativeLayout f1708dc;
    public Handler handler;
    public String placementID;
    public C0566q userAction;

    /* renamed from: da */
    public String f1706da = "";
    public String guid = "";
    public String banner = "";

    /* renamed from: a */
    public final void m42496a(ViewGroup viewGroup, Drawable drawable) {
        try {
            if (this.f1707db != null) {
                m42494ar();
            }
            RelativeLayout relativeLayout = new RelativeLayout(this);
            this.f1707db = relativeLayout;
            relativeLayout.setBackgroundColor(Color.parseColor("#77ffffff"));
            viewGroup.addView(this.f1707db);
            this.f1707db.getLayoutParams().height = -1;
            this.f1707db.getLayoutParams().width = -1;
            ProgressBar progressBar = new ProgressBar(this, null, 16842871);
            progressBar.setIndeterminateDrawable(drawable);
            progressBar.setIndeterminate(true);
            this.f1707db.addView(progressBar);
            RotateAnimation rotateAnimation = new RotateAnimation(360.0f, 0.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation.setDuration(1000L);
            rotateAnimation.setRepeatCount(-1);
            progressBar.setAnimation(rotateAnimation);
            ((RelativeLayout.LayoutParams) progressBar.getLayoutParams()).addRule(13, -1);
            this.f1707db.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.core.AppnextActivity.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                }
            });
            this.handler.postDelayed(new Runnable() { // from class: com.appnext.core.AppnextActivity.3
                @Override // java.lang.Runnable
                public final void run() {
                    AppnextActivity.this.m42494ar();
                }
            }, 16000L);
        } catch (Throwable th) {
            C0472a.m42577a("AppnextActivity$showClickMask", th);
        }
    }

    /* renamed from: a */
    public void m42495a(AppnextAd appnextAd, C0540f.AbstractC0549a abstractC0549a) {
        C0566q c0566q = this.userAction;
        if (c0566q == null || appnextAd == null) {
            return;
        }
        c0566q.m42340a(appnextAd, appnextAd.getImpressionURL(), abstractC0549a);
    }

    /* renamed from: ar */
    public final void m42494ar() {
        RelativeLayout relativeLayout = this.f1707db;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
            this.f1707db.removeAllViewsInLayout();
            if (this.f1707db.getParent() != null) {
                ((RelativeLayout) this.f1707db.getParent()).removeView(this.f1707db);
            }
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(null);
        }
        this.f1707db = null;
    }

    /* renamed from: b */
    public void m42493b(AppnextAd appnextAd, C0540f.AbstractC0549a abstractC0549a) {
        C0566q c0566q = this.userAction;
        if (c0566q == null || appnextAd == null) {
            return;
        }
        c0566q.m42339a(appnextAd, appnextAd.getAppURL(), this.placementID, abstractC0549a);
    }

    public abstract SettingsManager getConfig();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            C0564o.m42343az().m42344a(new Runnable() { // from class: com.appnext.core.AppnextActivity.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (!C0551g.m42369j(AppnextActivity.this)) {
                        AppnextActivity.this.finish();
                        AppnextActivity.this.runOnUiThread(new Runnable() { // from class: com.appnext.core.AppnextActivity.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                try {
                                    AppnextActivity.this.onError(AppnextError.CONNECTION_ERROR);
                                } catch (Throwable th) {
                                }
                            }
                        });
                    }
                }
            });
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            getWindow().addFlags(128);
            super.onCreate(bundle);
            this.handler = new Handler();
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            this.handler.removeCallbacks(null);
            this.handler = null;
        } catch (Throwable th) {
        }
        try {
            this.userAction.destroy();
            this.userAction = null;
        } catch (Throwable th2) {
            C0472a.m42577a("AppnextActivity$onDestroy", th2);
        }
    }

    public abstract void onError(String str);
}
