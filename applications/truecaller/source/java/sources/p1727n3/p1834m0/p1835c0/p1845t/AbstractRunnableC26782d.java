package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.impl.WorkDatabase;
import java.util.LinkedList;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.AbstractC26844s;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.AbstractC26686e;
import p1727n3.p1834m0.p1835c0.C26683c;
import p1727n3.p1834m0.p1835c0.C26684d;
import p1727n3.p1834m0.p1835c0.C26687f;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.RunnableC26706o;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26743b;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26764q;
import p1727n3.p1834m0.p1835c0.p1844s.C26744c;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.t.d */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/d.class */
public abstract class AbstractRunnableC26782d implements Runnable {

    /* renamed from: a */
    public final C26683c f74952a = new C26683c();

    /* renamed from: a */
    public void m1337a(C26702l c26702l, String str) {
        boolean z;
        WorkDatabase workDatabase = c26702l.f74725c;
        AbstractC26764q m42606f = workDatabase.m42606f();
        AbstractC26743b m42611a = workDatabase.m42611a();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (true) {
            z = false;
            if (linkedList.isEmpty()) {
                break;
            }
            String str2 = (String) linkedList.remove();
            C26767t c26767t = (C26767t) m42606f;
            C26855x.EnumC26856a m1349h = c26767t.m1349h(str2);
            if (m1349h != C26855x.EnumC26856a.SUCCEEDED && m1349h != C26855x.EnumC26856a.FAILED) {
                c26767t.m1339r(C26855x.EnumC26856a.CANCELLED, str2);
            }
            linkedList.addAll(((C26744c) m42611a).m1370a(str2));
        }
        C26684d c26684d = c26702l.f74728f;
        synchronized (c26684d.f74693k) {
            AbstractC26839p.m1296c().mo1294a(C26684d.f74682l, String.format("Processor cancelling %s", str), new Throwable[0]);
            c26684d.f74691i.add(str);
            RunnableC26706o remove = c26684d.f74688f.remove(str);
            if (remove != null) {
                z = true;
            }
            RunnableC26706o runnableC26706o = remove;
            if (remove == null) {
                runnableC26706o = c26684d.f74689g.remove(str);
            }
            C26684d.m1446c(str, runnableC26706o);
            if (z) {
                c26684d.m1441h();
            }
        }
        for (AbstractC26686e abstractC26686e : c26702l.f74727e) {
            abstractC26686e.mo1400d(str);
        }
    }

    /* renamed from: b */
    public void m1336b(C26702l c26702l) {
        C26687f.m1438a(c26702l.f74724b, c26702l.f74725c, c26702l.f74727e);
    }

    /* renamed from: c */
    public abstract void mo1335c();

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo1335c();
            this.f74952a.m1448a(AbstractC26844s.f75103a);
        } catch (Throwable th) {
            this.f74952a.m1448a(new AbstractC26844s.AbstractC26846b.C26847a(th));
        }
    }
}
