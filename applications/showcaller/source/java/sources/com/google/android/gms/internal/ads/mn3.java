package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mn3.class */
public final class mn3 {

    /* renamed from: a */
    private final CopyOnWriteArrayList<ln3> f26686a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public final void m13141a(Handler handler, nn3 nn3Var) {
        m13140b(nn3Var);
        this.f26686a.add(new ln3(handler, nn3Var));
    }

    /* renamed from: b */
    public final void m13140b(nn3 nn3Var) {
        nn3 nn3Var2;
        Iterator<ln3> it = this.f26686a.iterator();
        while (it.hasNext()) {
            ln3 next = it.next();
            nn3Var2 = next.f26183b;
            if (nn3Var2 == nn3Var) {
                next.m13475d();
                this.f26686a.remove(next);
            }
        }
    }

    /* renamed from: c */
    public final void m13139c(int i, long j, long j2) {
        boolean z;
        Handler handler;
        Iterator<ln3> it = this.f26686a.iterator();
        while (it.hasNext()) {
            ln3 next = it.next();
            z = next.f26184c;
            if (!z) {
                handler = next.f26182a;
                handler.post(new Runnable(next, i, j, j2) { // from class: com.google.android.gms.internal.ads.kn3

                    /* renamed from: d */
                    private final ln3 f25273d;

                    /* renamed from: e */
                    private final int f25274e;

                    /* renamed from: f */
                    private final long f25275f;

                    /* renamed from: g */
                    private final long f25276g;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25273d = next;
                        this.f25274e = i;
                        this.f25275f = j;
                        this.f25276g = j2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        nn3 nn3Var;
                        ln3 ln3Var = this.f25273d;
                        int i2 = this.f25274e;
                        long j3 = this.f25275f;
                        long j4 = this.f25276g;
                        nn3Var = ln3Var.f26183b;
                        nn3Var.mo11245D(i2, j3, j4);
                    }
                });
            }
        }
    }
}
