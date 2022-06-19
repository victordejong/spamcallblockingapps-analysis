package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzab;
import com.google.android.gms.measurement.internal.zzau;
import com.google.android.gms.measurement.internal.zzhw;
import com.google.android.gms.measurement.internal.zzks;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.g1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/g1.class */
public final class RunnableC25055g1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Bundle f70102a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70103b;

    public RunnableC25055g1(zzhw zzhwVar, Bundle bundle) {
        this.f70103b = zzhwVar;
        this.f70102a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhw zzhwVar = this.f70103b;
        Bundle bundle = this.f70102a;
        zzhwVar.d();
        zzhwVar.e();
        Objects.requireNonNull(bundle, "null reference");
        String string = bundle.getString(AnalyticsConstants.NAME);
        String string2 = bundle.getString("origin");
        Preconditions.m38901g(string);
        Preconditions.m38901g(string2);
        Objects.requireNonNull(bundle.get("value"), "null reference");
        if (!((v0) zzhwVar).a.c()) {
            ((v0) zzhwVar).a.zzay().n.m38590a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzks zzksVar = new zzks(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            zzau o0 = ((v0) zzhwVar).a.w().o0(bundle.getString(HiAnalyticsConstant.BI_KEY_APP_ID), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, true);
            ((v0) zzhwVar).a.u().i(new zzab(bundle.getString(HiAnalyticsConstant.BI_KEY_APP_ID), string2, zzksVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), ((v0) zzhwVar).a.w().o0(bundle.getString(HiAnalyticsConstant.BI_KEY_APP_ID), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, true), bundle.getLong("trigger_timeout"), o0, bundle.getLong("time_to_live"), ((v0) zzhwVar).a.w().o0(bundle.getString(HiAnalyticsConstant.BI_KEY_APP_ID), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, true)));
        } catch (IllegalArgumentException e) {
        }
    }
}
