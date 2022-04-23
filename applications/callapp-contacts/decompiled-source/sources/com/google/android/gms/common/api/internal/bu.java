package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.widget.ProgressBar;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.b;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.ac;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.y;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bu.class */
public final class bu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bv f22708a;

    /* renamed from: b  reason: collision with root package name */
    private final bs f22709b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(bv bvVar, bs bsVar) {
        this.f22708a = bvVar;
        this.f22709b = bsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f22708a.f22711c) {
            ConnectionResult connectionResult = this.f22709b.f22705b;
            if (connectionResult.hasResolution()) {
                this.f22708a.f22627a.startActivityForResult(GoogleApiActivity.a(this.f22708a.a(), (PendingIntent) o.a(connectionResult.getResolution()), this.f22709b.f22704a, false), 1);
                return;
            }
            bv bvVar = this.f22708a;
            if (bvVar.e.a(bvVar.a(), connectionResult.getErrorCode(), (String) null) != null) {
                bv bvVar2 = this.f22708a;
                b bVar = bvVar2.e;
                Activity a2 = bvVar2.a();
                h hVar = this.f22708a.f22627a;
                int errorCode = connectionResult.getErrorCode();
                bv bvVar3 = this.f22708a;
                Dialog a3 = b.a(a2, errorCode, ac.a(hVar, bVar.a(a2, errorCode, "d")), bvVar3);
                if (a3 != null) {
                    b.a(a2, a3, GooglePlayServicesUtil.GMS_ERROR_DIALOG, bvVar3);
                }
            } else if (connectionResult.getErrorCode() == 18) {
                Activity a4 = this.f22708a.a();
                bv bvVar4 = this.f22708a;
                ProgressBar progressBar = new ProgressBar(a4, null, 16842874);
                progressBar.setIndeterminate(true);
                progressBar.setVisibility(0);
                AlertDialog.Builder builder = new AlertDialog.Builder(a4);
                builder.setView(progressBar);
                builder.setMessage(y.c(a4, 18));
                builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
                AlertDialog create = builder.create();
                b.a(a4, create, "GooglePlayServicesUpdatingDialog", bvVar4);
                Context applicationContext = this.f22708a.a().getApplicationContext();
                bt btVar = new bt(this, create);
                IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
                intentFilter.addDataScheme("package");
                zabr zabrVar = new zabr(btVar);
                applicationContext.registerReceiver(zabrVar, intentFilter);
                zabrVar.f22776a = applicationContext;
                if (!d.zza(applicationContext, "com.google.android.gms")) {
                    btVar.a();
                    zabrVar.a();
                }
            } else {
                this.f22708a.c(connectionResult, this.f22709b.f22704a);
            }
        }
    }
}
