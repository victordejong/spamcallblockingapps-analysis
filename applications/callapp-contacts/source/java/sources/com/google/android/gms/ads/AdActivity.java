package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.AbstractC12868qz;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.ejn;
import com.google.android.gms.internal.ads.ekb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdActivity.class */
public final class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private AbstractC12868qz zzacs;

    private final void zzdq() {
        AbstractC12868qz abstractC12868qz = this.zzacs;
        if (abstractC12868qz != null) {
            try {
                abstractC12868qz.zzdq();
            } catch (RemoteException e) {
                C13088za.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz != null) {
                abstractC12868qz.onActivityResult(i, i2, intent);
            }
        } catch (Exception e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        boolean z;
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            z = true;
            if (abstractC12868qz != null) {
                z = abstractC12868qz.zzwh();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            z = true;
        }
        if (z) {
            super.onBackPressed();
            try {
                AbstractC12868qz abstractC12868qz2 = this.zzacs;
                if (abstractC12868qz2 == null) {
                    return;
                }
                abstractC12868qz2.onBackPressed();
            } catch (RemoteException e2) {
                C13088za.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz == null) {
                return;
            }
            abstractC12868qz.zzae(BinderC12129d.m18979a(configuration));
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ejn ejnVar = new ejn(ekb.m14834b(), this);
        Intent intent = getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            C13088za.zzex("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        AbstractC12868qz m14843a = ejnVar.m14843a(this, z);
        this.zzacs = m14843a;
        if (m14843a == null) {
            C13088za.zze("#007 Could not call remote method.", null);
            finish();
            return;
        }
        try {
            m14843a.onCreate(bundle);
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz != null) {
                abstractC12868qz.onDestroy();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected final void onPause() {
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz != null) {
                abstractC12868qz.onPause();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        super.onRestart();
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz == null) {
                return;
            }
            abstractC12868qz.onRestart();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onResume() {
        super.onResume();
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz == null) {
                return;
            }
            abstractC12868qz.onResume();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz != null) {
                abstractC12868qz.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected final void onStart() {
        super.onStart();
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz == null) {
                return;
            }
            abstractC12868qz.onStart();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected final void onStop() {
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz != null) {
                abstractC12868qz.onStop();
            }
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    protected final void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            AbstractC12868qz abstractC12868qz = this.zzacs;
            if (abstractC12868qz == null) {
                return;
            }
            abstractC12868qz.onUserLeaveHint();
        } catch (RemoteException e) {
            C13088za.zze("#007 Could not call remote method.", e);
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
