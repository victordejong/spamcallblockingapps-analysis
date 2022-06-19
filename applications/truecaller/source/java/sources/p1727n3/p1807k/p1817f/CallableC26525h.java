package p1727n3.p1807k.p1817f;

import android.content.Context;
import java.util.concurrent.Callable;
import p1727n3.p1807k.p1817f.C26527j;
/* renamed from: n3.k.f.h */
/* loaded from: classes-dex2jar.jar:n3/k/f/h.class */
public class CallableC26525h implements Callable<C26527j.C26528a> {

    /* renamed from: a */
    public final /* synthetic */ String f74325a;

    /* renamed from: b */
    public final /* synthetic */ Context f74326b;

    /* renamed from: c */
    public final /* synthetic */ C26522e f74327c;

    /* renamed from: d */
    public final /* synthetic */ int f74328d;

    public CallableC26525h(String str, Context context, C26522e c26522e, int i) {
        this.f74325a = str;
        this.f74326b = context;
        this.f74327c = c26522e;
        this.f74328d = i;
    }

    @Override // java.util.concurrent.Callable
    public C26527j.C26528a call() throws Exception {
        return C26527j.m1713a(this.f74325a, this.f74326b, this.f74327c, this.f74328d);
    }
}
