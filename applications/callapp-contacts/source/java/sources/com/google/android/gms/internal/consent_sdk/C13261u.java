package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import com.google.android.p314c.AbstractC10613b;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.consent_sdk.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/u.class */
public final class C13261u implements AbstractC10613b {

    /* renamed from: a */
    final Application f50504a;

    /* renamed from: b */
    final C13253m f50505b;

    /* renamed from: c */
    public final C13173ad f50506c;

    /* renamed from: d */
    public final AbstractC13219bu<zzbe> f50507d;

    /* renamed from: e */
    public zzbe f50508e;

    /* renamed from: h */
    private final C13225c f50511h;

    /* renamed from: i */
    private final C13178ai f50512i;

    /* renamed from: j */
    private Dialog f50513j;

    /* renamed from: k */
    private final AtomicBoolean f50514k = new AtomicBoolean();

    /* renamed from: f */
    public final AtomicReference<C13265y> f50509f = new AtomicReference<>();

    /* renamed from: g */
    final AtomicReference<AbstractC10613b.AbstractC10614a> f50510g = new AtomicReference<>();

    /* renamed from: l */
    private final AtomicReference<C13266z> f50515l = new AtomicReference<>();

    public C13261u(Application application, C13225c c13225c, C13178ai c13178ai, C13253m c13253m, C13173ad c13173ad, AbstractC13219bu<zzbe> abstractC13219bu) {
        this.f50504a = application;
        this.f50511h = c13225c;
        this.f50512i = c13178ai;
        this.f50505b = c13253m;
        this.f50506c = c13173ad;
        this.f50507d = abstractC13219bu;
    }

    /* renamed from: a */
    public final void m13524a() {
        Dialog dialog = this.f50513j;
        if (dialog != null) {
            dialog.dismiss();
            this.f50513j = null;
        }
        this.f50512i.f50295a = null;
        C13266z andSet = this.f50515l.getAndSet(null);
        if (andSet != null) {
            andSet.f50520b.f50504a.unregisterActivityLifecycleCallbacks(andSet);
        }
    }

    @Override // com.google.android.p314c.AbstractC10613b
    /* renamed from: a */
    public final void mo13523a(Activity activity, AbstractC10613b.AbstractC10614a abstractC10614a) {
        C13202be.m13564a();
        if (!this.f50514k.compareAndSet(false, true)) {
            abstractC10614a.mo22613a(new zzk(3, "ConsentForm#show can only be invoked once.").m13511a());
            return;
        }
        C13266z c13266z = new C13266z(this, activity);
        this.f50504a.registerActivityLifecycleCallbacks(c13266z);
        this.f50515l.set(c13266z);
        this.f50512i.f50295a = activity;
        Dialog dialog = new Dialog(activity, 16973840);
        dialog.setContentView(this.f50508e);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            abstractC10614a.mo22613a(new zzk(3, "Activity with null windows is passed in.").m13511a());
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.f50510g.set(abstractC10614a);
        dialog.show();
        this.f50513j = dialog;
    }

    /* renamed from: a */
    public final void m13522a(zzk zzkVar) {
        C13265y andSet = this.f50509f.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.mo13517a(zzkVar.m13511a());
    }

    /* renamed from: b */
    public final void m13521b(zzk zzkVar) {
        m13524a();
        AbstractC10613b.AbstractC10614a andSet = this.f50510g.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.mo22613a(zzkVar.m13511a());
    }
}
