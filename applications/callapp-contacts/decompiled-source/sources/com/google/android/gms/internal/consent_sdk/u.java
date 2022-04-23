package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import com.google.android.c.b;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/u.class */
public final class u implements b {

    /* renamed from: a  reason: collision with root package name */
    final Application f28852a;

    /* renamed from: b  reason: collision with root package name */
    final m f28853b;

    /* renamed from: c  reason: collision with root package name */
    public final ad f28854c;

    /* renamed from: d  reason: collision with root package name */
    public final bu<zzbe> f28855d;
    public zzbe e;
    private final c h;
    private final ai i;
    private Dialog j;
    private final AtomicBoolean k = new AtomicBoolean();
    public final AtomicReference<y> f = new AtomicReference<>();
    final AtomicReference<b.a> g = new AtomicReference<>();
    private final AtomicReference<z> l = new AtomicReference<>();

    public u(Application application, c cVar, ai aiVar, m mVar, ad adVar, bu<zzbe> buVar) {
        this.f28852a = application;
        this.h = cVar;
        this.i = aiVar;
        this.f28853b = mVar;
        this.f28854c = adVar;
        this.f28855d = buVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        Dialog dialog = this.j;
        if (dialog != null) {
            dialog.dismiss();
            this.j = null;
        }
        this.i.f28695a = null;
        z andSet = this.l.getAndSet(null);
        if (andSet != null) {
            andSet.f28860b.f28852a.unregisterActivityLifecycleCallbacks(andSet);
        }
    }

    @Override // com.google.android.c.b
    public final void a(Activity activity, b.a aVar) {
        be.a();
        if (!this.k.compareAndSet(false, true)) {
            aVar.a(new zzk(3, "ConsentForm#show can only be invoked once.").a());
            return;
        }
        z zVar = new z(this, activity);
        this.f28852a.registerActivityLifecycleCallbacks(zVar);
        this.l.set(zVar);
        this.i.f28695a = activity;
        Dialog dialog = new Dialog(activity, 16973840);
        dialog.setContentView(this.e);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            aVar.a(new zzk(3, "Activity with null windows is passed in.").a());
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.g.set(aVar);
        dialog.show();
        this.j = dialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(zzk zzkVar) {
        y andSet = this.f.getAndSet(null);
        if (andSet != null) {
            andSet.a(zzkVar.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(zzk zzkVar) {
        a();
        b.a andSet = this.g.getAndSet(null);
        if (andSet != null) {
            andSet.a(zzkVar.a());
        }
    }
}
