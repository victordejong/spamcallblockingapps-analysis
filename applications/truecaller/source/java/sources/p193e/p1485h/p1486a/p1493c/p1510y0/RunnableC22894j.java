package p193e.p1485h.p1486a.p1493c.p1510y0;

import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;
import p193e.p1485h.p1486a.p1493c.C22735g0;
/* renamed from: e.h.a.c.y0.j */
/* loaded from: classes-dex2jar.jar:e/h/a/c/y0/j.class */
public class RunnableC22894j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f63549a;

    /* renamed from: b */
    public final /* synthetic */ Callable f63550b;

    /* renamed from: c */
    public final /* synthetic */ C22895k f63551c;

    public RunnableC22894j(C22895k c22895k, String str, Callable callable) {
        this.f63551c = c22895k;
        this.f63549a = str;
        this.f63550b = callable;
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.Object, TResult] */
    @Override // java.lang.Runnable
    public void run() {
        try {
            C22735g0 m42081b = this.f63551c.f63552a.m42081b();
            String str = this.f63551c.f63558g;
            Thread.currentThread().getName();
            Objects.requireNonNull(m42081b);
            ?? call = this.f63550b.call();
            C22735g0 m42081b2 = this.f63551c.f63552a.m42081b();
            String str2 = this.f63551c.f63558g;
            Thread.currentThread().getName();
            Objects.requireNonNull(m42081b2);
            C22895k c22895k = this.f63551c;
            c22895k.f63556e = call;
            for (AbstractC22884c abstractC22884c : c22895k.f63557f) {
                abstractC22884c.mo7638a(c22895k.f63556e);
            }
        } catch (Exception e) {
            Iterator<Object<Exception>> it = this.f63551c.f63555d.iterator();
            while (it.hasNext()) {
                ((AbstractC22884c) it.next()).mo7638a(e);
            }
            C22735g0 m42081b3 = this.f63551c.f63552a.m42081b();
            String str3 = this.f63551c.f63558g;
            Thread.currentThread().getName();
            Objects.requireNonNull(m42081b3);
            e.printStackTrace();
        }
    }
}
