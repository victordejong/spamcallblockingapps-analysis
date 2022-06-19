package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.content.ServiceConnection;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.measurement.internal.zzey;
import com.google.android.gms.measurement.internal.zzez;
import com.google.android.gms.measurement.internal.zzfr;
/* renamed from: e.m.a.f.l.a.v */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/v.class */
public final class RunnableC25118v implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzbr f70316a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnection f70317b;

    /* renamed from: c */
    public final /* synthetic */ zzey f70318c;

    public RunnableC25118v(zzey zzeyVar, zzbr zzbrVar, ServiceConnection serviceConnection) {
        this.f70318c = zzeyVar;
        this.f70316a = zzbrVar;
        this.f70317b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzey zzeyVar = this.f70318c;
        zzez zzezVar = zzeyVar.f6394b;
        String str = zzeyVar.f6393a;
        zzbr zzbrVar = this.f70316a;
        zzezVar.f6395a.a().d();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", str);
        try {
            if (zzbrVar.zzd(bundle) == null) {
                zzezVar.f6395a.zzay().f.m38590a("Install Referrer Service returned a null response");
            }
        } catch (Exception e) {
            zzezVar.f6395a.zzay().f.m38589b("Exception occurred while retrieving the Install Referrer", e.getMessage());
        }
        zzezVar.f6395a.a().d();
        zzfr.f();
        throw null;
    }
}
