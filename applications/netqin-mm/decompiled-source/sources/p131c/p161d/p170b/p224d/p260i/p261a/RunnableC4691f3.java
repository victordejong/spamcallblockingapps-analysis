package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.i.a.f3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/f3.class */
public final class RunnableC4691f3 implements Runnable {

    /* renamed from: a */
    public final AbstractC4701g3 f17071a;

    /* renamed from: b */
    public final int f17072b;

    /* renamed from: c */
    public final Throwable f17073c;

    /* renamed from: d */
    public final byte[] f17074d;

    /* renamed from: e */
    public final String f17075e;

    /* renamed from: f */
    public final Map<String, List<String>> f17076f;

    public RunnableC4691f3(String str, AbstractC4701g3 g3Var, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        Preconditions.m17288a(g3Var);
        this.f17071a = g3Var;
        this.f17072b = i;
        this.f17073c = th;
        this.f17074d = bArr;
        this.f17075e = str;
        this.f17076f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17071a.mo24893a(this.f17075e, this.f17072b, this.f17073c, this.f17074d, this.f17076f);
    }
}
