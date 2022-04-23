package p530d.p541c.p543b0.p557i;

import p530d.p541c.p543b0.p555g.AbstractC9784f;
import p530d.p541c.p560e0.C9815a;
/* renamed from: d.c.b0.i.c */
/* loaded from: classes2-dex2jar.jar:d/c/b0/i/c.class */
public final class C9801c {
    /* renamed from: a */
    public static void m2007a() {
        if (!C9815a.m1944a()) {
            return;
        }
        if ((Thread.currentThread() instanceof AbstractC9784f) || C9815a.m1925b()) {
            throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
        }
    }
}
