package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzeq;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
/* renamed from: c.d.b.d.i.a.c3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/c3.class */
public final class RunnableC4661c3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f17002a;

    /* renamed from: b */
    public final /* synthetic */ String f17003b;

    /* renamed from: c */
    public final /* synthetic */ Object f17004c;

    /* renamed from: d */
    public final /* synthetic */ Object f17005d;

    /* renamed from: e */
    public final /* synthetic */ Object f17006e;

    /* renamed from: f */
    public final /* synthetic */ zzeq f17007f;

    public RunnableC4661c3(zzeq zzeqVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f17007f = zzeqVar;
        this.f17002a = i;
        this.f17003b = str;
        this.f17004c = obj;
        this.f17005d = obj2;
        this.f17006e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        C4737k3 l = this.f17007f.f17262a.m9050l();
        if (!l.m24910k()) {
            this.f17007f.m9162a(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.f17007f.f29933c;
        if (c == 0) {
            if (this.f17007f.m24897h().m9335k()) {
                this.f17007f.f29933c = 'C';
            } else {
                this.f17007f.f29933c = 'c';
            }
        }
        j = this.f17007f.f29934d;
        if (j < 0) {
            this.f17007f.f29934d = 33025L;
        }
        char charAt = "01VDIWEA?".charAt(this.f17002a);
        c2 = this.f17007f.f29933c;
        j2 = this.f17007f.f29934d;
        String a = zzeq.m9155a(true, this.f17003b, this.f17004c, this.f17005d, this.f17006e);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 24);
        sb.append(InternalAvidAdSessionContext.AVID_API_LEVEL);
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(a);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f17003b.substring(0, 1024);
        }
        l.f17210d.m9123a(str, 1L);
    }
}
