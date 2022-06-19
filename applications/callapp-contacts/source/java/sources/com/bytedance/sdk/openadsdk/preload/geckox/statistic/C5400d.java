package com.bytedance.sdk.openadsdk.preload.geckox.statistic;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.C5320b;
import com.bytedance.sdk.openadsdk.preload.geckox.model.UpdatePackage;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5366g;
import com.bytedance.sdk.openadsdk.preload.geckox.p211d.C5367h;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.C5414a;
import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.StatisticModel;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5425i;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5279b;
import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/d.class */
class C5400d {
    /* renamed from: a */
    public static AbstractC5280a m32398a() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.6
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18926i = false;
                m32400a.f18929l = SystemClock.uptimeMillis();
                m32400a.f18936s = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel()).f18926i = true;
            }
        };
    }

    /* renamed from: a */
    public static AbstractC5280a m32397a(final Context context) {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.4
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                Pair pair = (Pair) abstractC5279b.mo32630b(C5366g.class);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) pair.second).getChannel());
                String uri = ((Uri) pair.first).toString();
                m32400a.f18913B = false;
                m32400a.f18942y = SystemClock.uptimeMillis();
                m32400a.f18940w.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(uri, th.getMessage()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18913B = true;
                m32400a.f18942y = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: c */
            public final <T> void mo32385c(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32385c(abstractC5279b, abstractC5283d);
                Pair pair = (Pair) abstractC5279b.mo32630b(C5366g.class);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) pair.second).getChannel());
                m32400a.f18939v = ((Uri) pair.first).toString();
                m32400a.f18933p = C5425i.m32346a(context);
                m32400a.f18941x = SystemClock.uptimeMillis();
                m32400a.f18935r = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                m32400a.f18920c = ((UpdatePackage) pair.second).getChannel();
                if (!TextUtils.isEmpty(((UpdatePackage) pair.second).getAccessKey())) {
                    m32400a.f18918a = ((UpdatePackage) pair.second).getAccessKey();
                }
                if (!TextUtils.isEmpty(((UpdatePackage) pair.second).getGroupName())) {
                    m32400a.f18919b = ((UpdatePackage) pair.second).getGroupName();
                }
            }
        };
    }

    /* renamed from: a */
    public static AbstractC5280a m32396a(final C5320b c5320b) {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.1
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32387a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32387a(abstractC5279b, abstractC5283d);
                C5412e.m32382a(c5320b, C5398b.m32401a(abstractC5283d.m32660c()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5412e.m32382a(c5320b, C5398b.m32401a(abstractC5283d.m32660c()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32386b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32386b(abstractC5279b, abstractC5283d, th);
                C5412e.m32382a(c5320b, C5398b.m32401a(abstractC5283d.m32660c()));
            }
        };
    }

    /* renamed from: b */
    public static AbstractC5280a m32395b() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.7
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18927j = false;
                m32400a.f18930m = SystemClock.uptimeMillis();
                m32400a.f18937t = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18927j = true;
                m32400a.f18930m = SystemClock.uptimeMillis();
            }
        };
    }

    /* renamed from: b */
    public static AbstractC5280a m32394b(final Context context) {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.5
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                Pair pair = (Pair) abstractC5279b.mo32630b(C5367h.class);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) pair.second).getChannel());
                String uri = ((Uri) pair.first).toString();
                m32400a.f18925h = false;
                m32400a.f18924g = SystemClock.uptimeMillis();
                m32400a.f18922e.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(uri, th.getMessage()));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18925h = true;
                m32400a.f18924g = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: c */
            public final <T> void mo32385c(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32385c(abstractC5279b, abstractC5283d);
                Pair pair = (Pair) abstractC5279b.mo32630b(C5367h.class);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) pair.second).getChannel());
                m32400a.f18921d = ((Uri) pair.first).toString();
                m32400a.f18933p = C5425i.m32346a(context);
                m32400a.f18923f = SystemClock.uptimeMillis();
                m32400a.f18934q = Long.valueOf(((UpdatePackage) pair.second).getPatch().getId());
                m32400a.f18935r = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                m32400a.f18920c = ((UpdatePackage) pair.second).getChannel();
            }
        };
    }

    /* renamed from: c */
    public static AbstractC5280a m32393c() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.8
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18927j = false;
                m32400a.f18931n = SystemClock.uptimeMillis();
                m32400a.f18937t = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18927j = true;
                m32400a.f18931n = SystemClock.uptimeMillis();
            }
        };
    }

    /* renamed from: d */
    public static AbstractC5280a m32392d() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.9
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18914C = false;
                m32400a.f18943z = SystemClock.uptimeMillis();
                m32400a.f18916E = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18914C = true;
                m32400a.f18943z = SystemClock.uptimeMillis();
            }
        };
    }

    /* renamed from: e */
    public static AbstractC5280a m32391e() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.10
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18915D = false;
                m32400a.f18912A = SystemClock.uptimeMillis();
                m32400a.f18917F = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18915D = true;
                m32400a.f18912A = SystemClock.uptimeMillis();
            }
        };
    }

    /* renamed from: f */
    public static AbstractC5280a m32390f() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.11
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18928k = false;
                m32400a.f18938u = th.getMessage();
                m32400a.f18932o = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18928k = true;
                m32400a.f18932o = SystemClock.uptimeMillis();
            }
        };
    }

    /* renamed from: g */
    public static AbstractC5280a m32389g() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.2
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32387a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32387a(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18915D = true;
                m32400a.f18912A = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18915D = false;
                m32400a.f18912A = SystemClock.uptimeMillis();
                m32400a.f18917F = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32386b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32386b(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5366g.class)).second).getChannel());
                m32400a.f18915D = false;
                m32400a.f18912A = SystemClock.uptimeMillis();
                m32400a.f18917F = th.getMessage();
            }
        };
    }

    /* renamed from: h */
    public static AbstractC5280a m32388h() {
        return new AbstractC5280a() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.statistic.d.3
            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32387a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32387a(abstractC5279b, abstractC5283d);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18928k = true;
                m32400a.f18932o = SystemClock.uptimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: a */
            public final <T> void mo32384a(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32384a(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18928k = false;
                m32400a.f18932o = SystemClock.uptimeMillis();
                m32400a.f18938u = th.getMessage();
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32383b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d) {
                super.mo32383b(abstractC5279b, abstractC5283d);
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a
            /* renamed from: b */
            public final <T> void mo32386b(AbstractC5279b<T> abstractC5279b, AbstractC5283d abstractC5283d, Throwable th) {
                super.mo32386b(abstractC5279b, abstractC5283d, th);
                C5414a m32400a = C5398b.m32401a(abstractC5283d.m32660c()).m32400a(((UpdatePackage) ((Pair) abstractC5279b.mo32630b(C5367h.class)).second).getChannel());
                m32400a.f18928k = false;
                m32400a.f18932o = SystemClock.uptimeMillis();
                m32400a.f18917F = th.getMessage();
            }
        };
    }
}
