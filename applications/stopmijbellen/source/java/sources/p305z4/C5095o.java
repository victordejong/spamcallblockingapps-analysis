package p305z4;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import p253u5.AbstractC4487b;
import p253u5.AbstractC4488c;
import p253u5.AbstractC4489d;
import p253u5.C4486a;
/* renamed from: z4.o */
/* loaded from: classes-dex2jar.jar:z4/o.class */
public class C5095o implements AbstractC4489d, AbstractC4488c {

    /* renamed from: a */
    public final Map<Class<?>, ConcurrentHashMap<AbstractC4487b<Object>, Executor>> f15439a = new HashMap();

    /* renamed from: b */
    public Queue<C4486a<?>> f15440b = new ArrayDeque();

    /* renamed from: c */
    public final Executor f15441c;

    public C5095o(Executor executor) {
        this.f15441c = executor;
    }

    @Override // p253u5.AbstractC4489d
    /* renamed from: a */
    public <T> void mo41a(Class<T> cls, Executor executor, AbstractC4487b<? super T> abstractC4487b) {
        synchronized (this) {
            if (!this.f15439a.containsKey(cls)) {
                this.f15439a.put(cls, new ConcurrentHashMap<>());
            }
            this.f15439a.get(cls).put(abstractC4487b, executor);
        }
    }
}
