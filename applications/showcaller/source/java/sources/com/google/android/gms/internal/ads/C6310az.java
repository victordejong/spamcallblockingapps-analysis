package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AbstractC5606a;
import com.google.android.gms.ads.formats.AbstractC5607b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.az */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/az.class */
public final class C6310az extends AbstractC5606a {

    /* renamed from: a */
    private final AbstractC7199yy f20190a;

    /* renamed from: b */
    private final List<AbstractC5607b> f20191b = new ArrayList();

    /* renamed from: c */
    private String f20192c;

    public C6310az(AbstractC7199yy abstractC7199yy) {
        this.f20190a = abstractC7199yy;
        try {
            this.f20192c = abstractC7199yy.mo8662b();
        } catch (RemoteException e) {
            ei0.m15466d("", e);
            this.f20192c = "";
        }
        try {
            for (AbstractC6533gz abstractC6533gz : abstractC7199yy.mo8661c()) {
                C6459ez c6459ez = null;
                if (abstractC6533gz instanceof IBinder) {
                    IBinder iBinder = (IBinder) abstractC6533gz;
                    if (iBinder == null) {
                        c6459ez = null;
                    } else {
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        c6459ez = queryLocalInterface instanceof AbstractC6533gz ? (AbstractC6533gz) queryLocalInterface : new C6459ez(iBinder);
                    }
                }
                if (c6459ez != null) {
                    this.f20191b.add(new C6570hz(c6459ez));
                }
            }
        } catch (RemoteException e2) {
            ei0.m15466d("", e2);
        }
    }
}
