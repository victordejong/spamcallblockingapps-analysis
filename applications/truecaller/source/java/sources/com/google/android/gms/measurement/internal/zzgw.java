package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.a.f.l.a.v0;
import java.util.Iterator;
import java.util.TreeSet;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.RunnableC25084m2;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzgw.class */
public final /* synthetic */ class zzgw implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzhw f6429a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f6430b;

    public /* synthetic */ zzgw(zzhw zzhwVar, Bundle bundle) {
        this.f6429a = zzhwVar;
        this.f6430b = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhw zzhwVar = this.f6429a;
        Bundle bundle = this.f6430b;
        if (bundle == null) {
            ((v0) zzhwVar).a.p().w.m38581b(new Bundle());
            return;
        }
        Bundle m38582a = ((v0) zzhwVar).a.p().w.m38582a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (((v0) zzhwVar).a.w().O(obj)) {
                    ((v0) zzhwVar).a.w().v(zzhwVar.p, (String) null, 27, (String) null, (String) null, 0);
                }
                ((v0) zzhwVar).a.zzay().k.m38588c("Invalid default event parameter type. Name, value", str, obj);
            } else if (zzkw.Q(str)) {
                ((v0) zzhwVar).a.zzay().k.m38589b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                m38582a.remove(str);
            } else {
                zzkw w = ((v0) zzhwVar).a.w();
                zzaf zzafVar = ((v0) zzhwVar).a.g;
                if (w.I(RemoteMessageConst.MessageBody.PARAM, str, 100, obj)) {
                    ((v0) zzhwVar).a.w().w(m38582a, str, obj);
                }
            }
        }
        ((v0) zzhwVar).a.w();
        int i = ((v0) zzhwVar).a.g.i();
        if (m38582a.size() > i) {
            Iterator it = new TreeSet(m38582a.keySet()).iterator();
            int i2 = 0;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                int i3 = i2 + 1;
                i2 = i3;
                if (i3 > i) {
                    m38582a.remove(str2);
                    i2 = i3;
                }
            }
            ((v0) zzhwVar).a.w().v(zzhwVar.p, (String) null, 26, (String) null, (String) null, 0);
            ((v0) zzhwVar).a.zzay().k.m38590a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        ((v0) zzhwVar).a.p().w.m38581b(m38582a);
        zzjk u = ((v0) zzhwVar).a.u();
        u.d();
        u.e();
        u.p(new RunnableC25084m2(u, u.m(false), m38582a));
    }
}
