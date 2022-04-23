package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaqy;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwm;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {

    /* renamed from: a */
    public zzaqy f22636a;

    /* renamed from: a */
    public final void m18163a() {
        zzaqy zzaqyVar = this.f22636a;
        if (zzaqyVar != null) {
            try {
                zzaqyVar.mo16402w0();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.f22636a.mo16404a(i, i2, intent);
        } catch (Exception e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean z = true;
        try {
            if (this.f22636a != null) {
                z = this.f22636a.mo16405W1();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            z = true;
        }
        if (z) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.f22636a.mo16407G(ObjectWrapper.m17020a(configuration));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzaqy a = zzwm.m11169b().m11186a(this);
        this.f22636a = a;
        if (a == null) {
            zzbbq.m15851d("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            a.onCreate(bundle);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            if (this.f22636a != null) {
                this.f22636a.onDestroy();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            if (this.f22636a != null) {
                this.f22636a.onPause();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            if (this.f22636a != null) {
                this.f22636a.mo16406N1();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            if (this.f22636a != null) {
                this.f22636a.onResume();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.f22636a != null) {
                this.f22636a.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            if (this.f22636a != null) {
                this.f22636a.onStart();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            if (this.f22636a != null) {
                this.f22636a.mo16403l0();
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        m18163a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        m18163a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        m18163a();
    }
}
