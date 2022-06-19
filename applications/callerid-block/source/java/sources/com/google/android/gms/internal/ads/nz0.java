package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.DialogInterface;
import com.google.android.gms.ads.internal.overlay.n;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nz0.class */
final /* synthetic */ class nz0 implements DialogInterface.OnClickListener {

    /* renamed from: b */
    private final jz0 f7815b;

    /* renamed from: c */
    private final String f7816c;

    /* renamed from: d */
    private final jr0 f7817d;

    /* renamed from: e */
    private final Activity f7818e;

    /* renamed from: f */
    private final aq1 f7819f;

    /* renamed from: g */
    private final n f7820g;

    nz0(jz0 jz0Var, String str, jr0 jr0Var, Activity activity, aq1 aq1Var, n nVar) {
        this.f7815b = jz0Var;
        this.f7816c = str;
        this.f7817d = jr0Var;
        this.f7818e = activity;
        this.f7819f = aq1Var;
        this.f7820g = nVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        jz0 jz0Var = this.f7815b;
        String str = this.f7816c;
        jr0 jr0Var = this.f7817d;
        Activity activity = this.f7818e;
        aq1 aq1Var = this.f7819f;
        n nVar = this.f7820g;
        jz0Var.m6904B(str);
        if (jr0Var != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("dialog_action", "dismiss");
            rz0.C6(activity, jr0Var, aq1Var, jz0Var, str, "dialog_click", hashMap);
        }
        if (nVar != null) {
            nVar.b();
        }
    }
}
