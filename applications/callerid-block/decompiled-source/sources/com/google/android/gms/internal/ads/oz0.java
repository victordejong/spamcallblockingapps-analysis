package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.DialogInterface;
import com.google.android.gms.ads.internal.overlay.n;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oz0.class */
final /* synthetic */ class oz0 implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    private final jz0 f7911b;

    /* renamed from: c */
    private final String f7912c;

    /* renamed from: d */
    private final jr0 f7913d;

    /* renamed from: e */
    private final Activity f7914e;

    /* renamed from: f */
    private final aq1 f7915f;

    /* renamed from: g */
    private final n f7916g;

    oz0(jz0 jz0Var, String str, jr0 jr0Var, Activity activity, aq1 aq1Var, n nVar) {
        this.f7911b = jz0Var;
        this.f7912c = str;
        this.f7913d = jr0Var;
        this.f7914e = activity;
        this.f7915f = aq1Var;
        this.f7916g = nVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        jz0 jz0Var = this.f7911b;
        String str = this.f7912c;
        jr0 jr0Var = this.f7913d;
        Activity activity = this.f7914e;
        aq1 aq1Var = this.f7915f;
        n nVar = this.f7916g;
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
