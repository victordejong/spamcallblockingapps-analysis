package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gj2.class */
public final class gj2 {

    /* renamed from: a */
    public final int f23367a;

    /* renamed from: b */
    public final mk3 f23368b;

    /* renamed from: c */
    private final CopyOnWriteArrayList<ei2> f23369c;

    public gj2() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    private gj2(CopyOnWriteArrayList<ei2> copyOnWriteArrayList, int i, mk3 mk3Var) {
        this.f23369c = copyOnWriteArrayList;
        this.f23367a = i;
        this.f23368b = mk3Var;
    }

    /* renamed from: a */
    public final gj2 m14929a(int i, mk3 mk3Var) {
        return new gj2(this.f23369c, i, mk3Var);
    }

    /* renamed from: b */
    public final void m14928b(Handler handler, fk2 fk2Var) {
        this.f23369c.add(new ei2(handler, fk2Var));
    }

    /* renamed from: c */
    public final void m14927c(fk2 fk2Var) {
        Iterator<ei2> it = this.f23369c.iterator();
        while (it.hasNext()) {
            ei2 next = it.next();
            if (next.f22186b == fk2Var) {
                this.f23369c.remove(next);
            }
        }
    }
}
