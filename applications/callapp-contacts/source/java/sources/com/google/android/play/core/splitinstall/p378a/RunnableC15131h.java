package com.google.android.play.core.splitinstall.p378a;

import android.content.Intent;
import android.os.SystemClock;
import com.google.android.play.core.splitinstall.AbstractC15152c;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.a.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/h.class */
final /* synthetic */ class RunnableC15131h implements Runnable {

    /* renamed from: a */
    private final C15124a f54902a;

    /* renamed from: b */
    private final List f54903b;

    /* renamed from: c */
    private final List f54904c;

    /* renamed from: d */
    private final List f54905d;

    /* renamed from: e */
    private final long f54906e;

    /* renamed from: f */
    private final /* synthetic */ int f54907f = 1;

    public RunnableC15131h(C15124a c15124a, long j, List list, List list2, List list3) {
        this.f54902a = c15124a;
        this.f54906e = j;
        this.f54903b = list;
        this.f54904c = list2;
        this.f54905d = list3;
    }

    RunnableC15131h(C15124a c15124a, List list, List list2, List list3, long j) {
        this.f54902a = c15124a;
        this.f54903b = list;
        this.f54904c = list2;
        this.f54905d = list3;
        this.f54906e = j;
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    @Override // java.lang.Runnable
    public final void run() {
        if (this.f54907f == 0) {
            C15124a c15124a = this.f54902a;
            List<Intent> list = this.f54903b;
            List<String> list2 = this.f54904c;
            List<String> list3 = this.f54905d;
            long j = this.f54906e;
            if (c15124a.f54877g.get()) {
                c15124a.m9409b(-6);
                return;
            } else if (c15124a.f54876f.mo9344a() != null) {
                c15124a.m9411a(list, list2, list3, j, false);
                return;
            } else {
                c15124a.m9412a(list2, list3, j);
                return;
            }
        }
        C15124a c15124a2 = this.f54902a;
        long j2 = this.f54906e;
        List list4 = this.f54903b;
        List list5 = this.f54904c;
        List list6 = this.f54905d;
        long j3 = j2 / 3;
        char c = 0;
        for (int i = 0; i < 3; i++) {
            c = Math.min(j2, c + j3);
            c15124a2.m9421a(2, 0, Long.valueOf(c), Long.valueOf(j2), null, null, null);
            SystemClock.sleep(C15124a.f54870a);
            AbstractC15152c m9410b = c15124a2.m9410b();
            if (m9410b.mo9380b() == 9 || m9410b.mo9380b() == 7 || m9410b.mo9380b() == 6) {
                return;
            }
        }
        c15124a2.f54875e.execute(new RunnableC15131h(c15124a2, list4, list5, list6, j2));
    }
}
