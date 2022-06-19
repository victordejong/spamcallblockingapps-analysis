package androidx.work;

import com.google.android.gms.common.api.Api;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import p086f.C2678t;
import p186o1.AbstractC3837n;
import p186o1.AbstractC3841q;
import p186o1.C3823g;
import p186o1.C3840p;
import p186o1.ThreadFactoryC3815a;
/* renamed from: androidx.work.a */
/* loaded from: classes-dex2jar.jar:androidx/work/a.class */
public final class C0677a {

    /* renamed from: a */
    public final Executor f2631a = m7487a(false);

    /* renamed from: b */
    public final Executor f2632b = m7487a(true);

    /* renamed from: c */
    public final AbstractC3841q f2633c = new C3840p();

    /* renamed from: d */
    public final AbstractC3837n f2634d = new C3823g();

    /* renamed from: e */
    public final C2678t f2635e = new C2678t();

    /* renamed from: f */
    public final int f2636f = 4;

    /* renamed from: g */
    public final int f2637g = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: h */
    public final int f2638h = 20;

    /* renamed from: androidx.work.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/a$a.class */
    public static final class C0678a {
    }

    /* renamed from: androidx.work.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/a$b.class */
    public interface AbstractC0679b {
        /* renamed from: a */
        C0677a m7486a();
    }

    public C0677a(C0678a c0678a) {
        String str = AbstractC3841q.f12336a;
    }

    /* renamed from: a */
    public final Executor m7487a(boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactoryC3815a(this, z));
    }
}
