package p193e.p1577m.p1578a.p1642f.p1671r.p1673b;

import com.google.android.gms.internal.vision.zzea;
import com.google.android.gms.vision.clearcut.DynamiteClearcutLogger;
import com.google.android.gms.vision.clearcut.VisionClearcutLogger;
/* renamed from: e.m.a.f.r.b.a */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/r/b/a.class */
public final class RunnableC25148a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f70388a;

    /* renamed from: b */
    public final /* synthetic */ zzea.zzo f70389b;

    /* renamed from: c */
    public final /* synthetic */ DynamiteClearcutLogger f70390c;

    public RunnableC25148a(DynamiteClearcutLogger dynamiteClearcutLogger, int i, zzea.zzo zzoVar) {
        this.f70390c = dynamiteClearcutLogger;
        this.f70388a = i;
        this.f70389b = zzoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        VisionClearcutLogger visionClearcutLogger;
        visionClearcutLogger = this.f70390c.zzbp;
        visionClearcutLogger.zzb(this.f70388a, this.f70389b);
    }
}
