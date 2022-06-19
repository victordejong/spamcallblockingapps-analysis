package p006a5;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Locale;
import p030c5.AbstractC0843b;
import p285x4.AbstractC4857a;
/* renamed from: a5.b */
/* loaded from: classes-dex2jar.jar:a5/b.class */
public class C0018b implements AbstractC4857a.AbstractC4859b {

    /* renamed from: a */
    public AbstractC0843b f21a;

    /* renamed from: b */
    public AbstractC0843b f22b;

    /* renamed from: a */
    public void m8928a(int i, Bundle bundle) {
        String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i), bundle);
        Log.isLoggable("FirebaseCrashlytics", 2);
        String string = bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (string != null) {
            Bundle bundle2 = bundle.getBundle("params");
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            AbstractC0843b abstractC0843b = "clx".equals(bundle3.getString("_o")) ? this.f21a : this.f22b;
            if (abstractC0843b == null) {
                return;
            }
            abstractC0843b.mo7281b(string, bundle3);
        }
    }
}
