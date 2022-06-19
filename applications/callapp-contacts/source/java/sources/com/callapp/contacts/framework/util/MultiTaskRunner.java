package com.callapp.contacts.framework.util;

import com.callapp.contacts.manager.task.Task;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.AbstractC20205bk;
import kotlinx.coroutines.AbstractC20218bv;
import p091b.C3170a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/util/MultiTaskRunner.class */
public class MultiTaskRunner {

    /* renamed from: a */
    public String f25196a = "";

    /* renamed from: b */
    public final ArrayList<Runnable> f25197b = new ArrayList<>();

    /* renamed from: c */
    private List<AbstractC20218bv> f25198c;

    /* renamed from: d */
    private final AbstractC18335f f25199d;

    public MultiTaskRunner() {
        AbstractC20205bk abstractC20205bk;
        C3170a.C3171a c3171a = C3170a.f11528a;
        abstractC20205bk = C3170a.f11529b;
        this.f25199d = abstractC20205bk;
    }

    public MultiTaskRunner(AbstractC18335f abstractC18335f) {
        this.f25199d = abstractC18335f;
    }

    /* renamed from: a */
    public final void m28975a() {
        if (this.f25197b.isEmpty()) {
            return;
        }
        C3170a.C3171a c3171a = C3170a.f11528a;
        C3170a.C3171a.m39246b(this.f25199d, this.f25197b);
    }

    /* renamed from: a */
    public final void m28974a(Task task) {
        this.f25197b.add(task.setMetaData(this.f25196a));
    }

    /* renamed from: b */
    public final void m28973b() {
        if (this.f25197b.isEmpty()) {
            return;
        }
        Iterator<Runnable> it2 = this.f25197b.iterator();
        while (it2.hasNext()) {
            it2.next().run();
        }
    }

    /* renamed from: c */
    public final void m28972c() {
        if (this.f25197b.isEmpty()) {
            return;
        }
        C3170a.C3171a c3171a = C3170a.f11528a;
        this.f25198c = C3170a.C3171a.m39247a(this.f25199d, this.f25197b);
    }

    /* renamed from: d */
    public final void m28971d() {
        if (CollectionUtils.m26068b(this.f25198c)) {
            for (AbstractC20218bv abstractC20218bv : this.f25198c) {
                abstractC20218bv.mo970a((CancellationException) null);
            }
        }
        this.f25198c = null;
    }
}
