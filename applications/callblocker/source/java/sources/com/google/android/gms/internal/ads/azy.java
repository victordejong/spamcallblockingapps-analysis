package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.util.AbstractC2708e;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azy.class */
public final class azy implements View.OnClickListener {

    /* renamed from: a */
    String f10749a;

    /* renamed from: b */
    Long f10750b;

    /* renamed from: c */
    WeakReference<View> f10751c;

    /* renamed from: d */
    private final bcy f10752d;

    /* renamed from: e */
    private final AbstractC2708e f10753e;

    /* renamed from: f */
    private AbstractC3014dt f10754f;

    /* renamed from: g */
    private AbstractC3131fa<Object> f10755g;

    public azy(bcy bcyVar, AbstractC2708e abstractC2708e) {
        this.f10752d = bcyVar;
        this.f10753e = abstractC2708e;
    }

    /* renamed from: c */
    private final void m12181c() {
        View view;
        this.f10749a = null;
        this.f10750b = null;
        if (this.f10751c == null || (view = this.f10751c.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.f10751c = null;
    }

    /* renamed from: a */
    public final AbstractC3014dt m12184a() {
        return this.f10754f;
    }

    /* renamed from: a */
    public final void m12183a(AbstractC3014dt abstractC3014dt) {
        this.f10754f = abstractC3014dt;
        if (this.f10755g != null) {
            this.f10752d.m12082b("/unconfirmedClick", this.f10755g);
        }
        this.f10755g = new AbstractC3131fa(this, abstractC3014dt) { // from class: com.google.android.gms.internal.ads.bab

            /* renamed from: a */
            private final azy f10769a;

            /* renamed from: b */
            private final AbstractC3014dt f10770b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10769a = this;
                this.f10770b = abstractC3014dt;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3131fa
            /* renamed from: a */
            public final void mo7414a(Object obj, Map map) {
                azy azyVar = this.f10769a;
                AbstractC3014dt abstractC3014dt2 = this.f10770b;
                try {
                    azyVar.f10750b = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException e) {
                    C3556uu.m6749c("Failed to call parse unconfirmedClickTimestamp.");
                }
                azyVar.f10749a = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (abstractC3014dt2 == null) {
                    C3556uu.m6751b("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    abstractC3014dt2.mo8516a(str);
                } catch (RemoteException e2) {
                    C3645yb.m6744e("#007 Could not call remote method.", e2);
                }
            }
        };
        this.f10752d.m12088a("/unconfirmedClick", this.f10755g);
    }

    /* renamed from: b */
    public final void m12182b() {
        if (this.f10754f == null || this.f10750b == null) {
            return;
        }
        m12181c();
        try {
            this.f10754f.mo8517a();
        } catch (RemoteException e) {
            C3645yb.m6744e("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f10751c == null || this.f10751c.get() != view) {
            return;
        }
        if (this.f10749a != null && this.f10750b != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.f10749a);
            hashMap.put("time_interval", String.valueOf(this.f10753e.mo13862a() - this.f10750b.longValue()));
            hashMap.put("messageType", "onePointFiveClick");
            this.f10752d.m12087a("sendMessageToNativeJs", hashMap);
        }
        m12181c();
    }
}
