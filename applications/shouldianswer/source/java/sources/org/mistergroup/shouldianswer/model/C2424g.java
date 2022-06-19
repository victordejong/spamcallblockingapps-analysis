package org.mistergroup.shouldianswer.model;

import androidx.customview.p026a.AbstractC0610a;
import java.util.Date;
import java.util.List;
import java.util.ListIterator;
import java.util.Observable;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.C1630b;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1745f;
import kotlin.p087i.C1747g;
import org.json.JSONArray;
import org.mistergroup.shouldianswer.model.C2386ad;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3133w;
/* renamed from: org.mistergroup.shouldianswer.model.g */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/g.class */
public final class C2424g extends Observable {

    /* renamed from: a */
    public static final C2424g f7030a = new C2424g();

    /* renamed from: b */
    private static final AbstractC2419e f7031b = AppDatabase.f6633d.m1524a().mo1508n();

    /* renamed from: c */
    private static List<C2418d> f7032c;

    @AbstractC1634f(m3162b = "BlockExceptions.kt", m3161c = {152}, m3160d = "exportToJSON", m3159e = "org.mistergroup.shouldianswer.model.BlockExceptions")
    /* renamed from: org.mistergroup.shouldianswer.model.g$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/g$a.class */
    public static final class C2425a extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7033a;

        /* renamed from: b */
        int f7034b;

