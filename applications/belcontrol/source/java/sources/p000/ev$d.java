package p000;
/* renamed from: ev$d */
/* loaded from: classes-dex2jar.jar:ev$d.class */
public class ev$d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ xv f6431a;

    /* renamed from: b */
    public final /* synthetic */ Object f6432b;

    /* renamed from: c */
    public final /* synthetic */ ev$g0 f6433c;

    /* renamed from: d */
    public final /* synthetic */ ev f6434d;

    public ev$d(ev evVar, xv xvVar, Object obj, ev$g0 ev_g0) {
        this.f6434d = evVar;
        this.f6431a = xvVar;
        this.f6432b = obj;
        this.f6433c = ev_g0;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f6431a.isCancelled()) {
            synchronized (this.f6434d.f) {
                if (this.f6434d.c.r(this.f6432b)) {
                    this.f6434d.f.remove(this.f6433c);
                }
            }
        }
    }
}
