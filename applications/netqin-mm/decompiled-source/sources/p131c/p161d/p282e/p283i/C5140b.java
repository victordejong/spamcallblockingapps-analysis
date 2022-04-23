package p131c.p161d.p282e.p283i;

import android.content.Context;
import com.google.firebase.abt.AbtException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.i.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/i/b.class */
public class C5140b {

    /* renamed from: a */
    public final AbstractC5143a f17752a;

    /* renamed from: b */
    public final String f17753b;

    /* renamed from: c */
    public Integer f17754c = null;

    public C5140b(Context context, AbstractC5143a aVar, String str) {
        this.f17752a = aVar;
        this.f17753b = str;
    }

    /* renamed from: d */
    public static List<C5139a> m24422d(List<Map<String, String>> list) throws AbtException {
        ArrayList arrayList = new ArrayList();
        for (Map<String, String> map : list) {
            arrayList.add(C5139a.m24439a(map));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final ArrayList<C5139a> m24429a(List<C5139a> list, Set<String> set) {
        ArrayList<C5139a> arrayList = new ArrayList<>();
        for (C5139a aVar : list) {
            if (!set.contains(aVar.m24442a())) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<AbstractC5143a.C5146c> m24435a() {
        return this.f17752a.mo23138b(this.f17753b, "");
    }

    /* renamed from: a */
    public void m24434a(C5139a aVar) throws AbtException {
        m24423d();
        C5139a.m24441a(aVar);
        ArrayList arrayList = new ArrayList();
        Map<String, String> c = aVar.m24436c();
        c.remove("triggerEvent");
        arrayList.add(C5139a.m24439a(c));
        m24430a((List<C5139a>) arrayList);
    }

    /* renamed from: a */
    public final void m24433a(AbstractC5143a.C5146c cVar) {
        this.f17752a.mo23142a(cVar);
    }

    /* renamed from: a */
    public final void m24432a(String str) {
        this.f17752a.clearConditionalUserProperty(str, null, null);
    }

    /* renamed from: a */
    public final void m24431a(Collection<AbstractC5143a.C5146c> collection) {
        for (AbstractC5143a.C5146c cVar : collection) {
            m24432a(cVar.f17760b);
        }
    }

    /* renamed from: a */
    public final void m24430a(List<C5139a> list) {
        ArrayDeque arrayDeque = new ArrayDeque(m24435a());
        int b = m24428b();
        for (C5139a aVar : list) {
            while (arrayDeque.size() >= b) {
                m24432a(((AbstractC5143a.C5146c) arrayDeque.pollFirst()).f17760b);
            }
            AbstractC5143a.C5146c a = aVar.m24440a(this.f17753b);
            m24433a(a);
            arrayDeque.offer(a);
        }
    }

    /* renamed from: b */
    public final int m24428b() {
        if (this.f17754c == null) {
            this.f17754c = Integer.valueOf(this.f17752a.mo23136f(this.f17753b));
        }
        return this.f17754c.intValue();
    }

    /* renamed from: b */
    public final ArrayList<AbstractC5143a.C5146c> m24426b(List<AbstractC5143a.C5146c> list, Set<String> set) {
        ArrayList<AbstractC5143a.C5146c> arrayList = new ArrayList<>();
        for (AbstractC5143a.C5146c cVar : list) {
            if (!set.contains(cVar.f17760b)) {
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public void m24427b(List<Map<String, String>> list) throws AbtException {
        m24423d();
        if (list != null) {
            m24424c(m24422d(list));
            return;
        }
        throw new IllegalArgumentException("The replacementExperiments list is null.");
    }

    /* renamed from: c */
    public void m24425c() throws AbtException {
        m24423d();
        m24431a(m24435a());
    }

    /* renamed from: c */
    public final void m24424c(List<C5139a> list) throws AbtException {
        if (list.isEmpty()) {
            m24425c();
            return;
        }
        HashSet hashSet = new HashSet();
        for (C5139a aVar : list) {
            hashSet.add(aVar.m24442a());
        }
        List<AbstractC5143a.C5146c> a = m24435a();
        HashSet hashSet2 = new HashSet();
        for (AbstractC5143a.C5146c cVar : a) {
            hashSet2.add(cVar.f17760b);
        }
        m24431a((Collection<AbstractC5143a.C5146c>) m24426b(a, hashSet));
        m24430a((List<C5139a>) m24429a(list, hashSet2));
    }

    /* renamed from: d */
    public final void m24423d() throws AbtException {
        if (this.f17752a == null) {
            throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }
}
