package p193e.p1485h.p1486a.p1493c;

import java.util.ArrayList;
import java.util.concurrent.Callable;
/* renamed from: e.h.a.c.g */
/* loaded from: classes-dex2jar.jar:e/h/a/c/g.class */
public class CallableC22734g implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f62947a;

    /* renamed from: b */
    public final /* synthetic */ String f62948b;

    /* renamed from: c */
    public final /* synthetic */ C22727f f62949c;

    public CallableC22734g(C22727f c22727f, ArrayList arrayList, String str) {
        this.f62949c = c22727f;
        this.f62947a = arrayList;
        this.f62948b = str;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C22727f.m7885f(this.f62949c, this.f62947a, this.f62948b, "$remove");
        return null;
    }
}
