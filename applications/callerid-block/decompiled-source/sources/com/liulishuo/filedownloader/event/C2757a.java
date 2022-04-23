package com.liulishuo.filedownloader.event;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.Executor;
import p092e.p096e.p097a.p102h0.C3054b;
import p092e.p096e.p097a.p102h0.C3062d;
/* renamed from: com.liulishuo.filedownloader.event.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/a.class */
public class C2757a {

    /* renamed from: a */
    private final Executor f11461a = C3054b.m429a(10, "EventPool");

    /* renamed from: b */
    private final HashMap<String, LinkedList<AbstractC2760c>> f11462b = new HashMap<>();

    /* renamed from: com.liulishuo.filedownloader.event.a$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/a$a.class */
    class RunnableC2758a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ AbstractC2759b f11463b;

        RunnableC2758a(AbstractC2759b bVar) {
            this.f11463b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2757a.this.m1862c(this.f11463b);
        }
    }

    /* renamed from: d */
    private void m1861d(LinkedList<AbstractC2760c> linkedList, AbstractC2759b bVar) {
        Object obj;
        Object[] array = linkedList.toArray();
        int length = array.length;
        for (int i = 0; i < length && ((obj = array[i]) == null || !((AbstractC2760c) obj).mo512d(bVar)); i++) {
        }
        Runnable runnable = bVar.f11465a;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public boolean m1864a(String str, AbstractC2760c cVar) {
        boolean add;
        if (C3062d.f12682a) {
            C3062d.m407h(this, "setListener %s", str);
        }
        if (cVar != null) {
            LinkedList<AbstractC2760c> linkedList = this.f11462b.get(str);
            LinkedList<AbstractC2760c> linkedList2 = linkedList;
            if (linkedList == null) {
                synchronized (str.intern()) {
                    LinkedList<AbstractC2760c> linkedList3 = this.f11462b.get(str);
                    linkedList2 = linkedList3;
                    if (linkedList3 == null) {
                        HashMap<String, LinkedList<AbstractC2760c>> hashMap = this.f11462b;
                        linkedList2 = new LinkedList<>();
                        hashMap.put(str, linkedList2);
                    }
                }
            }
            synchronized (str.intern()) {
                add = linkedList2.add(cVar);
            }
            return add;
        }
        throw new IllegalArgumentException("listener must not be null!");
    }

    /* renamed from: b */
    public void m1863b(AbstractC2759b bVar) {
        if (C3062d.f12682a) {
            C3062d.m407h(this, "asyncPublishInNewThread %s", bVar.m1860a());
        }
        if (bVar != null) {
            this.f11461a.execute(new RunnableC2758a(bVar));
            return;
        }
        throw new IllegalArgumentException("event must not be null!");
    }

    /* renamed from: c */
    public boolean m1862c(AbstractC2759b bVar) {
        if (C3062d.f12682a) {
            C3062d.m407h(this, "publish %s", bVar.m1860a());
        }
        if (bVar != null) {
            String a = bVar.m1860a();
            LinkedList<AbstractC2760c> linkedList = this.f11462b.get(a);
            LinkedList<AbstractC2760c> linkedList2 = linkedList;
            if (linkedList == null) {
                synchronized (a.intern()) {
                    linkedList2 = this.f11462b.get(a);
                    if (linkedList2 == null) {
                        if (C3062d.f12682a) {
                            C3062d.m414a(this, "No listener for this event %s", a);
                        }
                        return false;
                    }
                }
            }
            m1861d(linkedList2, bVar);
            return true;
        }
        throw new IllegalArgumentException("event must not be null!");
    }
}
