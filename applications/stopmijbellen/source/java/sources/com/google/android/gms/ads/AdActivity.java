package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzcbs;
import com.google.android.gms.internal.ads.zzciz;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {
    @RecentlyNonNull
    @KeepForSdk
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    private zzcbs zza;

    private final void zza() {
        zzcbs zzcbsVar = this.zza;
        if (zzcbsVar != null) {
            try {
                zzcbsVar.zzv();
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, @RecentlyNonNull Intent intent) {
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar != null) {
                zzcbsVar.zzg(i, i2, intent);
            }
        } catch (Exception e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar != null) {
                if (!zzcbsVar.zzE()) {
                    return;
                }
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
        super.onBackPressed();
        try {
            zzcbs zzcbsVar2 = this.zza;
            if (zzcbsVar2 == null) {
                return;
            }
            zzcbsVar2.zzh();
        } catch (RemoteException e2) {
            zzciz.zzl("#007 Could not call remote method.", e2);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(@RecentlyNonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar == null) {
                return;
            }
            zzcbsVar.zzj(ObjectWrapper.wrap(configuration));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        zzcbs zzn = zzbgo.zza().zzn(this);
        this.zza = zzn;
        if (zzn == null) {
            zzciz.zzl("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            zzn.zzk(bundle);
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar != null) {
                zzcbsVar.zzl();
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar != null) {
                zzcbsVar.zzn();
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onRestart() {
        super.onRestart();
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar == null) {
                return;
            }
            zzcbsVar.zzo();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar == null) {
                return;
            }
            zzcbsVar.zzp();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar != null) {
                zzcbsVar.zzq(bundle);
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar == null) {
                return;
            }
            zzcbsVar.zzr();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar != null) {
                zzcbsVar.zzs();
            }
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            zzcbs zzcbsVar = this.zza;
            if (zzcbsVar == null) {
                return;
            }
            zzcbsVar.zzt();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    public final void setContentView(int i) {
        super.setContentView(i);
        zza();
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view) {
        super.setContentView(view);
        zza();
    }

    @Override // android.app.Activity
    public final void setContentView(@RecentlyNonNull View view, @RecentlyNonNull ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zza();
    }
}
