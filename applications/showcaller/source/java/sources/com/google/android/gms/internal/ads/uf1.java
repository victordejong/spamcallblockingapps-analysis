package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.AbstractC6227e;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uf1.class */
public final class uf1 implements View.OnClickListener {

    /* renamed from: d */
    private final qj1 f30593d;

    /* renamed from: e */
    private final AbstractC6227e f30594e;

    /* renamed from: f */
    private z00 f30595f;

    /* renamed from: g */
    private n20<Object> f30596g;

    /* renamed from: h */
    String f30597h;

    /* renamed from: i */
    Long f30598i;

    /* renamed from: j */
    WeakReference<View> f30599j;

    public uf1(qj1 qj1Var, AbstractC6227e abstractC6227e) {
        this.f30593d = qj1Var;
        this.f30594e = abstractC6227e;
    }

    /* renamed from: d */
    private final void m10335d() {
        View view;
        this.f30597h = null;
        this.f30598i = null;
        WeakReference<View> weakReference = this.f30599j;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.f30599j = null;
    }

    /* renamed from: a */
    public final void m10338a(z00 z00Var) {
        this.f30595f = z00Var;
        n20<Object> n20Var = this.f30596g;
        if (n20Var != null) {
            this.f30593d.m11875f("/unconfirmedClick", n20Var);
        }
        n20<Object> n20Var2 = new n20(this, z00Var) { // from class: com.google.android.gms.internal.ads.tf1

            /* renamed from: a */
            private final uf1 f29959a;

            /* renamed from: b */
            private final z00 f29960b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29959a = this;
                this.f29960b = z00Var;
            }

            @Override // com.google.android.gms.internal.ads.n20
            /* renamed from: a */
            public final void mo8404a(Object obj, Map map) {
                uf1 uf1Var = this.f29959a;
                z00 z00Var2 = this.f29960b;
                try {
                    uf1Var.f30598i = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException e) {
                    ei0.m15467c("Failed to call parse unconfirmedClickTimestamp.");
                }
                uf1Var.f30597h = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (z00Var2 == null) {
                    ei0.m15469a("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    z00Var2.mo8636B(str);
                } catch (RemoteException e2) {
                    ei0.m15461i("#007 Could not call remote method.", e2);
                }
            }
        };
        this.f30596g = n20Var2;
        this.f30593d.m11876e("/unconfirmedClick", n20Var2);
    }

    /* renamed from: b */
    public final z00 m10337b() {
        return this.f30595f;
    }

    /* renamed from: c */
    public final void m10336c() {
        if (this.f30595f == null || this.f30598i == null) {
            return;
        }
        m10335d();
        try {
            this.f30595f.mo8635d();
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f30599j;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.f30597h != null && this.f30598i != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.f30597h);
            hashMap.put("time_interval", String.valueOf(this.f30594e.mo16807a() - this.f30598i.longValue()));
            hashMap.put("messageType", "onePointFiveClick");
            this.f30593d.m11874g("sendMessageToNativeJs", hashMap);
        }
        m10335d();
    }
}