        /* renamed from: d */
        Object f7036d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2425a(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2424g.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7033a = obj;
            this.f7034b |= AbstractC0610a.INVALID_ID;
            return C2424g.this.m1052f(this);
        }
    }

    @AbstractC1634f(m3162b = "BlockExceptions.kt", m3161c = {84, 85}, m3160d = "get", m3159e = "org.mistergroup.shouldianswer.model.BlockExceptions")
    /* renamed from: org.mistergroup.shouldianswer.model.g$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/g$b.class */
    public static final class C2426b extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7037a;

        /* renamed from: b */
        int f7038b;

        /* renamed from: d */
        Object f7040d;

        /* renamed from: e */
        Object f7041e;

        /* renamed from: f */
        Object f7042f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2426b(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2424g.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7037a = obj;
            this.f7038b |= AbstractC0610a.INVALID_ID;
            return C2424g.this.m1058b((NumberInfo) null, this);
        }
    }

    @AbstractC1634f(m3162b = "BlockExceptions.kt", m3161c = {95}, m3160d = "getBlockExceptionByNumberMask", m3159e = "org.mistergroup.shouldianswer.model.BlockExceptions")
    /* renamed from: org.mistergroup.shouldianswer.model.g$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/g$c.class */
    public static final class C2427c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7043a;

        /* renamed from: b */
        int f7044b;

        /* renamed from: d */
        Object f7046d;

        /* renamed from: e */
        Object f7047e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2427c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2424g.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7043a = obj;
            this.f7044b |= AbstractC0610a.INVALID_ID;
            return C2424g.this.m1055c(null, this);
        }
    }

    @AbstractC1634f(m3162b = "BlockExceptions.kt", m3161c = {170}, m3160d = "importFromJSON", m3159e = "org.mistergroup.shouldianswer.model.BlockExceptions")
    /* renamed from: org.mistergroup.shouldianswer.model.g$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/g$d.class */
    public static final class C2428d extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7048a;

        /* renamed from: b */
        int f7049b;

        /* renamed from: d */
        Object f7051d;

        /* renamed from: e */
        Object f7052e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2428d(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2424g.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7048a = obj;
            this.f7049b |= AbstractC0610a.INVALID_ID;
            return C2424g.this.m1063a((JSONArray) null, this);
        }
    }

    private C2424g() {
    }

    /* renamed from: a */
    final /* synthetic */ Object m1066a(String str, String str2, AbstractC1641c<? super Boolean> abstractC1641c) {
        List<C2418d> mo1076a = f7031b.mo1076a(str, str2);
        return mo1076a.isEmpty() ? null : C1630b.m3166a(mo1076a.get(0).m1081e());
    }

    /* renamed from: a */
    final /* synthetic */ Object m1065a(String str, AbstractC1641c<? super Boolean> abstractC1641c) {
        List<C2418d> mo1077a = f7031b.mo1077a(str);
        return mo1077a.isEmpty() ? null : C1630b.m3166a(mo1077a.get(0).m1081e());
    }

    /* renamed from: a */
    public final Object m1064a(AbstractC1641c<? super Boolean> abstractC1641c) {
        return C1630b.m3166a(f7031b.mo1073b() != null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(2:4|(10:6|8|32|(2:10|(2:12|13)(2:14|15))(5:16|17|18|19|(2:21|22))|23|24|(2:27|25)|34|30|31))|7|8|32|(0)(0)|23|24|(1:25)|34|30|31) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0124, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0125, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r7, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cd A[Catch: Exception -> 0x0124, LOOP:0: B:25:0x00c6->B:27:0x00cd, LOOP_END, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0124, blocks: (B:13:0x005b, B:17:0x0072, B:19:0x00b3, B:23:0x00bd, B:27:0x00cd), top: B:32:0x0042 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1063a(org.json.JSONArray r7, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r8) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2424g.m1063a(org.json.JSONArray, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final Object m1062a(NumberInfo numberInfo, AbstractC1641c<? super C1775o> abstractC1641c) {
        try {
            List<C2418d> mo1076a = f7031b.mo1076a(numberInfo.m1479b(), numberInfo.m1475c());
            if (!mo1076a.isEmpty()) {
                f7031b.mo1075a(mo1076a.get(0));
            } else {
                List<C2418d> mo1077a = f7031b.mo1077a(numberInfo.m1465h());
                if (!mo1077a.isEmpty()) {
                    f7031b.mo1075a(mo1077a.get(0));
                }
            }
            C2384ab.f6871a.m1370a(new Date().getTime());
            setChanged();
            notifyObservers();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        return C1775o.f4450a;
    }

    /* renamed from: a */
    public final Object m1061a(NumberInfo numberInfo, boolean z, AbstractC1641c<? super C1775o> abstractC1641c) {
        try {
            List<C2418d> mo1076a = f7031b.mo1076a(numberInfo.m1479b(), numberInfo.m1475c());
            C2418d c2418d = mo1076a.size() > 0 ? mo1076a.get(0) : null;
            C2418d c2418d2 = c2418d;
            if (c2418d == null) {
                c2418d2 = new C2418d();
                c2418d2.m1089a(numberInfo.m1479b(), numberInfo.m1465h(), numberInfo.m1475c());
            }
            c2418d2.m1088a(z);
            c2418d2.m1085b(C1747g.m3031c(numberInfo.m1479b(), "*", false, 2, null));
            f7031b.mo1074a(c2418d2);
            f7032c = null;
            C2384ab.f6871a.m1370a(new Date().getTime());
            setChanged();
            notifyObservers();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        return C1775o.f4450a;
    }

    /* renamed from: a */
    public final Object m1060a(C2385ac c2385ac, AbstractC1641c<? super Boolean> abstractC1641c) {
        List list;
        if (c2385ac == null) {
            return C1630b.m3166a(false);
        }
        String m1246s = C2398ai.f6930a.m1246s();
        if (C3133w.f9268a.m30a(m1246s)) {
            return C1630b.m3166a(false);
        }
        List<String> m3048a = new C1745f(",").m3048a(m1246s, 0);
        if (!m3048a.isEmpty()) {
            ListIterator<String> listIterator = m3048a.listIterator(m3048a.size());
            while (listIterator.hasPrevious()) {
                if (!C1630b.m3166a(listIterator.previous().length() == 0).booleanValue()) {
                    list = C1600g.m3193b(m3048a, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        list = C1600g.m3202a();
        List list2 = list;
        if (list2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
        }
        Object[] array = list2.toArray(new String[0]);
        if (array == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        String[] strArr = (String[]) array;
        String m1360b = c2385ac.m1360b();
        for (String str : strArr) {
            if (str == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            if (C1694h.m3123a((Object) C1747g.m3029a((CharSequence) str).toString(), (Object) m1360b)) {
                return C1630b.m3166a(true);
            }
        }
        return C1630b.m3166a(false);
    }

    /* renamed from: b */
    public final Object m1059b(AbstractC1641c<? super C1775o> abstractC1641c) {
        f7031b.mo1072c();
        C2384ab.f6871a.m1370a(new Date().getTime());
        setChanged();
        notifyObservers();
        return C1775o.f4450a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00dd  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1058b(org.mistergroup.shouldianswer.model.NumberInfo r6, kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2424g.m1058b(org.mistergroup.shouldianswer.model.NumberInfo, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: b */
    public final Object m1057b(C2385ac c2385ac, AbstractC1641c<? super Boolean> abstractC1641c) {
        List list;
        if (c2385ac == null) {
            return C1630b.m3166a(false);
        }
        String m1244t = C2398ai.f6930a.m1244t();
        if (C3133w.f9268a.m30a(m1244t)) {
            return C1630b.m3166a(false);
        }
        List<String> m3048a = new C1745f(",").m3048a(m1244t, 0);
        if (!m3048a.isEmpty()) {
            ListIterator<String> listIterator = m3048a.listIterator(m3048a.size());
            while (listIterator.hasPrevious()) {
                if (!C1630b.m3166a(listIterator.previous().length() == 0).booleanValue()) {
                    list = C1600g.m3193b(m3048a, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        list = C1600g.m3202a();
        List list2 = list;
        if (list2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.util.Collection<T>");
        }
        Object[] array = list2.toArray(new String[0]);
        if (array == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        String[] strArr = (String[]) array;
        C2386ad.C2388b m1345k = c2385ac.m1345k();
        if (m1345k != null) {
            String m1328a = m1345k.m1328a();
            for (String str : strArr) {
                if (C1694h.m3123a((Object) str, (Object) m1328a)) {
                    return C1630b.m3166a(true);
                }
            }
        }
        return C1630b.m3166a(false);
    }

    /* renamed from: c */
    public final Object m1056c(AbstractC1641c<? super List<C2418d>> abstractC1641c) {
        return f7031b.mo1071d();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1055c(org.mistergroup.shouldianswer.model.NumberInfo r7, kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2424g.m1055c(org.mistergroup.shouldianswer.model.NumberInfo, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: d */
    public final Object m1054d(AbstractC1641c<? super List<C2418d>> abstractC1641c) {
        return f7031b.mo1070e();
    }

    /* renamed from: e */
    public final Object m1053e(AbstractC1641c<? super List<C2418d>> abstractC1641c) {
        return f7031b.mo1078a();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cc A[LOOP:0: B:20:0x00c3->B:22:0x00cc, LOOP_END] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1052f(kotlin.p075c.AbstractC1641c<? super org.json.JSONArray> r7) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2424g.m1052f(kotlin.c.c):java.lang.Object");
    }
}
