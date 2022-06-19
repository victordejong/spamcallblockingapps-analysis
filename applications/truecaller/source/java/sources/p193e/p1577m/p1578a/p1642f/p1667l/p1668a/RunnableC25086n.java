package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzaf;
import com.google.android.gms.measurement.internal.zzeh;
import com.google.android.gms.measurement.internal.zzeu;
import com.tenor.android.core.constant.StringConstant;
/* renamed from: e.m.a.f.l.a.n */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/n.class */
public final class RunnableC25086n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f70213a;

    /* renamed from: b */
    public final /* synthetic */ String f70214b;

    /* renamed from: c */
    public final /* synthetic */ Object f70215c;

    /* renamed from: d */
    public final /* synthetic */ Object f70216d;

    /* renamed from: e */
    public final /* synthetic */ Object f70217e;

    /* renamed from: f */
    public final /* synthetic */ zzeh f70218f;

    public RunnableC25086n(zzeh zzehVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f70218f = zzehVar;
        this.f70213a = i;
        this.f70214b = str;
        this.f70215c = obj;
        this.f70216d = obj2;
        this.f70217e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u p = ((v0) this.f70218f).a.p();
        if (!p.j()) {
            Log.println(6, this.f70218f.s(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        zzeh zzehVar = this.f70218f;
        if (zzehVar.c == 0) {
            zzaf zzafVar = ((v0) zzehVar).a.g;
            if (zzafVar.d == null) {
                synchronized (zzafVar) {
                    if (zzafVar.d == null) {
                        ApplicationInfo applicationInfo = ((v0) zzafVar).a.a.getApplicationInfo();
                        String m38773a = ProcessUtils.m38773a();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            zzafVar.d = Boolean.valueOf(str != null && str.equals(m38773a));
                        }
                        if (zzafVar.d == null) {
                            zzafVar.d = Boolean.TRUE;
                            ((v0) zzafVar).a.zzay().f.m38590a("My process not in the list of running processes");
                        }
                    }
                }
            }
            if (zzafVar.d.booleanValue()) {
                zzeh zzehVar2 = this.f70218f;
                zzaa zzaaVar = ((v0) zzehVar2).a.f;
                zzehVar2.c = (char) 67;
            } else {
                zzeh zzehVar3 = this.f70218f;
                zzaa zzaaVar2 = ((v0) zzehVar3).a.f;
                zzehVar3.c = (char) 99;
            }
        }
        zzeh zzehVar4 = this.f70218f;
        if (zzehVar4.d < 0) {
            ((v0) zzehVar4).a.g.m();
            zzehVar4.d = 55005L;
        }
        char charAt = "01VDIWEA?".charAt(this.f70213a);
        zzeh zzehVar5 = this.f70218f;
        char c = zzehVar5.c;
        long j = zzehVar5.d;
        String q = zzeh.q(true, this.f70214b, this.f70215c, this.f70216d, this.f70217e);
        StringBuilder sb = new StringBuilder(q.length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c);
        sb.append(j);
        sb.append(StringConstant.COLON);
        sb.append(q);
        String sb2 = sb.toString();
        String str2 = sb2;
        if (sb2.length() > 1024) {
            str2 = this.f70214b.substring(0, 1024);
        }
        zzeu zzeuVar = p.d;
        if (zzeuVar == null) {
            return;
        }
        zzeuVar.f6388e.d();
        if (zzeuVar.f6388e.k().getLong(zzeuVar.f6384a, 0L) == 0) {
            zzeuVar.m38578a();
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        long j2 = zzeuVar.f6388e.k().getLong(zzeuVar.f6385b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = zzeuVar.f6388e.k().edit();
            edit.putString(zzeuVar.f6386c, str3);
            edit.putLong(zzeuVar.f6385b, 1L);
            edit.apply();
            return;
        }
        long nextLong = ((v0) zzeuVar.f6388e).a.w().o().nextLong();
        long j3 = j2 + 1;
        long j4 = RecyclerView.FOREVER_NS / j3;
        SharedPreferences.Editor edit2 = zzeuVar.f6388e.k().edit();
        if ((RecyclerView.FOREVER_NS & nextLong) < j4) {
            edit2.putString(zzeuVar.f6386c, str3);
        }
        edit2.putLong(zzeuVar.f6385b, j3);
        edit2.apply();
    }
}
