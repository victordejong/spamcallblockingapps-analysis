package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzhb;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.b5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/b5.class */
public final class RunnableC4653b5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f16973a;

    /* renamed from: b */
    public final /* synthetic */ String f16974b;

    /* renamed from: c */
    public final /* synthetic */ String f16975c;

    /* renamed from: d */
    public final /* synthetic */ zzhb f16976d;

    public RunnableC4653b5(zzhb zzhbVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f16976d = zzhbVar;
        this.f16973a = atomicReference;
        this.f16974b = str2;
        this.f16975c = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16976d.f17262a.m9076D().m8891a(this.f16973a, (String) null, this.f16974b, this.f16975c);
    }
}
