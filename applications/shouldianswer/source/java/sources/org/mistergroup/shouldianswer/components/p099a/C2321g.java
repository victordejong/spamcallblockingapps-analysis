package org.mistergroup.shouldianswer.components.p099a;

import androidx.lifecycle.LiveData;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.components.p099a.C2302a;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2386ad;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3131u;
/* renamed from: org.mistergroup.shouldianswer.components.a.g */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/g.class */
public final class C2321g extends LiveData<List<C2302a>> {

    /* renamed from: e */
    public static final C2321g f6563e = new C2321g();

    /* renamed from: f */
    private static final Observer f6564f = C2322a.f6565a;

    /* renamed from: org.mistergroup.shouldianswer.components.a.g$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/g$a.class */
    static final class C2322a implements Observer {

        /* renamed from: a */
        public static final C2322a f6565a = new C2322a();

        C2322a() {
        }

        @Override // java.util.Observer
        public final void update(Observable observable, Object obj) {
            C3104j.m157a(C3104j.f9124a, "ContactsLiveData phoneContactsObserver changed!", (String) null, 2, (Object) null);
            C2321g.f6563e.m1616e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.components.a.g$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/g$b.class */
    public static final class C2323b<T> implements Comparator<C2302a> {

        /* renamed from: a */
        final /* synthetic */ boolean f6566a;

        C2323b(boolean z) {
            this.f6566a = z;
        }

        /* renamed from: a */
        public final int compare(C2302a c2302a, C2302a c2302a2) {
            int i;
            if (c2302a.m1660d() < c2302a2.m1660d()) {
                i = -1;
            } else if (c2302a.m1660d() == c2302a2.m1660d()) {
                i = -1;
                if (c2302a.m1658f() != null) {
                    i = -1;
                    if (c2302a2.m1658f() != null) {
                        if (this.f6566a) {
                            i = C1747g.m3030d(c2302a.m1658f().m1347i(), c2302a2.m1658f().m1347i(), true);
                        } else {
                            String m1360b = c2302a.m1658f().m1360b();
                            if (m1360b == null) {
                                C1694h.m3124a();
                            }
                            String m1360b2 = c2302a2.m1658f().m1360b();
                            if (m1360b2 == null) {
                                C1694h.m3124a();
                            }
                            i = C1747g.m3030d(m1360b, m1360b2, true);
                        }
                    }
                }
            } else {
                i = 1;
            }
            return i;
        }
    }

    @AbstractC1634f(m3162b = "ContactsLiveData.kt", m3161c = {68}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.components.contacts.ContactsLiveData$update$1")
    /* renamed from: org.mistergroup.shouldianswer.components.a.g$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/g$c.class */
    public static final class C2324c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6567a;

        /* renamed from: b */
        Object f6568b;

        /* renamed from: c */
        long f6569c;

        /* renamed from: d */
        int f6570d;

        /* renamed from: e */
        private AbstractC1786ad f6571e;

        @AbstractC1634f(m3162b = "ContactsLiveData.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.components.contacts.ContactsLiveData$update$1$1")
        /* renamed from: org.mistergroup.shouldianswer.components.a.g$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/components/a/g$c$1.class */
        public static final class C23251 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f6572a;

            /* renamed from: b */
            final /* synthetic */ List f6573b;

            /* renamed from: c */
            private AbstractC1786ad f6574c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C23251(List list, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f6573b = list;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C23251) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C23251 c23251 = new C23251(this.f6573b, abstractC1641c);
                c23251.f6574c = (AbstractC1786ad) obj;
                return c23251;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f6572a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6574c;
                    C2321g.f6563e.mo5084a((C2321g) this.f6573b);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        C2324c(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2324c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2324c c2324c = new C2324c(abstractC1641c);
            c2324c.f6571e = (AbstractC1786ad) obj;
            return c2324c;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v58, types: [long] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            char c;
            Exception e;
            Object a = C1622b.m3174a();
            int i = this.f6570d;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f6571e;
                C3104j.m157a(C3104j.f9124a, "ContactsLiveData.readContacts.begin", (String) null, 2, (Object) null);
                c = C3131u.f9265a.m41a();
                try {
                    ArrayList arrayList = new ArrayList();
                    Iterator<C2385ac> it = C2386ad.f6885a.m1337b().iterator();
                    while (it.hasNext()) {
                        arrayList.add(new C2302a(C2302a.EnumC2303a.CONTACT, it.next()));
                    }
                    C2321g.f6563e.m1621a((List<C2302a>) arrayList);
                    this.f6567a = abstractC1786ad;
                    this.f6569c = c;
                    this.f6568b = arrayList;
                    this.f6570d = 1;
                    if (C1890e.m2686a(C3084c.m192b(), new C23251(arrayList, null), this) == a) {
                        return a;
                    }
                } catch (Exception e2) {
                    e = e2;
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    C3104j c3104j = C3104j.f9124a;
                    C3104j.m157a(c3104j, "ContactsLiveData.readContacts.end in " + C3131u.f9265a.m39b(c) + " ms", (String) null, 2, (Object) null);
                    return C1775o.f4450a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                List list = (List) this.f6568b;
                c = this.f6569c;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6567a;
                try {
                    C1771k.m2979a(obj);
                } catch (Exception e3) {
                    e = e3;
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                    C3104j c3104j2 = C3104j.f9124a;
                    C3104j.m157a(c3104j2, "ContactsLiveData.readContacts.end in " + C3131u.f9265a.m39b(c) + " ms", (String) null, 2, (Object) null);
                    return C1775o.f4450a;
                }
            }
            C3104j c3104j22 = C3104j.f9124a;
            C3104j.m157a(c3104j22, "ContactsLiveData.readContacts.end in " + C3131u.f9265a.m39b(c) + " ms", (String) null, 2, (Object) null);
            return C1775o.f4450a;
        }
    }

    private C2321g() {
    }

    /* renamed from: a */
    public final void m1621a(List<C2302a> list) {
        try {
            C1600g.m3198a(list, new C2323b(C2398ai.f6930a.m1302I()));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: b */
    protected void mo1619b() {
        C3104j.m157a(C3104j.f9124a, "ContactsLiveData.onActive", (String) null, 2, (Object) null);
        C2386ad.f6885a.addObserver(f6564f);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: c */
    protected void mo1617c() {
        C3104j.m157a(C3104j.f9124a, "ContactsLiveData.onInactive", (String) null, 2, (Object) null);
        C2386ad.f6885a.deleteObserver(f6564f);
    }

    /* renamed from: e */
    public final void m1616e() {
        C1892g.m2677a(C1843bd.f4587a, null, null, new C2324c(null), 3, null);
    }
}
