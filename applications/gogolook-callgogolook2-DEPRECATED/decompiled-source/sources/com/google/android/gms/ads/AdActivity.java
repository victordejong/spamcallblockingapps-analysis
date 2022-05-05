package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7164a0;
import p081h.p203i.p204a.p224e.p259j.p260a.C7430v3;
import p081h.p203i.p204a.p224e.p259j.p260a.C7452x1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    public AbstractC7164a0 zzup;

    private final void zzax() {
        AbstractC7164a0 a0Var = this.zzup;
        if (a0Var != null) {
            try {
                a0Var.mo20971G();
            } catch (RemoteException e) {
                C7452x1.m20567d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.zzup.mo20970a(i, i2, intent);
        } catch (Exception e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean z = true;
        try {
            if (this.zzup != null) {
                z = this.zzup.mo20969a0();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            z = true;
        }
        if (z) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.zzup.mo20967h(BinderC7110d.m21058a(configuration));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzup = C7430v3.m20639b().m20869a(this);
        AbstractC7164a0 a0Var = this.zzup;
        if (a0Var == null) {
            C7452x1.m20567d("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            a0Var.onCreate(bundle);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        try {
            if (this.zzup != null) {
                this.zzup.onDestroy();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        try {
            if (this.zzup != null) {
                this.zzup.onPause();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        try {
            if (this.zzup != null) {
                this.zzup.mo20968d0();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            if (this.zzup != null) {
                this.zzup.onResume();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.zzup != null) {
                this.zzup.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        try {
            if (this.zzup != null) {
                this.zzup.onStart();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        try {
            if (this.zzup != null) {
                this.zzup.onStop();
            }
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        zzax();
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        zzax();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzax();
    }
}
