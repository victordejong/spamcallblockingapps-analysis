package p459j.p460a.p582w0;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import p459j.p460a.p582w0.C14037j3;
import p660rx.Subscription;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
import p660rx.subjects.PublishSubject;
/* renamed from: j.a.w0.k3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/k3.class */
public class C14054k3 implements C14037j3.AbstractC14039b {

    /* renamed from: a */
    public final Map<Object, PublishSubject<Object>> f31507a = new HashMap();

    static {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Schedulers.from(Executors.newFixedThreadPool(4));
    }

    @Override // p459j.p460a.p582w0.C14037j3.AbstractC14039b
    /* renamed from: a */
    public Subscription mo2703a(Action1 action1) {
        throw new UnsupportedOperationException("Need implementation");
    }

    @Override // p459j.p460a.p582w0.C14037j3.AbstractC14039b
    /* renamed from: a */
    public void mo2704a(Object obj) {
        synchronized (this) {
            PublishSubject<Object> publishSubject = this.f31507a.get(obj);
            if (publishSubject != null) {
                publishSubject.onNext(obj);
            }
        }
    }
}
