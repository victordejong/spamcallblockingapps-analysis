package com.google.android.play.core.splitinstall.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.internal.an;
import com.google.android.play.core.internal.g;
import com.google.android.play.core.splitcompat.q;
import com.google.android.play.core.splitinstall.SplitInstallException;
import com.google.android.play.core.splitinstall.aa;
import com.google.android.play.core.splitinstall.ae;
import com.google.android.play.core.splitinstall.c;
import com.google.android.play.core.splitinstall.t;
import com.google.android.play.core.splitinstall.w;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.f;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/a.class */
public final class a implements com.google.android.play.core.splitinstall.a {

    /* renamed from: a  reason: collision with root package name */
    static final long f31455a = TimeUnit.SECONDS.toMillis(1);
    public static final /* synthetic */ int h = 0;

    /* renamed from: b  reason: collision with root package name */
    final Context f31456b;

    /* renamed from: c  reason: collision with root package name */
    final g<c> f31457c;

    /* renamed from: d  reason: collision with root package name */
    final g<c> f31458d;
    final Executor e;
    final t f;
    final AtomicBoolean g;
    private final Handler i;
    private final ae j;
    private final an k;
    private final File l;
    private final AtomicReference<c> m;
    private final Set<String> n;
    private final Set<String> o;
    private final b p;

    @Deprecated
    public a(Context context, File file) {
        this(context, file, new ae(context, context.getPackageName()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, File file, ae aeVar) {
        Executor a2 = q.a();
        an anVar = new an(context);
        b bVar = b.f31459a;
        this.i = new Handler(Looper.getMainLooper());
        this.m = new AtomicReference<>();
        this.n = Collections.synchronizedSet(new HashSet());
        this.o = Collections.synchronizedSet(new HashSet());
        this.g = new AtomicBoolean(false);
        this.f31456b = context;
        this.l = file;
        this.j = aeVar;
        this.e = a2;
        this.k = anVar;
        this.p = bVar;
        this.f31458d = new g<>();
        this.f31457c = new g<>();
        this.f = aa.f31483a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ c a(int i, c cVar) {
        int b2;
        if (cVar != null && i == cVar.a() && ((b2 = cVar.b()) == 1 || b2 == 2 || b2 == 8 || b2 == 9 || b2 == 7)) {
            return c.a(i, 7, cVar.c(), cVar.d(), cVar.e(), cVar.f(), cVar.g());
        }
        throw new SplitInstallException(-3);
    }

    private final c a(j jVar) {
        synchronized (this) {
            c b2 = b();
            c a2 = jVar.a(b2);
            if (this.m.compareAndSet(b2, a2)) {
                return a2;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ c a(Integer num, int i, int i2, Long l, Long l2, List list, List list2, c cVar) {
        if (cVar == null) {
            cVar = c.a(0, 0, 0, 0L, 0L, new ArrayList(), new ArrayList());
        }
        int a2 = num == null ? cVar.a() : num.intValue();
        long d2 = l == null ? cVar.d() : l.longValue();
        long e = l2 == null ? cVar.e() : l2.longValue();
        List<String> f = list == null ? cVar.f() : list;
        if (list2 == null) {
            list2 = cVar.g();
        }
        return c.a(a2, i, i2, d2, e, f, list2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return str.split("\\.config\\.", 2)[0];
    }

    private final void a(final c cVar) {
        this.i.post(new Runnable(this, cVar) { // from class: com.google.android.play.core.splitinstall.a.g

            /* renamed from: a  reason: collision with root package name */
            private final a f31470a;

            /* renamed from: b  reason: collision with root package name */
            private final c f31471b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31470a = this;
                this.f31471b = cVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                a aVar = this.f31470a;
                c cVar2 = this.f31471b;
                aVar.f31457c.a(cVar2);
                aVar.f31458d.a(cVar2);
            }
        });
    }

    private final w c() {
        w c2 = this.j.c();
        if (c2 != null) {
            return c2;
        }
        throw new IllegalStateException("Language information could not be found. Make sure you are using the target application context, not the tests context, and the app is built as a bundle.");
    }

    private final d<Integer> c(int i) {
        a(new f(i, null));
        return f.a((Exception) new SplitInstallException(i));
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final d<c> a(int i) {
        c b2 = b();
        return (b2 == null || b2.a() != i) ? f.a((Exception) new SplitInstallException(-4)) : f.a(b2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v167 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r29v1, types: [long] */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.play.core.splitinstall.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.play.core.tasks.d<java.lang.Integer> a(final com.google.android.play.core.splitinstall.b r10) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.splitinstall.a.a.a(com.google.android.play.core.splitinstall.b):com.google.android.play.core.tasks.d");
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final Set<String> a() {
        HashSet hashSet = new HashSet();
        if (this.j.b() != null) {
            hashSet.addAll(this.j.b());
        }
        hashSet.addAll(this.o);
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<String> list, List<String> list2, long j) {
        this.n.addAll(list);
        this.o.addAll(list2);
        Long valueOf = Long.valueOf(j);
        a(5, 0, valueOf, valueOf, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<Intent> list, List<String> list2, List<String> list3, long j, boolean z) {
        this.f.a().a(list, new i(this, list2, list3, j, z, list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(final int i, final int i2, final Long l, final Long l2, final List<String> list, final Integer num, final List<String> list2) {
        c a2 = a(new j(num, i, i2, l, l2, list, list2) { // from class: com.google.android.play.core.splitinstall.a.c

            /* renamed from: a  reason: collision with root package name */
            private final Integer f31460a;

            /* renamed from: b  reason: collision with root package name */
            private final int f31461b;

            /* renamed from: c  reason: collision with root package name */
            private final int f31462c;

            /* renamed from: d  reason: collision with root package name */
            private final Long f31463d;
            private final Long e;
            private final List f;
            private final List g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31460a = num;
                this.f31461b = i;
                this.f31462c = i2;
                this.f31463d = l;
                this.e = l2;
                this.f = list;
                this.g = list2;
            }

            @Override // com.google.android.play.core.splitinstall.a.j
            public final com.google.android.play.core.splitinstall.c a(com.google.android.play.core.splitinstall.c cVar) {
                return a.a(this.f31460a, this.f31461b, this.f31462c, this.f31463d, this.e, this.f, this.g, cVar);
            }
        });
        if (a2 == null) {
            return false;
        }
        a(a2);
        return true;
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final boolean a(c cVar, Activity activity, int i) throws IntentSender.SendIntentException {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c b() {
        return this.m.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(int i) {
        return a(6, i, null, null, null, null, null);
    }
}
