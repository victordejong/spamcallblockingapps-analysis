package p193e.p1485h.p1486a.p1493c;

import java.util.ArrayList;
import java.util.concurrent.Callable;
/* renamed from: e.h.a.c.i */
/* loaded from: classes-dex2jar.jar:e/h/a/c/i.class */
public class CallableC22738i implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ ArrayList f62969a;

    /* renamed from: b */
    public final /* synthetic */ String f62970b;

    /* renamed from: c */
    public final /* synthetic */ C22727f f62971c;

    public CallableC22738i(C22727f c22727f, ArrayList arrayList, String str) {
        this.f62971c = c22727f;
        this.f62969a = arrayList;
        this.f62970b = str;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        C22727f.m7885f(this.f62971c, this.f62969a, this.f62970b, "$set");
        return null;
    }
}
