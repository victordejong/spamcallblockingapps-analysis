package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.AppEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczr.class */
public final class zzczr implements AppEventListener {

    /* renamed from: a */
    public zzxk f26820a;

    /* renamed from: a */
    public final zzxk m13731a() {
        zzxk zzxkVar;
        synchronized (this) {
            zzxkVar = this.f26820a;
        }
        return zzxkVar;
    }

    /* renamed from: a */
    public final void m13730a(zzxk zzxkVar) {
        synchronized (this) {
            this.f26820a = zzxkVar;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.AppEventListener
    /* renamed from: a */
    public final void mo13729a(String str, String str2) {
        synchronized (this) {
            if (this.f26820a != null) {
                try {
                    this.f26820a.mo11141a(str, str2);
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAppEvent.", e);
                }
            }
        }
    }
}
