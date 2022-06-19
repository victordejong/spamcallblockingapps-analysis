package p1727n3.p1807k.p1817f;

import android.content.Context;
import java.util.concurrent.Callable;
import p1727n3.p1807k.p1817f.C26527j;
/* renamed from: n3.k.f.f */
/* loaded from: classes-dex2jar.jar:n3/k/f/f.class */
public class CallableC26523f implements Callable<C26527j.C26528a> {

    /* renamed from: a */
    public final /* synthetic */ String f74320a;

    /* renamed from: b */
    public final /* synthetic */ Context f74321b;

    /* renamed from: c */
    public final /* synthetic */ C26522e f74322c;

    /* renamed from: d */
    public final /* synthetic */ int f74323d;

    public CallableC26523f(String str, Context context, C26522e c26522e, int i) {
        this.f74320a = str;
        this.f74321b = context;
        this.f74322c = c26522e;
        this.f74323d = i;
    }

    @Override // java.util.concurrent.Callable
    public C26527j.C26528a call() throws Exception {
        return C26527j.m1713a(this.f74320a, this.f74321b, this.f74322c, this.f74323d);
    }
}
