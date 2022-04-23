package p131c.p161d.p282e.p340u;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.internal.RemoteConfigManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p173b.AbstractC2497f;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p334r.AbstractC5887a;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p340u.p341d.C5927a;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p131c.p161d.p282e.p340u.p349l.C5994b;
import p131c.p161d.p282e.p352w.C6078m;
/* renamed from: c.d.e.u.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/c.class */
public class C5926c {

    /* renamed from: a */
    public final Map<String, String> f19280a;

    /* renamed from: b */
    public final C5927a f19281b;

    /* renamed from: c */
    public final C5994b f19282c;

    static {
        C5969a.m22496a();
    }

    public C5926c(C5128c cVar, AbstractC5887a<C6078m> aVar, AbstractC5898g gVar, AbstractC5887a<AbstractC2497f> aVar2) {
        this(cVar, aVar, gVar, aVar2, RemoteConfigManager.getInstance(), C5927a.m22644v(), GaugeManager.getInstance());
    }

    public C5926c(C5128c cVar, AbstractC5887a<C6078m> aVar, AbstractC5898g gVar, AbstractC5887a<AbstractC2497f> aVar2, RemoteConfigManager remoteConfigManager, C5927a aVar3, GaugeManager gaugeManager) {
        this.f19280a = new ConcurrentHashMap();
        if (cVar == null) {
            this.f19281b = aVar3;
            this.f19282c = new C5994b(new Bundle());
            return;
        }
        C5992l.m22374g().m22399a(cVar, gVar, aVar2);
        Context b = cVar.m24468b();
        this.f19282c = m22690a(b);
        remoteConfigManager.setFirebaseRemoteConfigProvider(aVar);
        this.f19281b = aVar3;
        aVar3.m22683a(this.f19282c);
        this.f19281b.m22685a(b);
        gaugeManager.setApplicationContext(b);
        aVar3.m22671d();
    }

    /* renamed from: a */
    public static C5994b m22690a(Context context) {
        Bundle bundle;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("No perf enable meta data found ");
            sb.append(e.getMessage());
            Log.d("isEnabled", "isEnabled".toString());
            bundle = null;
        }
        return bundle != null ? new C5994b(bundle) : new C5994b();
    }

    /* renamed from: b */
    public static C5926c m22689b() {
        return (C5926c) C5128c.m24458j().m24471a(C5926c.class);
    }

    /* renamed from: a */
    public Map<String, String> m22691a() {
        return new HashMap(this.f19280a);
    }
}
