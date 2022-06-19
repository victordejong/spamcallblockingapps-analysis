package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ta0.class */
public final class ta0 extends AbstractC5796a.AbstractC5797a {

    /* renamed from: a */
    private final List<AbstractC5796a.AbstractC5798b> f29874a = new ArrayList();

    /* renamed from: b */
    private String f29875b;

    public ta0(AbstractC7199yy abstractC7199yy) {
        try {
            this.f29875b = abstractC7199yy.mo8662b();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            this.f29875b = "";
        }
        try {
            for (AbstractC6533gz abstractC6533gz : abstractC7199yy.mo8661c()) {
                AbstractC6533gz m15025E6 = abstractC6533gz instanceof IBinder ? AbstractBinderC6496fz.m15025E6((IBinder) abstractC6533gz) : null;
                if (m15025E6 != null) {
                    this.f29874a.add(new ua0(m15025E6));
                }
            }
        } catch (RemoteException e2) {
            ei0.m15466d("", e2);
        }
    }
}
