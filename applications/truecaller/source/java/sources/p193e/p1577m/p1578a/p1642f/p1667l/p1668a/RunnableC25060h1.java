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
/* renamed from: e.m.a.f.l.a.h1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/h1.class */
public final class RunnableC25060h1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Bundle f70116a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70117b;

    public RunnableC25060h1(zzhw zzhwVar, Bundle bundle) {
        this.f70117b = zzhwVar;
        this.f70116a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhw zzhwVar = this.f70117b;
        Bundle bundle = this.f70116a;
        zzhwVar.d();
        zzhwVar.e();
        Objects.requireNonNull(bundle, "null reference");
        String string = bundle.getString(AnalyticsConstants.NAME);
        Preconditions.m38901g(string);
        if (!((v0) zzhwVar).a.c()) {
            ((v0) zzhwVar).a.zzay().n.m38590a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            ((v0) zzhwVar).a.u().i(new zzab(bundle.getString(HiAnalyticsConstant.BI_KEY_APP_ID), "", new zzks(string, 0L, (Object) null, ""), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), (zzau) null, bundle.getLong("trigger_timeout"), (zzau) null, bundle.getLong("time_to_live"), ((v0) zzhwVar).a.w().o0(bundle.getString(HiAnalyticsConstant.BI_KEY_APP_ID), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), true, true)));
        } catch (IllegalArgumentException e) {
        }
    }
}
