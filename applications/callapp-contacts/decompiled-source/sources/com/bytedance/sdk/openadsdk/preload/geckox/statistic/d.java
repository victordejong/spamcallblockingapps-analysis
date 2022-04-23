package com.bytedance.sdk.openadsdk.preload.geckox.statistic;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.b.b;
import com.bytedance.sdk.openadsdk.preload.b.b.a;
import com.bytedance.sdk.openadsdk.preload.geckox.d.g;
import com.bytedance.sdk.openadsdk.preload.geckox.d.h;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.StatisticModel;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/d.class */
class d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.6
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.i = false;
                a2.l = SystemClock.uptimeMillis();
                a2.s = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel()).i = true;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(final Context context) {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.4
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                Pair pair = (Pair) bVar.b(g.class);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) pair.second).getChannel());
                String uri = ((Uri) pair.first).toString();
                a2.B = false;
                a2.y = SystemClock.uptimeMillis();
                a2.w.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(uri, th.getMessage()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.B = true;
                a2.y = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void c(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.c(bVar, dVar);
                Pair pair = (Pair) bVar.b(g.class);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) pair.second).getChannel());
                a2.v = ((Uri) pair.first).toString();
                a2.p = i.a(context);
                a2.x = SystemClock.uptimeMillis();
                a2.r = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                a2.f10246c = ((UpdatePackage) pair.second).getChannel();
                if (!TextUtils.isEmpty(((UpdatePackage) pair.second).getAccessKey())) {
                    a2.f10244a = ((UpdatePackage) pair.second).getAccessKey();
                }
                if (!TextUtils.isEmpty(((UpdatePackage) pair.second).getGroupName())) {
                    a2.f10245b = ((UpdatePackage) pair.second).getGroupName();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(final com.bytedance.sdk.openadsdk.preload.geckox.b bVar) {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.1
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar2, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.a(bVar2, dVar);
                e.a(com.bytedance.sdk.openadsdk.preload.geckox.b.this, b.a(dVar.c()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar2, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar2, dVar, th);
                e.a(com.bytedance.sdk.openadsdk.preload.geckox.b.this, b.a(dVar.c()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar2, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.b(bVar2, dVar, th);
                e.a(com.bytedance.sdk.openadsdk.preload.geckox.b.this, b.a(dVar.c()));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.7
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.j = false;
                a2.m = SystemClock.uptimeMillis();
                a2.t = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.j = true;
                a2.m = SystemClock.uptimeMillis();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(final Context context) {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.5
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                Pair pair = (Pair) bVar.b(h.class);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) pair.second).getChannel());
                String uri = ((Uri) pair.first).toString();
                a2.h = false;
                a2.g = SystemClock.uptimeMillis();
                a2.e.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(uri, th.getMessage()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.h = true;
                a2.g = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void c(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.c(bVar, dVar);
                Pair pair = (Pair) bVar.b(h.class);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) pair.second).getChannel());
                a2.f10247d = ((Uri) pair.first).toString();
                a2.p = i.a(context);
                a2.f = SystemClock.uptimeMillis();
                a2.q = Long.valueOf(((UpdatePackage) pair.second).getPatch().getId());
                a2.r = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                a2.f10246c = ((UpdatePackage) pair.second).getChannel();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a c() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.8
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.j = false;
                a2.n = SystemClock.uptimeMillis();
                a2.t = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.j = true;
                a2.n = SystemClock.uptimeMillis();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a d() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.9
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.C = false;
                a2.z = SystemClock.uptimeMillis();
                a2.E = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.C = true;
                a2.z = SystemClock.uptimeMillis();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a e() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.10
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.D = false;
                a2.A = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.D = true;
                a2.A = SystemClock.uptimeMillis();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a f() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.11
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.k = false;
                a2.u = th.getMessage();
                a2.o = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.k = true;
                a2.o = SystemClock.uptimeMillis();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a g() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.2
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.a(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.D = true;
                a2.A = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.D = false;
                a2.A = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.b(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a2.D = false;
                a2.A = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a h() {
        return new a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.3
            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.a(bVar, dVar);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.k = true;
                a2.o = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void a(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.a(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.k = false;
                a2.o = SystemClock.uptimeMillis();
                a2.u = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar) {
                super.b(bVar, dVar);
            }

            @Override // com.bytedance.sdk.openadsdk.preload.b.b.a
            public final <T> void b(b<T> bVar, com.bytedance.sdk.openadsdk.preload.b.d dVar, Throwable th) {
                super.b(bVar, dVar, th);
                com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a a2 = b.a(dVar.c()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a2.k = false;
                a2.o = SystemClock.uptimeMillis();
                a2.F = th.getMessage();
            }
        };
    }
}
