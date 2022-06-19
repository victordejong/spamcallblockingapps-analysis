package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzhw;
/* renamed from: e.m.a.f.l.a.e1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/e1.class */
public final class RunnableC25043e1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f70051a;

    /* renamed from: b */
    public final /* synthetic */ String f70052b;

    /* renamed from: c */
    public final /* synthetic */ Object f70053c;

    /* renamed from: d */
    public final /* synthetic */ long f70054d;

    /* renamed from: e */
    public final /* synthetic */ zzhw f70055e;

    public RunnableC25043e1(zzhw zzhwVar, String str, String str2, Object obj, long j) {
        this.f70055e = zzhwVar;
        this.f70051a = str;
        this.f70052b = str2;
        this.f70053c = obj;
        this.f70054d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70055e.x(this.f70051a, this.f70052b, this.f70053c, this.f70054d);
    }
}
