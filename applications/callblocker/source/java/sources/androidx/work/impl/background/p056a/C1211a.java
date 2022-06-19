package androidx.work.impl.background.p056a;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.work.AbstractC1293l;
import androidx.work.C1308s;
import androidx.work.impl.AbstractC1142a;
import androidx.work.impl.AbstractC1228d;
import androidx.work.impl.C1249i;
import androidx.work.impl.p052a.AbstractC1165c;
import androidx.work.impl.p052a.C1166d;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.work.impl.background.a.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/a/a.class */
public class C1211a implements AbstractC1142a, AbstractC1165c, AbstractC1228d {

    /* renamed from: a */
    private static final String f4059a = AbstractC1293l.m17541a("GreedyScheduler");

    /* renamed from: b */
    private final Context f4060b;

    /* renamed from: c */
    private final C1249i f4061c;

    /* renamed from: d */
    private final C1166d f4062d;

    /* renamed from: f */
    private boolean f4064f;

    /* renamed from: h */
    private Boolean f4066h;

    /* renamed from: e */
    private List<C1191p> f4063e = new ArrayList();

    /* renamed from: g */
    private final Object f4065g = new Object();

    public C1211a(Context context, AbstractC1271a abstractC1271a, C1249i c1249i) {
        this.f4060b = context;
        this.f4061c = c1249i;
        this.f4062d = new C1166d(context, abstractC1271a, this);
    }

    /* renamed from: a */
    private void m17770a() {
        if (!this.f4064f) {
            this.f4061c.m17648f().m17715a(this);
            this.f4064f = true;
        }
    }

    /* renamed from: b */
    private String m17769b() {
        String str;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) this.f4060b.getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && !runningAppProcesses.isEmpty()) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    str = runningAppProcessInfo.processName;
                    break;
                }
            }
        }
        str = null;
        return str;
    }

    /* renamed from: b */
    private void m17768b(String str) {
        synchronized (this.f4065g) {
            int size = this.f4063e.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                } else if (this.f4063e.get(i).f4013a.equals(str)) {
                    AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f4063e.remove(i);
                    this.f4062d.m17830a(this.f4063e);
                    break;
                } else {
                    i++;
                }
            }
        }
    }

    @Override // androidx.work.impl.AbstractC1228d
    /* renamed from: a */
    public void mo17704a(String str) {
        if (this.f4066h == null) {
            this.f4066h = Boolean.valueOf(TextUtils.equals(this.f4060b.getPackageName(), m17769b()));
        }
        if (!this.f4066h.booleanValue()) {
            AbstractC1293l.m17543a().mo17538c(f4059a, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        m17770a();
        AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Cancelling work ID %s", str), new Throwable[0]);
        this.f4061c.m17654b(str);
    }

    @Override // androidx.work.impl.AbstractC1142a
    /* renamed from: a */
    public void mo17680a(String str, boolean z) {
        m17768b(str);
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: a */
    public void mo17557a(List<String> list) {
        for (String str : list) {
            AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            this.f4061c.m17660a(str);
        }
    }

    @Override // androidx.work.impl.AbstractC1228d
    /* renamed from: a */
    public void mo17703a(C1191p... c1191pArr) {
        if (this.f4066h == null) {
            this.f4066h = Boolean.valueOf(TextUtils.equals(this.f4060b.getPackageName(), m17769b()));
        }
        if (!this.f4066h.booleanValue()) {
            AbstractC1293l.m17543a().mo17538c(f4059a, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        m17770a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (C1191p c1191p : c1191pArr) {
            if (c1191p.f4014b == C1308s.EnumC1309a.ENQUEUED && !c1191p.m17808a() && c1191p.f4019g == 0 && !c1191p.m17805b()) {
                if (!c1191p.m17803d()) {
                    AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Starting work for %s", c1191p.f4013a), new Throwable[0]);
                    this.f4061c.m17660a(c1191p.f4013a);
                } else if (Build.VERSION.SDK_INT >= 23 && c1191p.f4022j.m17938c()) {
                    AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Ignoring WorkSpec %s, Requires device idle.", c1191p), new Throwable[0]);
                } else if (Build.VERSION.SDK_INT < 24 || !c1191p.f4022j.m17930i()) {
                    arrayList.add(c1191p);
                    arrayList2.add(c1191p.f4013a);
                } else {
                    AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", c1191p), new Throwable[0]);
                }
            }
        }
        synchronized (this.f4065g) {
            if (!arrayList.isEmpty()) {
                AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Starting tracking for [%s]", TextUtils.join(",", arrayList2)), new Throwable[0]);
                this.f4063e.addAll(arrayList);
                this.f4062d.m17830a(this.f4063e);
            }
        }
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: b */
    public void mo17556b(List<String> list) {
        for (String str : list) {
            AbstractC1293l.m17543a().mo17539b(f4059a, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f4061c.m17654b(str);
        }
    }
}
