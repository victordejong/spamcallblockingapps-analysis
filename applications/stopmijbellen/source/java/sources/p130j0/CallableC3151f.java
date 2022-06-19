package p130j0;

import android.content.Context;
import java.util.concurrent.Callable;
import p130j0.C3155j;
/* renamed from: j0.f */
/* loaded from: classes-dex2jar.jar:j0/f.class */
public class CallableC3151f implements Callable<C3155j.C3156a> {

    /* renamed from: a */
    public final /* synthetic */ String f10603a;

    /* renamed from: b */
    public final /* synthetic */ Context f10604b;

    /* renamed from: c */
    public final /* synthetic */ C3150e f10605c;

    /* renamed from: d */
    public final /* synthetic */ int f10606d;

    public CallableC3151f(String str, Context context, C3150e c3150e, int i) {
        this.f10603a = str;
        this.f10604b = context;
        this.f10605c = c3150e;
        this.f10606d = i;
    }

    @Override // java.util.concurrent.Callable
    public C3155j.C3156a call() throws Exception {
        return C3155j.m2585a(this.f10603a, this.f10604b, this.f10605c, this.f10606d);
    }
}
