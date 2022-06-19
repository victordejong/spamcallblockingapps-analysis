package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.internal.zaar;
import java.util.Objects;
/* renamed from: e.m.a.f.e.a.a.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/d.class */
public final class RunnableC24913d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zaar f69825a;

    public RunnableC24913d(zaar zaarVar) {
        this.f69825a = zaarVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zaar zaarVar = this.f69825a;
        GoogleApiAvailabilityLight googleApiAvailabilityLight = zaarVar.f5790d;
        Context context = zaarVar.f5789c;
        Objects.requireNonNull(googleApiAvailabilityLight);
        GooglePlayServicesUtilLight.cancelAvailabilityErrorNotifications(context);
    }
}
