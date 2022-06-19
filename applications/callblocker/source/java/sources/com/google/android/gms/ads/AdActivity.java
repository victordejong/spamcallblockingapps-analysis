package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.ads.AbstractC3371ny;
import com.google.android.gms.internal.ads.C3645yb;
import com.google.android.gms.internal.ads.dyx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {

    /* renamed from: a */
    private AbstractC3371ny f6529a;

    /* renamed from: a */
    private final void m14911a() {
        if (this.f6529a != null) {
            try {
                this.f6529a.mo7365l();
            } catch (RemoteException e) {
                C3645yb.m6744e("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.f6529a.mo7377a(i, i2, intent);
        } catch (Exception e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean z = true;
        try {
            if (this.f6529a != null) {
                z = this.f6529a.mo7372e();
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
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
            this.f6529a.mo7375a(BinderC2734b.m13794a(configuration));
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6529a = dyx.m8161b().m8184a(this);
        if (this.f6529a == null) {
            C3645yb.m6744e("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            this.f6529a.mo7376a(bundle);
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            if (this.f6529a != null) {
                this.f6529a.mo7366k();
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            if (this.f6529a != null) {
                this.f6529a.mo7368i();
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            if (this.f6529a == null) {
                return;
            }
            this.f6529a.mo7371f();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            if (this.f6529a == null) {
                return;
            }
            this.f6529a.mo7369h();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.f6529a != null) {
                this.f6529a.mo7374b(bundle);
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            if (this.f6529a == null) {
                return;
            }
            this.f6529a.mo7370g();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            if (this.f6529a != null) {
                this.f6529a.mo7367j();
            }
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        m14911a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        m14911a();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        m14911a();
    }
}
