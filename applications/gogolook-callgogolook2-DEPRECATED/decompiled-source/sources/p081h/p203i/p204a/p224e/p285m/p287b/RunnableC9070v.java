package p081h.p203i.p204a.p224e.p285m.p287b;

import androidx.annotation.WorkerThread;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
@WorkerThread
/* renamed from: h.i.a.e.m.b.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/v.class */
public final class RunnableC9070v implements Runnable {

    /* renamed from: a */
    public final AbstractC9064u f20701a;

    /* renamed from: b */
    public final int f20702b;

    /* renamed from: c */
    public final Throwable f20703c;

    /* renamed from: d */
    public final byte[] f20704d;

    /* renamed from: e */
    public final String f20705e;

    /* renamed from: f */
    public final Map<String, List<String>> f20706f;

    public RunnableC9070v(String str, AbstractC9064u uVar, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        C7021t.m21290a(uVar);
        this.f20701a = uVar;
        this.f20702b = i;
        this.f20703c = th;
        this.f20704d = bArr;
        this.f20705e = str;
        this.f20706f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f20701a.mo16122a(this.f20705e, this.f20702b, this.f20703c, this.f20704d, this.f20706f);
    }
}
