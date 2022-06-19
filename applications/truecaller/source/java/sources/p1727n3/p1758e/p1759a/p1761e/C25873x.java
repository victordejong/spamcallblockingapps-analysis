package p1727n3.p1758e.p1759a.p1761e;

import android.support.p001v4.media.session.MediaSessionCompat;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.a.e.x */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/x.class */
public final /* synthetic */ class C25873x implements AbstractC26249d {

    /* renamed from: a */
    public final /* synthetic */ C25852r1 f72370a;

    @Override // p1727n3.p1790h.p1791a.AbstractC26249d
    /* renamed from: a */
    public final Object mo2255a(C26247b c26247b) {
        String str;
        C25852r1 c25852r1 = this.f72370a;
        synchronized (c25852r1.f72299a) {
            MediaSessionCompat.m43187x(c25852r1.f72312n == null, "Release completer expected to be null");
            c25852r1.f72312n = c26247b;
            str = "Release[session=" + c25852r1 + "]";
        }
        return str;
    }
}
