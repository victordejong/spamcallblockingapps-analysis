package com.liulishuo.filedownloader.event;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.Executor;
import p078c.p122d.p123a.p128i0.C2029b;
import p078c.p122d.p123a.p128i0.C2036d;
/* renamed from: com.liulishuo.filedownloader.event.a */
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/a.class */
public class C9362a {

    /* renamed from: a */
    private final Executor f40058a = C2029b.m28265a(10, "EventPool");

    /* renamed from: b */
    private final HashMap<String, LinkedList<AbstractC9365c>> f40059b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.liulishuo.filedownloader.event.a$a */
    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/a$a.class */
    public class RunnableC9363a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ AbstractC9364b f40060d;

        RunnableC9363a(AbstractC9364b abstractC9364b) {
            C9362a.this = r4;
            this.f40060d = abstractC9364b;
        }

        @Override // java.lang.Runnable
        public void run() {
            C9362a.this.m908c(this.f40060d);
        }
    }

    /* renamed from: d */
    private void m907d(LinkedList<AbstractC9365c> linkedList, AbstractC9364b abstractC9364b) {
        Object obj;
        Object[] array = linkedList.toArray();
        int length = array.length;
        for (int i = 0; i < length && ((obj = array[i]) == null || !((AbstractC9365c) obj).mo905d(abstractC9364b)); i++) {
        }
        Runnable runnable = abstractC9364b.f40062a;
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public boolean m910a(String str, AbstractC9365c abstractC9365c) {
        boolean add;
        if (C2036d.f7151a) {
            C2036d.m28246h(this, "setListener %s", str);
        }
        if (abstractC9365c != null) {
            LinkedList<AbstractC9365c> linkedList = this.f40059b.get(str);
            LinkedList<AbstractC9365c> linkedList2 = linkedList;
            if (linkedList == null) {
                synchronized (str.intern()) {
                    LinkedList<AbstractC9365c> linkedList3 = this.f40059b.get(str);
                    linkedList2 = linkedList3;
                    if (linkedList3 == null) {
                        HashMap<String, LinkedList<AbstractC9365c>> hashMap = this.f40059b;
                        linkedList2 = new LinkedList<>();
                        hashMap.put(str, linkedList2);
                    }
                }
            }
            synchronized (str.intern()) {
                add = linkedList2.add(abstractC9365c);
            }
            return add;
        }
        throw new IllegalArgumentException("listener must not be null!");
    }

    /* renamed from: b */
    public void m909b(AbstractC9364b abstractC9364b) {
        if (C2036d.f7151a) {
            C2036d.m28246h(this, "asyncPublishInNewThread %s", abstractC9364b.m906a());
        }
        if (abstractC9364b != null) {
            this.f40058a.execute(new RunnableC9363a(abstractC9364b));
            return;
        }
        throw new IllegalArgumentException("event must not be null!");
    }

    /* renamed from: c */
    public boolean m908c(AbstractC9364b abstractC9364b) {
        if (C2036d.f7151a) {
            C2036d.m28246h(this, "publish %s", abstractC9364b.m906a());
        }
        if (abstractC9364b != null) {
            String m906a = abstractC9364b.m906a();
            LinkedList<AbstractC9365c> linkedList = this.f40059b.get(m906a);
            LinkedList<AbstractC9365c> linkedList2 = linkedList;
            if (linkedList == null) {
                synchronized (m906a.intern()) {
                    linkedList2 = this.f40059b.get(m906a);
                    if (linkedList2 == null) {
                        if (C2036d.f7151a) {
                            C2036d.m28253a(this, "No listener for this event %s", m906a);
                        }
                        return false;
                    }
                }
            }
            m907d(linkedList2, abstractC9364b);
            return true;
        }
        throw new IllegalArgumentException("event must not be null!");
    }
}
