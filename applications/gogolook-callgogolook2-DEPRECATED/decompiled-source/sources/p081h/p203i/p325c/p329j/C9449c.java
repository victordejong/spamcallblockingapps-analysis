package p081h.p203i.p325c.p329j;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
/* renamed from: h.i.c.j.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/j/c.class */
public class C9449c {

    /* renamed from: a */
    public final AbstractC9452a f21569a;

    /* renamed from: b */
    public final String f21570b;
    @Nullable

    /* renamed from: c */
    public Integer f21571c = null;

    public C9449c(Context context, AbstractC9452a aVar, String str) {
        this.f21569a = aVar;
        this.f21570b = str;
    }

    /* renamed from: d */
    public static List<C9448b> m15129d(List<Map<String, String>> list) throws C9447a {
        ArrayList arrayList = new ArrayList();
        for (Map<String, String> map : list) {
            arrayList.add(C9448b.m15144a(map));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final ArrayList<C9448b> m15136a(List<C9448b> list, Set<String> set) {
        ArrayList<C9448b> arrayList = new ArrayList<>();
        for (C9448b bVar : list) {
            if (!set.contains(bVar.m15146a())) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    @WorkerThread
    /* renamed from: a */
    public final List<AbstractC9452a.C9455c> m15141a() {
        return this.f21569a.mo15120a(this.f21570b, "");
    }

    /* renamed from: a */
    public final void m15140a(AbstractC9452a.C9455c cVar) {
        this.f21569a.mo15124a(cVar);
    }

    /* renamed from: a */
    public final void m15139a(String str) {
        this.f21569a.mo15119a(str, (String) null, (Bundle) null);
    }

    /* renamed from: a */
    public final void m15138a(Collection<AbstractC9452a.C9455c> collection) {
        for (AbstractC9452a.C9455c cVar : collection) {
            m15139a(cVar.f21577b);
        }
    }

    /* renamed from: a */
    public final void m15137a(List<C9448b> list) {
        ArrayDeque arrayDeque = new ArrayDeque(m15141a());
        int b = m15135b();
        for (C9448b bVar : list) {
            while (arrayDeque.size() >= b) {
                m15139a(((AbstractC9452a.C9455c) arrayDeque.pollFirst()).f21577b);
            }
            AbstractC9452a.C9455c a = bVar.m15145a(this.f21570b);
            m15140a(a);
            arrayDeque.offer(a);
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final int m15135b() {
        if (this.f21571c == null) {
            this.f21571c = Integer.valueOf(this.f21569a.mo15116b(this.f21570b));
        }
        return this.f21571c.intValue();
    }

    /* renamed from: b */
    public final ArrayList<AbstractC9452a.C9455c> m15133b(List<AbstractC9452a.C9455c> list, Set<String> set) {
        ArrayList<AbstractC9452a.C9455c> arrayList = new ArrayList<>();
        for (AbstractC9452a.C9455c cVar : list) {
            if (!set.contains(cVar.f21577b)) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    @WorkerThread
    /* renamed from: b */
    public void m15134b(List<Map<String, String>> list) throws C9447a {
        m15130d();
        if (list != null) {
            m15131c(m15129d(list));
            return;
        }
        throw new IllegalArgumentException("The replacementExperiments list is null.");
    }

    @WorkerThread
    /* renamed from: c */
    public void m15132c() throws C9447a {
        m15130d();
        m15138a(m15141a());
    }

    /* renamed from: c */
    public final void m15131c(List<C9448b> list) throws C9447a {
        if (list.isEmpty()) {
            m15132c();
            return;
        }
        HashSet hashSet = new HashSet();
        for (C9448b bVar : list) {
            hashSet.add(bVar.m15146a());
        }
        List<AbstractC9452a.C9455c> a = m15141a();
        HashSet hashSet2 = new HashSet();
        for (AbstractC9452a.C9455c cVar : a) {
            hashSet2.add(cVar.f21577b);
        }
        m15138a((Collection<AbstractC9452a.C9455c>) m15133b(a, hashSet));
        m15137a((List<C9448b>) m15136a(list, hashSet2));
    }

    /* renamed from: d */
    public final void m15130d() throws C9447a {
        if (this.f21569a == null) {
            throw new C9447a("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }
}
