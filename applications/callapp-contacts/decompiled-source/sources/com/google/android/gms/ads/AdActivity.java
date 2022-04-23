package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.ejn;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.qz;
import com.google.android.gms.internal.ads.za;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private qz zzacs;

    private final void zzdq() {
        qz qzVar = this.zzacs;
        if (qzVar != null) {
            try {
                qzVar.zzdq();
            } catch (RemoteException e) {
                za.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onActivityResult(i, i2, intent);
            }
        } catch (Exception e) {
            za.zze("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean z;
        try {
            qz qzVar = this.zzacs;
            z = true;
            if (qzVar != null) {
                z = qzVar.zzwh();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            z = true;
        }
        if (z) {
            super.onBackPressed();
            try {
                qz qzVar2 = this.zzacs;
                if (qzVar2 != null) {
                    qzVar2.onBackPressed();
                }
            } catch (RemoteException e2) {
                za.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.zzae(d.a(configuration));
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ejn ejnVar = new ejn(ekb.b(), this);
        Intent intent = getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            za.zzex("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        qz a2 = ejnVar.a(this, z);
        this.zzacs = a2;
        if (a2 == null) {
            za.zze("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            a2.onCreate(bundle);
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onDestroy();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onPause();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onRestart();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onResume();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onStart();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onStop();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            qz qzVar = this.zzacs;
            if (qzVar != null) {
                qzVar.onUserLeaveHint();
            }
        } catch (RemoteException e) {
            za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        zzdq();
    }

    @Override // android.app.Activity
    public final void setContentView(View view) {
        super.setContentView(view);
        zzdq();
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzdq();
    }
}
