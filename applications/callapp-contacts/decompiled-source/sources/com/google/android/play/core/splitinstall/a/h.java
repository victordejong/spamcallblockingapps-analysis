package com.google.android.play.core.splitinstall.a;

import android.content.Intent;
import android.os.SystemClock;
import com.google.android.play.core.splitinstall.c;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/h.class */
final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f31472a;

    /* renamed from: b  reason: collision with root package name */
    private final List f31473b;

    /* renamed from: c  reason: collision with root package name */
    private final List f31474c;

    /* renamed from: d  reason: collision with root package name */
    private final List f31475d;
    private final long e;
    private final /* synthetic */ int f = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(a aVar, long j, List list, List list2, List list3) {
        this.f31472a = aVar;
        this.e = j;
        this.f31473b = list;
        this.f31474c = list2;
        this.f31475d = list3;
    }

    h(a aVar, List list, List list2, List list3, long j) {
        this.f31472a = aVar;
        this.f31473b = list;
        this.f31474c = list2;
        this.f31475d = list3;
        this.e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f != 0) {
            a aVar = this.f31472a;
            long j = this.e;
            List list = this.f31473b;
            List list2 = this.f31474c;
            List list3 = this.f31475d;
            long j2 = j / 3;
            long j3 = 0;
            for (int i = 0; i < 3; i++) {
                j3 = Math.min(j, j3 + j2);
                aVar.a(2, 0, Long.valueOf(j3), Long.valueOf(j), null, null, null);
                SystemClock.sleep(a.f31455a);
                c b2 = aVar.b();
                if (b2.b() == 9 || b2.b() == 7 || b2.b() == 6) {
                    return;
                }
            }
            aVar.e.execute(new h(aVar, list, list2, list3, j));
            return;
        }
        a aVar2 = this.f31472a;
        List<Intent> list4 = this.f31473b;
        List<String> list5 = this.f31474c;
        List<String> list6 = this.f31475d;
        long j4 = this.e;
        if (aVar2.g.get()) {
            aVar2.b(-6);
        } else if (aVar2.f.a() != null) {
            aVar2.a(list4, list5, list6, j4, false);
        } else {
            aVar2.a(list5, list6, j4);
        }
    }
}
