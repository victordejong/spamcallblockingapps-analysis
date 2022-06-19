package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.tt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tt.class */
public final class C7009tt {

    /* renamed from: a */
    private final String f30346a;

    /* renamed from: b */
    private final AbstractC6972st f30347b;

    public C7009tt(AbstractC6972st abstractC6972st) {
        String str;
        this.f30347b = abstractC6972st;
        try {
            str = abstractC6972st.mo9058a();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            str = null;
        }
        this.f30346a = str;
    }

    public final String toString() {
        return this.f30346a;
    }
}
