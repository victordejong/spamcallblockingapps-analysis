package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.ads.AbstractC2069zh;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.m03;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {

    /* renamed from: b */
    private AbstractC2069zh f5431b;

    /* renamed from: a */
    private final void m9067a() {
        AbstractC2069zh zhVar = this.f5431b;
        if (zhVar != null) {
            try {
                zhVar.m4636o();
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, @RecentlyNonNull Intent intent) {
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4648D3(i, i2, intent);
            }
        } catch (Exception e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                if (!zhVar.m4643g()) {
                    return;
                }
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
        super.onBackPressed();
        try {
            AbstractC2069zh zhVar2 = this.f5431b;
            if (zhVar2 != null) {
                zhVar2.m4645a();
            }
        } catch (RemoteException e2) {
            C1894po.m6177i("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(@RecentlyNonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4646W(b.g3(configuration));
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AbstractC2069zh f = m03.m6635b().m6888f(this);
        this.f5431b = f;
        if (f != null) {
            try {
                f.m4647J0(bundle);
                return;
            } catch (RemoteException e) {
                e = e;
            }
        } else {
            e = null;
        }
        C1894po.m6177i("#007 Could not call remote method.", e);
        finish();
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4638l();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4639k();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4641i();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4640j();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4635x0(bundle);
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4642h();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4637n();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            AbstractC2069zh zhVar = this.f5431b;
            if (zhVar != null) {
                zhVar.m4644d();
            }
        } catch (RemoteException e) {
            C1894po.m6177i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        m9067a();
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view) {
        super.setContentView(view);
        m9067a();
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        m9067a();
    }
}
