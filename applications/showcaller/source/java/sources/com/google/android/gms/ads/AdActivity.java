package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.dynamic.BinderC6255b;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.kb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {

    /* renamed from: d */
    private kb0 f18204d;

    /* renamed from: a */
    private final void m18316a() {
        kb0 kb0Var = this.f18204d;
        if (kb0Var != null) {
            try {
                kb0Var.mo13930o();
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, @RecentlyNonNull Intent intent) {
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var != null) {
                kb0Var.mo13940V1(i, i2, intent);
            }
        } catch (Exception e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var != null) {
                if (!kb0Var.zzg()) {
                    return;
                }
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
        super.onBackPressed();
        try {
            kb0 kb0Var2 = this.f18204d;
            if (kb0Var2 == null) {
                return;
            }
            kb0Var2.mo13939a();
        } catch (RemoteException e2) {
            ei0.m15461i("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(@RecentlyNonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var == null) {
                return;
            }
            kb0Var.mo13941S(BinderC6255b.m16744m2(configuration));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        kb0 m10186n = C7118wr.m9484b().m10186n(this);
        this.f18204d = m10186n;
        if (m10186n == null) {
            ei0.m15461i("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            m10186n.mo13938a0(bundle);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var != null) {
                kb0Var.mo13933k();
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var != null) {
                kb0Var.mo13934i();
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var == null) {
                return;
            }
            kb0Var.zzi();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var == null) {
                return;
            }
            kb0Var.mo13935h();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var != null) {
                kb0Var.mo13931m0(bundle);
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var == null) {
                return;
            }
            kb0Var.mo13936g();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var != null) {
                kb0Var.mo13932l();
            }
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            kb0 kb0Var = this.f18204d;
            if (kb0Var == null) {
                return;
            }
            kb0Var.mo13937d();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        m18316a();
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view) {
        super.setContentView(view);
        m18316a();
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        m18316a();
    }
}
