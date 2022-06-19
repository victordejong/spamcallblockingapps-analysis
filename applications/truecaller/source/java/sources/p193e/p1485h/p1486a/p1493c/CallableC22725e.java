package p193e.p1485h.p1486a.p1493c;

import java.util.ArrayList;
import java.util.concurrent.Callable;
/* renamed from: e.h.a.c.e */
/* loaded from: classes-dex2jar.jar:e/h/a/c/e.class */
public class CallableC22725e implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f62908a;

    /* renamed from: b */
    public final /* synthetic */ ArrayList f62909b;

    /* renamed from: c */
    public final /* synthetic */ C22727f f62910c;

    public CallableC22725e(C22727f c22727f, String str, ArrayList arrayList) {
        this.f62910c = c22727f;
        this.f62908a = str;
        this.f62909b = arrayList;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C22727f.m7885f(this.f62910c, this.f62909b, this.f62908a, this.f62910c.f62923j.m7870f(this.f62908a) != null ? "$add" : "$set");
        return null;
    }
}
