package p626l.p638x.p639d;

import p626l.p638x.C15079a;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.x.d.a */
/* loaded from: classes3-dex2jar.jar:l/x/d/a.class */
public class C15083a extends C15079a {
    @Override // p626l.p638x.C15079a
    /* renamed from: a */
    public void mo451a(Throwable th, Throwable th2) {
        C15149k.m377b(th, "cause");
        C15149k.m377b(th2, "exception");
        th.addSuppressed(th2);
    }
}
