package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.p119b.AbstractC2252c;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.br */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/br.class */
public final class C2841br extends AbstractC2252c.AbstractC2253a {

    /* renamed from: a */
    private final AbstractC2837bn f11873a;

    /* renamed from: b */
    private final List<AbstractC2252c.AbstractC2254b> f11874b = new ArrayList();

    /* renamed from: c */
    private String f11875c;

    public C2841br(AbstractC2837bn abstractC2837bn) {
        C2847bw c2847bw;
        IBinder iBinder;
        this.f11873a = abstractC2837bn;
        try {
            this.f11875c = this.f11873a.mo11738a();
        } catch (RemoteException e) {
            C3645yb.m6748c("", e);
            this.f11875c = "";
        }
        try {
            for (AbstractC2844bu abstractC2844bu : abstractC2837bn.mo11737b()) {
                if (!(abstractC2844bu instanceof IBinder) || (iBinder = (IBinder) abstractC2844bu) == null) {
                    c2847bw = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    c2847bw = queryLocalInterface instanceof AbstractC2844bu ? (AbstractC2844bu) queryLocalInterface : new C2847bw(iBinder);
                }
                if (c2847bw != null) {
                    this.f11874b.add(new C2850bz(c2847bw));
                }
            }
        } catch (RemoteException e2) {
            C3645yb.m6748c("", e2);
        }
    }
}
