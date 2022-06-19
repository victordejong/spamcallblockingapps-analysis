package p223r7;

import android.support.p012v4.media.C0082b;
import com.koushikdutta.async.http.filter.PrematureDataEndException;
import p148k7.AbstractC3360m;
import p148k7.C3358l;
import p148k7.C3367r;
/* renamed from: r7.c */
/* loaded from: classes2-dex2jar.jar:r7/c.class */
public class C4229c extends C3367r {

    /* renamed from: h */
    public long f13244h;

    /* renamed from: i */
    public long f13245i;

    /* renamed from: j */
    public C3358l f13246j = new C3358l();

    public C4229c(long j) {
        this.f13244h = j;
    }

    @Override // p148k7.C3367r, p159l7.AbstractC3513c
    /* renamed from: c */
    public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
        c3358l.m2349d(this.f13246j, (int) Math.min(this.f13244h - this.f13245i, c3358l.f11382c));
        C3358l c3358l2 = this.f13246j;
        int i = c3358l2.f11382c;
        super.mo1099c(abstractC3360m, c3358l2);
        long j = this.f13245i;
        C3358l c3358l3 = this.f13246j;
        int i2 = c3358l3.f11382c;
        this.f13245i = j + (i - i2);
        c3358l3.m2349d(c3358l, i2);
        if (this.f13245i == this.f13244h) {
            mo1262n(null);
        }
    }

    @Override // p148k7.AbstractC3361n
    /* renamed from: n */
    public void mo1262n(Exception exc) {
        PrematureDataEndException prematureDataEndException = exc;
        if (exc == null) {
            prematureDataEndException = exc;
            if (this.f13245i != this.f13244h) {
                StringBuilder m8752j = C0082b.m8752j("End of data reached before content length was read: ");
                m8752j.append(this.f13245i);
                m8752j.append("/");
                m8752j.append(this.f13244h);
                m8752j.append(" Paused: ");
                m8752j.append(mo938e());
                prematureDataEndException = new PrematureDataEndException(m8752j.toString());
            }
        }
        super.mo1262n(prematureDataEndException);
    }
}
