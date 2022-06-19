package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.widget.ProgressBar;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC11977ac;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.C12058y;
/* renamed from: com.google.android.gms.common.api.internal.bu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bu.class */
public final class RunnableC11880bu implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractDialogInterface$OnCancelListenerC11881bv f39315a;

    /* renamed from: b */
    private final C11878bs f39316b;

    public RunnableC11880bu(AbstractDialogInterface$OnCancelListenerC11881bv abstractDialogInterface$OnCancelListenerC11881bv, C11878bs c11878bs) {
        this.f39315a = abstractDialogInterface$OnCancelListenerC11881bv;
        this.f39316b = c11878bs;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f39315a.f39318c) {
            return;
        }
        ConnectionResult connectionResult = this.f39316b.f39312b;
        if (connectionResult.hasResolution()) {
            this.f39315a.f39212a.startActivityForResult(GoogleApiActivity.m19465a(this.f39315a.m19430a(), (PendingIntent) C12045o.m19162a(connectionResult.getResolution()), this.f39316b.f39311a, false), 1);
            return;
        }
        AbstractDialogInterface$OnCancelListenerC11881bv abstractDialogInterface$OnCancelListenerC11881bv = this.f39315a;
        if (abstractDialogInterface$OnCancelListenerC11881bv.f39320e.mo19272a(abstractDialogInterface$OnCancelListenerC11881bv.m19430a(), connectionResult.getErrorCode(), (String) null) != null) {
            AbstractDialogInterface$OnCancelListenerC11881bv abstractDialogInterface$OnCancelListenerC11881bv2 = this.f39315a;
            C11937b c11937b = abstractDialogInterface$OnCancelListenerC11881bv2.f39320e;
            Activity a = abstractDialogInterface$OnCancelListenerC11881bv2.m19430a();
            AbstractC11898h abstractC11898h = this.f39315a.f39212a;
            int errorCode = connectionResult.getErrorCode();
            AbstractDialogInterface$OnCancelListenerC11881bv abstractDialogInterface$OnCancelListenerC11881bv3 = this.f39315a;
            Dialog m19282a = C11937b.m19282a(a, errorCode, AbstractDialogInterface$OnClickListenerC11977ac.m19225a(abstractC11898h, c11937b.mo19272a(a, errorCode, "d")), abstractDialogInterface$OnCancelListenerC11881bv3);
            if (m19282a == null) {
                return;
            }
            C11937b.m19285a(a, m19282a, GooglePlayServicesUtil.GMS_ERROR_DIALOG, abstractDialogInterface$OnCancelListenerC11881bv3);
        } else if (connectionResult.getErrorCode() != 18) {
            this.f39315a.m19369c(connectionResult, this.f39316b.f39311a);
        } else {
            Activity a2 = this.f39315a.m19430a();
            AbstractDialogInterface$OnCancelListenerC11881bv abstractDialogInterface$OnCancelListenerC11881bv4 = this.f39315a;
            ProgressBar progressBar = new ProgressBar(a2, null, 16842874);
            progressBar.setIndeterminate(true);
            progressBar.setVisibility(0);
            AlertDialog.Builder builder = new AlertDialog.Builder(a2);
            builder.setView(progressBar);
            builder.setMessage(C12058y.m19082c(a2, 18));
            builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
            AlertDialog create = builder.create();
            C11937b.m19285a(a2, create, "GooglePlayServicesUpdatingDialog", abstractDialogInterface$OnCancelListenerC11881bv4);
            Context applicationContext = this.f39315a.m19430a().getApplicationContext();
            C11879bt c11879bt = new C11879bt(this, create);
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
            intentFilter.addDataScheme("package");
            zabr zabrVar = new zabr(c11879bt);
            applicationContext.registerReceiver(zabrVar, intentFilter);
            zabrVar.f39414a = applicationContext;
            if (C11943d.zza(applicationContext, "com.google.android.gms")) {
                return;
            }
            c11879bt.mo19377a();
            zabrVar.m19300a();
        }
    }
}
