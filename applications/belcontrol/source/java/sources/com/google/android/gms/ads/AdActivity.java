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
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzwr;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {
    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    @KeepForSdk
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private zzaro zzacn;

    private final void zzdp() {
        zzaro zzaroVar = this.zzacn;
        if (zzaroVar != null) {
            try {
                zzaroVar.zzdp();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.zzacn.onActivityResult(i, i2, intent);
        } catch (Exception e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean z;
        try {
            zzaro zzaroVar = this.zzacn;
            z = true;
            if (zzaroVar != null) {
                z = zzaroVar.zzvw();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            z = true;
        }
        if (z) {
            super.onBackPressed();
            try {
                this.zzacn.onBackPressed();
            } catch (RemoteException e2) {
                zzazk.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.zzacn.zzad(ObjectWrapper.wrap(configuration));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzaro zzb = zzwr.zzqo().zzb(this);
        this.zzacn = zzb;
        if (zzb == null) {
            e = null;
        } else {
            try {
                zzb.onCreate(bundle);
                return;
            } catch (RemoteException e) {
                e = e;
            }
        }
        zzazk.zze("#007 Could not call remote method.", e);
        finish();
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            zzaro zzaroVar = this.zzacn;
            if (zzaroVar != null) {
                zzaroVar.onDestroy();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            zzaro zzaroVar = this.zzacn;
            if (zzaroVar != null) {
                zzaroVar.onPause();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            zzaro zzaroVar = this.zzacn;
            if (zzaroVar == null) {
                return;
            }
            zzaroVar.onRestart();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            zzaro zzaroVar = this.zzacn;
            if (zzaroVar == null) {
                return;
            }
            zzaroVar.onResume();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        try {
            zzaro zzaroVar = this.zzacn;
            if (zzaroVar != null) {
                zzaroVar.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            zzaro zzaroVar = this.zzacn;
            if (zzaroVar == null) {
                return;
            }
            zzaroVar.onStart();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            zzaro zzaroVar = this.zzacn;
            if (zzaroVar != null) {
                zzaroVar.onStop();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            this.zzacn.onUserLeaveHint();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        zzdp();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        zzdp();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzdp();
    }
}
