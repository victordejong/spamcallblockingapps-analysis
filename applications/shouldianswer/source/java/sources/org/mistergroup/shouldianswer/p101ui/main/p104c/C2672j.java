package org.mistergroup.shouldianswer.p101ui.main.p104c;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.provider.CallLog;
import androidx.customview.p026a.AbstractC0610a;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.NoWhenBranchMatchedException;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p082a.AbstractC1678q;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2432j;
import org.mistergroup.shouldianswer.model.C2464x;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3131u;
/* renamed from: org.mistergroup.shouldianswer.ui.main.c.j */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j.class */
public final class C2672j {

    /* renamed from: a */
    public C2665h f7862a;

    /* renamed from: d */
    private int f7865d;

    /* renamed from: e */
    private boolean f7866e;

    /* renamed from: f */
    private boolean f7867f;

    /* renamed from: g */
    private boolean f7868g;

    /* renamed from: h */
    private final String f7869h;

    /* renamed from: i */
    private final C2432j f7870i;

    /* renamed from: k */
    private boolean f7872k;

    /* renamed from: l */
    private C2432j.C2434b f7873l;

    /* renamed from: m */
    private final EnumC2674a f7874m;

    /* renamed from: b */
    private boolean f7863b = true;

    /* renamed from: c */
    private final LinkedList<C2676b> f7864c = new LinkedList<>();

    /* renamed from: j */
    private ContentObserver f7871j = new ContentObserver(null) { // from class: org.mistergroup.shouldianswer.ui.main.c.j.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            C1694h.m3117b(uri, "uri");
            super.onChange(z, uri);
            C3104j.f9124a.m155b("LogsDataSourceCallLog.CallLogObserver.onChange", C2672j.this.f7869h);
            C2672j.this.m596a(true);
        }
    };

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$a.class */
    public enum EnumC2674a {
        NONE(0),
        ALL(1),
        FAMILIAR(2),
        UNFAMILIAR(3),
        BLOCKED(4);
        

        /* renamed from: f */
        public static final C2675a f7881f = new C2675a(null);

        /* renamed from: h */
        private final int f7883h;

        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$a$a.class */
        public static final class C2675a {
            private C2675a() {
            }

            public /* synthetic */ C2675a(C1691e c1691e) {
                this();
            }

            /* renamed from: a */
            public final String m584a(Context context, EnumC2674a enumC2674a) {
                String str;
                C1694h.m3117b(context, "context");
                C1694h.m3117b(enumC2674a, "filterType");
                int i = C2688k.f7969a[enumC2674a.ordinal()];
                if (i == 1) {
                    str = context.getString(2131755366);
                    C1694h.m3122a((Object) str, "context.getString(R.string.logs_filter_all)");
                } else if (i == 2) {
                    str = context.getString(2131755371);
                    C1694h.m3122a((Object) str, "context.getString(R.string.logs_filter_unfamiliar)");
                } else if (i == 3) {
                    str = context.getString(2131755370);
                    C1694h.m3122a((Object) str, "context.getString(R.string.logs_filter_familiar)");
                } else if (i == 4) {
                    str = context.getString(2131755368);
                    C1694h.m3122a((Object) str, "context.getString(R.string.logs_filter_blocked)");
                } else if (i != 5) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    str = "";
                }
                return str;
            }
        }

        EnumC2674a(int i) {
            this.f7883h = i;
        }

        /* renamed from: a */
        public final int m585a() {
            return this.f7883h;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$b.class */
    public static final class C2676b {

        /* renamed from: a */
        public C2645b f7884a;

        /* renamed from: b */
        private String f7885b;

        /* renamed from: c */
        private List<C2646c> f7886c = new ArrayList();

        /* renamed from: d */
        private long f7887d;

        /* renamed from: e */
        private final EnumC2674a f7888e;

        public C2676b(long j, EnumC2674a enumC2674a) {
            C1694h.m3117b(enumC2674a, "filterType");
            this.f7887d = j;
            this.f7888e = enumC2674a;
            String format = C2665h.f7823b.m605a().format(Long.valueOf(this.f7887d));
            C1694h.m3122a((Object) format, "LogsAdapter.compareDateFormat.format(date)");
            this.f7885b = format;
            String format2 = MyApp.f5480c.m1802a().m1807a().format(Long.valueOf(this.f7887d));
            String str = format2;
            if (this.f7888e != EnumC2674a.ALL) {
                str = format2;
                if (this.f7888e != EnumC2674a.NONE) {
                    str = format2 + " (" + EnumC2674a.f7881f.m584a(MyApp.f5480c.m1802a(), this.f7888e) + ")";
                }
            }
            C1694h.m3122a((Object) str, "caption");
            this.f7884a = new C2645b(str);
        }

        /* renamed from: a */
        public final String m583a() {
            return this.f7885b;
        }

        /* renamed from: b */
        public final C2645b m582b() {
            C2645b c2645b = this.f7884a;
            if (c2645b == null) {
                C1694h.m3116b("headerItem");
            }
            return c2645b;
        }

        /* renamed from: c */
        public final List<C2646c> m581c() {
            return this.f7886c;
        }

        /* renamed from: d */
        public final long m580d() {
            return this.f7887d;
        }
    }

    @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {429}, m3160d = "deleteCallLogs", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$c.class */
    public static final class C2677c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7889a;

        /* renamed from: b */
        int f7890b;

        /* renamed from: d */
        Object f7892d;

        /* renamed from: e */
        Object f7893e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2677c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2672j.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7889a = obj;
            this.f7890b |= AbstractC0610a.INVALID_ID;
            return C2672j.this.m594b(null, this);
        }
    }

    @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {331}, m3160d = "getNext", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$d.class */
    public static final class C2678d extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7894a;

        /* renamed from: b */
        int f7895b;

        /* renamed from: d */
        Object f7897d;

        /* renamed from: e */
        Object f7898e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2678d(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2672j.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7894a = obj;
            this.f7895b |= AbstractC0610a.INVALID_ID;
            return C2672j.this.m601a(this);
        }
    }

    @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {344, 355, 393}, m3160d = "readMore", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$e.class */
    public static final class C2679e extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7899a;

        /* renamed from: b */
        int f7900b;

        /* renamed from: d */
        Object f7902d;

        /* renamed from: e */
        Object f7903e;

        /* renamed from: f */
        Object f7904f;

        /* renamed from: g */
        Object f7905g;

        /* renamed from: h */
        Object f7906h;

        /* renamed from: i */
        Object f7907i;

        /* renamed from: j */
        Object f7908j;

        /* renamed from: k */
        Object f7909k;

        /* renamed from: l */
        Object f7910l;

        /* renamed from: m */
        int f7911m;

        /* renamed from: n */
        int f7912n;

        /* renamed from: o */
        long f7913o;

        /* renamed from: p */
        long f7914p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2679e(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2672j.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7899a = obj;
            this.f7900b |= AbstractC0610a.INVALID_ID;
            return C2672j.this.m603a(0, this);
        }
    }

    @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$readMore$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$f.class */
    public static final class C2680f extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f7915a;

        /* renamed from: c */
        final /* synthetic */ long f7917c;

        /* renamed from: d */
        final /* synthetic */ ArrayList f7918d;

        /* renamed from: e */
        final /* synthetic */ C1699m.C1702c f7919e;

        /* renamed from: f */
        final /* synthetic */ C1699m.C1702c f7920f;

        /* renamed from: g */
        private AbstractC1786ad f7921g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2680f(long j, ArrayList arrayList, C1699m.C1702c c1702c, C1699m.C1702c c1702c2, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2672j.this = r5;
            this.f7917c = j;
            this.f7918d = arrayList;
            this.f7919e = c1702c;
            this.f7920f = c1702c2;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2680f) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2680f c2680f = new C2680f(this.f7917c, this.f7918d, this.f7919e, this.f7920f, abstractC1641c);
            c2680f.f7921g = (AbstractC1786ad) obj;
            return c2680f;
        }

        /* JADX WARN: Type inference failed for: r1v20, types: [T, java.lang.Integer] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f7915a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f7921g;
                C3104j c3104j = C3104j.f9124a;
                c3104j.m155b("LogsDataSourceCallLog.readMore uiContext switch in  " + C3131u.f9265a.m40a(this.f7917c) + " ms", C2672j.this.f7869h);
                long m41a = C3131u.f9265a.m41a();
                for (C2676b c2676b : this.f7918d) {
                    Integer num = (Integer) this.f7919e.f4391a;
                    if (num != null) {
                        C2676b c2676b2 = C2672j.this.m592c().get(num.intValue());
                        C1694h.m3122a((Object) c2676b2, "sections[replaceSectionIdLocal]");
                        C2676b c2676b3 = c2676b2;
                        Integer num2 = (Integer) this.f7920f.f4391a;
                        if (num2 != null) {
                            int intValue = num2.intValue();
                            C3104j.f9124a.m155b("LogsDataSourceCallLog.readMore changing item", C2672j.this.f7869h);
                            c2676b3.m581c().set(intValue, c2676b.m581c().get(intValue));
                            C2672j.this.m604a().m1561c(num.intValue(), intValue);
                        }
                        int size = c2676b.m581c().size();
                        for (int intValue2 = ((Integer) this.f7920f.f4391a) != null ? ((Integer) this.f7920f.f4391a).intValue() + 1 : 0; intValue2 < size; intValue2++) {
                            C3104j c3104j2 = C3104j.f9124a;
                            c3104j2.m155b("LogsDataSourceCallLog.readMore adding item to section " + c2676b.m583a(), C2672j.this.f7869h);
                            c2676b3.m581c().add(c2676b.m581c().get(intValue2));
                            C2672j.this.m604a().m1559d(num.intValue(), intValue2);
                        }
                        this.f7919e.f4391a = (Integer) 0;
                    } else {
                        C3104j c3104j3 = C3104j.f9124a;
                        c3104j3.m155b("LogsDataSourceCallLog.readMore inserting new section " + c2676b.m583a(), C2672j.this.f7869h);
                        if (c2676b.m581c().size() > 0) {
                            C2672j.this.m592c().add(c2676b);
                            C2672j.this.m604a().m1549i(C1600g.m3201a((List) C2672j.this.m592c()));
                        }
                    }
                }
                C3104j c3104j4 = C3104j.f9124a;
                c3104j4.m155b("LogsDataSourceCallLog.readMore new data inserted in " + C3131u.f9265a.m40a(m41a) + " ms", C2672j.this.f7869h);
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {195}, m3160d = "update", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$g.class */
    public static final class C2681g extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7922a;

        /* renamed from: b */
        int f7923b;

        /* renamed from: d */
        Object f7925d;

        /* renamed from: e */
        Object f7926e;

        /* renamed from: f */
        Object f7927f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2681g(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2672j.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7922a = obj;
            this.f7923b |= AbstractC0610a.INVALID_ID;
            return C2672j.this.m602a((ArrayList<C2432j.C2434b>) null, this);
        }
    }

    @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {208, 232, 292, 314}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$h.class */
    public static final class C2682h extends AbstractC1640k implements AbstractC1678q<C2432j.EnumC2433a, ArrayList<C2432j.C2434b>, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7928a;

        /* renamed from: b */
        Object f7929b;

        /* renamed from: c */
        Object f7930c;

        /* renamed from: d */
        Object f7931d;

        /* renamed from: e */
        Object f7932e;

        /* renamed from: f */
        Object f7933f;

        /* renamed from: g */
        int f7934g;

        /* renamed from: h */
        int f7935h;

        /* renamed from: i */
        int f7936i;

        /* renamed from: j */
        int f7937j;

        /* renamed from: k */
        int f7938k;

        /* renamed from: l */
        int f7939l;

        /* renamed from: n */
        final /* synthetic */ C1699m.C1700a f7941n;

        /* renamed from: o */
        private C2432j.EnumC2433a f7942o;

        /* renamed from: p */
        private ArrayList f7943p;

        @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$h$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$h$1.class */
        public static final class C26831 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7944a;

            /* renamed from: c */
            final /* synthetic */ LinkedList f7946c;

            /* renamed from: d */
            private AbstractC1786ad f7947d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26831(LinkedList linkedList, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2682h.this = r5;
                this.f7946c = linkedList;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26831) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26831 c26831 = new C26831(this.f7946c, abstractC1641c);
                c26831.f7947d = (AbstractC1786ad) obj;
                return c26831;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7944a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7947d;
                    C2676b c2676b = (C2676b) C1600g.m3189d((List<? extends Object>) C2672j.this.m592c());
                    C3104j.f9124a.m155b("LogsDataSourceCallLog.update newSections.count=" + String.valueOf(this.f7946c.size()), C2672j.this.f7869h);
                    for (int a = C1600g.m3201a((List) this.f7946c); a >= 0; a--) {
                        Object obj2 = this.f7946c.get(a);
                        C1694h.m3122a(obj2, "newSections[i]");
                        C2676b c2676b2 = (C2676b) obj2;
                        C3104j.f9124a.m155b("LogsDataSourceCallLog.update newSection.items.count=" + String.valueOf(c2676b2.m581c().size()), C2672j.this.f7869h);
                        if (c2676b == null || !c2676b.m583a().equals(c2676b2.m583a())) {
                            C2672j.this.m592c().addFirst(c2676b2);
                            C3104j.f9124a.m155b("LogsDataSourceCallLog.update notifySectionInserted", C2672j.this.f7869h);
                            C2672j.this.m604a().m1549i(0);
                        } else {
                            C3104j.f9124a.m155b("LogsDataSourceCallLog.update newSection is same as adapterFirstSection", C2672j.this.f7869h);
                            C2646c c2646c = (C2646c) C1600g.m3189d((List<? extends Object>) c2676b.m581c());
                            C2646c c2646c2 = (C2646c) C1600g.m3188e(c2676b2.m581c());
                            if (c2646c != null && c2646c2 != null) {
                                C3104j.f9124a.m155b("LogsDataSourceCallLog.update adapterFirstSectionFirstItem and newSectionLastItem exists!", C2672j.this.f7869h);
                                C2432j.C2434b c2434b = (C2432j.C2434b) C1600g.m3189d((List<? extends Object>) c2646c2.m664b());
                                String m1039b = c2434b != null ? c2434b.m1039b() : null;
                                C2432j.C2434b c2434b2 = (C2432j.C2434b) C1600g.m3189d((List<? extends Object>) c2646c.m664b());
                                if (C1747g.m3035a(m1039b, c2434b2 != null ? c2434b2.m1039b() : null, false, 2, (Object) null)) {
                                    C3104j.f9124a.m155b("LogsDataSourceCallLog.update adapterFirstSectionFirstItem merge callLogs " + C2464x.m969a(c2646c2.m660f()), C2672j.this.f7869h);
                                    c2646c.m664b().addAll(0, c2646c2.m664b());
                                    c2646c.m662d();
                                    C2672j.this.m604a().m1561c(0, 0);
                                    c2676b2.m581c().remove(C1600g.m3201a((List) c2676b2.m581c()));
                                }
                            }
                            C3104j.f9124a.m155b("LogsDataSourceCallLog.update remaining items.count=" + String.valueOf(c2676b2.m581c().size()), C2672j.this.f7869h);
                            if (c2676b2.m581c().size() > 0) {
                                for (int a2 = C1600g.m3201a((List) c2676b2.m581c()); a2 >= 0; a2 += -1) {
                                    C2646c c2646c3 = c2676b2.m581c().get(a2);
                                    C3104j.f9124a.m155b("LogsDataSourceCallLog.update adapterFirstSection.items.add " + C2464x.m969a(c2646c3.m660f()), C2672j.this.f7869h);
                                    c2676b.m581c().add(0, c2646c3);
                                    C2672j.this.m604a().m1559d(0, 0);
                                }
                            }
                            C3104j.f9124a.m155b("LogsDataSourceCallLog.update after newSection inserted", C2672j.this.f7869h);
                        }
                        c2676b = null;
                    }
                    C2672j.this.m604a().m613h();
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2$3")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$h$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$h$2.class */
        public static final class C26842 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7948a;

            /* renamed from: c */
            final /* synthetic */ int f7950c;

            /* renamed from: d */
            private AbstractC1786ad f7951d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26842(int i, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2682h.this = r5;
                this.f7950c = i;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26842) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26842 c26842 = new C26842(this.f7950c, abstractC1641c);
                c26842.f7951d = (AbstractC1786ad) obj;
                return c26842;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7948a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7951d;
                    C2672j.this.m592c().remove(this.f7950c);
                    C3104j c3104j = C3104j.f9124a;
                    c3104j.m155b("LogsDataSourceCallLog.update notifySectionRemoved " + this.f7950c, C2672j.this.f7869h);
                    C2672j.this.m604a().m1548j(this.f7950c);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$update$2$2$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$h$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$h$a.class */
        public static final class C2685a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7952a;

            /* renamed from: b */
            final /* synthetic */ C2672j f7953b;

            /* renamed from: c */
            final /* synthetic */ C2646c f7954c;

            /* renamed from: d */
            final /* synthetic */ int f7955d;

            /* renamed from: e */
            final /* synthetic */ C2676b f7956e;

            /* renamed from: f */
            final /* synthetic */ int f7957f;

            /* renamed from: g */
            final /* synthetic */ int f7958g;

            /* renamed from: h */
            private AbstractC1786ad f7959h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2685a(C2672j c2672j, C2646c c2646c, int i, C2676b c2676b, int i2, int i3, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f7953b = c2672j;
                this.f7954c = c2646c;
                this.f7955d = i;
                this.f7956e = c2676b;
                this.f7957f = i2;
                this.f7958g = i3;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2685a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2685a c2685a = new C2685a(this.f7953b, this.f7954c, this.f7955d, this.f7956e, this.f7957f, this.f7958g, abstractC1641c);
                c2685a.f7959h = (AbstractC1786ad) obj;
                return c2685a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7952a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7959h;
                    this.f7954c.m664b().remove(this.f7955d);
                    if (this.f7954c.m664b().size() == 0) {
                        this.f7956e.m581c().remove(this.f7957f);
                        C3104j.f9124a.m155b("LogsDataSourceCallLog.update notifySectionItemRemoved", this.f7953b.f7869h);
                        this.f7953b.m604a().m1556e(this.f7958g, this.f7957f);
                    } else {
                        C3104j.f9124a.m155b("LogsDataSourceCallLog.update notifySectionItemChanged", this.f7953b.f7869h);
                        this.f7953b.m604a().m1561c(this.f7958g, this.f7957f);
                    }
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2682h(C1699m.C1700a c1700a, AbstractC1641c abstractC1641c) {
            super(3, abstractC1641c);
            C2672j.this = r5;
            this.f7941n = c1700a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1678q
        /* renamed from: a */
        public final Object mo579a(C2432j.EnumC2433a enumC2433a, ArrayList<C2432j.C2434b> arrayList, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2682h) m578a(enumC2433a, arrayList, abstractC1641c)).mo42b(C1775o.f4450a);
        }

        /* renamed from: a */
        public final AbstractC1641c<C1775o> m578a(C2432j.EnumC2433a enumC2433a, ArrayList<C2432j.C2434b> arrayList, AbstractC1641c<? super C1775o> abstractC1641c) {
            C1694h.m3117b(enumC2433a, "action");
            C1694h.m3117b(arrayList, "items");
            C1694h.m3117b(abstractC1641c, "continuation");
            C2682h c2682h = new C2682h(this.f7941n, abstractC1641c);
            c2682h.f7942o = enumC2433a;
            c2682h.f7943p = arrayList;
            return c2682h;
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x0248, code lost:
            r0 = org.mistergroup.shouldianswer.utils.C3084c.m192b();
            r0 = new org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.C2682h.C2685a(r0, r0, r29, r0, r27, r25, null);
            r15.f7928a = r12;
            r15.f7929b = r20;
            r15.f7934g = r14;
            r15.f7935h = r16;
            r15.f7930c = r0;
            r15.f7931d = r0;
            r15.f7936i = r25;
            r15.f7932e = r0;
            r15.f7937j = r27;
            r15.f7933f = r0;
            r15.f7938k = r29;
            r15.f7939l = 3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x02c3, code lost:
            if (kotlinx.coroutines.C1890e.m2686a(r0, r0, r15) != r11) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x02c7, code lost:
            return r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x02c8, code lost:
            r13 = r11;
            r11 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x05f5, code lost:
            if (r11.m583a().equals(r0) == false) goto L89;
         */
        /* JADX WARN: Removed duplicated region for block: B:100:0x0695  */
        /* JADX WARN: Removed duplicated region for block: B:102:0x06a3  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0199  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0310  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0331  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x03cc  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0402  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0529  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x05d2  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x01da -> B:45:0x02f6). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x02c8 -> B:41:0x02cd). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x03b3 -> B:56:0x03bf). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x03b8 -> B:56:0x03bf). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x04f3 -> B:72:0x04f8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x053a -> B:83:0x05cd). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0591 -> B:75:0x052f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x05c7 -> B:75:0x052f). Please submit an issue!!! */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 1811
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.C2682h.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {174, 181, 182}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$updateAsync$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$i.class */
    public static final class C2686i extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7960a;

        /* renamed from: b */
        int f7961b;

        /* renamed from: d */
        final /* synthetic */ boolean f7963d;

        /* renamed from: e */
        final /* synthetic */ int f7964e;

        /* renamed from: f */
        private AbstractC1786ad f7965f;

        @AbstractC1634f(m3162b = "LogsDataSource.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.main.logs.LogsDataSource$updateAsync$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.main.c.j$i$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/main/c/j$i$1.class */
        public static final class C26871 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7966a;

            /* renamed from: c */
            private AbstractC1786ad f7968c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C26871(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2686i.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C26871) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C26871 c26871 = new C26871(abstractC1641c);
                c26871.f7968c = (AbstractC1786ad) obj;
                return c26871;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7966a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7968c;
                    C3104j.f9124a.m155b("LogsDataSourceCallLog.updateAsync notifyObservers", C2672j.this.f7869h);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2686i(boolean z, int i, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2672j.this = r5;
            this.f7963d = z;
            this.f7964e = i;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2686i) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2686i c2686i = new C2686i(this.f7963d, this.f7964e, abstractC1641c);
            c2686i.f7965f = (AbstractC1786ad) obj;
            return c2686i;
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00e6 A[Catch: Exception -> 0x011a, TRY_LEAVE, TryCatch #0 {Exception -> 0x011a, blocks: (B:11:0x0025, B:15:0x003f, B:27:0x00b3, B:32:0x00dc, B:34:0x00e6), top: B:43:0x000a }] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 297
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.C2686i.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    public C2672j(EnumC2674a enumC2674a) {
        C1694h.m3117b(enumC2674a, "filterType");
        this.f7874m = enumC2674a;
        this.f7869h = "calllog-" + this.f7874m;
        this.f7870i = new C2432j(this.f7874m.toString());
    }

    /* renamed from: a */
    static /* synthetic */ Object m598a(C2672j c2672j, ArrayList arrayList, AbstractC1641c abstractC1641c, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = null;
        }
        return c2672j.m602a(arrayList, abstractC1641c);
    }

    /* renamed from: a */
    public final void m596a(boolean z) {
        this.f7865d++;
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2686i(z, this.f7865d, null), 2, null);
    }

    /* renamed from: g */
    private final boolean m588g() {
        boolean z;
        Exception e;
        if (this.f7866e) {
            return true;
        }
        C3104j.f9124a.m155b("LogsDataSourceCallLog.registerObserver", this.f7869h);
        try {
            z = false;
            if (C3115o.f9175a.m117f()) {
                MyApp.f5480c.m1801b().registerContentObserver(CallLog.Calls.CONTENT_URI, true, this.f7871j);
                this.f7866e = true;
                this.f7868g = false;
                z = true;
            } else {
                this.f7868g = true;
                if (!this.f7867f) {
                    C3104j.f9124a.m162a(new Exception("LogsDataSourceCallLog.registerObservers - permission NOT granted!"), this.f7869h);
                    this.f7867f = true;
                } else {
                    C3104j.f9124a.m151d("LogsDataSourceCallLog.registerObservers - permission NOT granted!", this.f7869h);
                }
            }
        } catch (Exception e2) {
            e = e2;
            z = true;
        }
        try {
            MyApp.f5480c.m1801b().registerContentObserver(CallLog.Calls.CONTENT_URI, true, this.f7871j);
        } catch (Exception e3) {
            e = e3;
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return z;
        }
        return z;
    }

    /* renamed from: h */
    private final void m587h() {
        if (!this.f7866e) {
            return;
        }
        MyApp.f5480c.m1801b().unregisterContentObserver(this.f7871j);
        this.f7866e = false;
    }

    /* renamed from: i */
    private final void m586i() {
        long m41a = C3131u.f9265a.m41a();
        C2707o.f8020a.m569a();
        int size = this.f7864c.size();
        for (int i = 0; i < size; i++) {
            C2676b c2676b = this.f7864c.get(i);
            C1694h.m3122a((Object) c2676b, "sections[sectionIndex]");
            C2676b c2676b2 = c2676b;
            int size2 = c2676b2.m581c().size();
            for (int i2 = 0; i2 < size2; i2++) {
                c2676b2.m581c().get(i2).m662d();
                C2665h c2665h = this.f7862a;
                if (c2665h == null) {
                    C1694h.m3116b("adapter");
                }
                c2665h.m1561c(i, i2);
            }
        }
        C3104j.f9124a.m155b("LogsDataSourceCallLog.invalidate in " + C3131u.f9265a.m40a(m41a) + " ms", this.f7869h);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0379, code lost:
        if (r0.m1451o() != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0384, code lost:
        if (r0.m1451o() == null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x038a, code lost:
        r21 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x049b, code lost:
        if ((!kotlin.p081e.p083b.C1694h.m3123a((java.lang.Object) r27.m583a(), (java.lang.Object) r0)) != false) goto L76;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x05d2  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0653  */
    /* JADX WARN: Type inference failed for: r0v284, types: [long] */
    /* JADX WARN: Type inference failed for: r0v293, types: [T, java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r0v317, types: [long] */
    /* JADX WARN: Type inference failed for: r0v356, types: [long] */
    /* JADX WARN: Type inference failed for: r1v52, types: [T, java.lang.Integer] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x02b1 -> B:56:0x0390). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0329 -> B:46:0x0339). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x0501 -> B:22:0x01f6). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x05c3 -> B:22:0x01f6). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m603a(int r11, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r12) {
        /*
            Method dump skipped, instructions count: 1816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.m603a(int, kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m602a(java.util.ArrayList<org.mistergroup.shouldianswer.model.C2432j.C2434b> r7, kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.m602a(java.util.ArrayList, kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m601a(kotlin.p075c.AbstractC1641c<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.m601a(kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final C2665h m604a() {
        C2665h c2665h = this.f7862a;
        if (c2665h == null) {
            C1694h.m3116b("adapter");
        }
        return c2665h;
    }

    /* renamed from: a */
    public final void m600a(C2665h c2665h) {
        C1694h.m3117b(c2665h, "<set-?>");
        this.f7862a = c2665h;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m594b(java.util.ArrayList<org.mistergroup.shouldianswer.model.C2432j.C2434b> r6, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.C2677c
            if (r0 == 0) goto L28
            r0 = r7
            org.mistergroup.shouldianswer.ui.main.c.j$c r0 = (org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.C2677c) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f7890b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r8
            int r1 = r1.f7890b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f7890b = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            org.mistergroup.shouldianswer.ui.main.c.j$c r0 = new org.mistergroup.shouldianswer.ui.main.c.j$c
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f7889a
            r8 = r0
            java.lang.Object r0 = kotlin.p075c.p076a.C1622b.m3174a()
            r9 = r0
            r0 = r7
            int r0 = r0.f7890b
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L6f
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L64
            r0 = r7
            java.lang.Object r0 = r0.f7893e
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            r6 = r0
            r0 = r7
            java.lang.Object r0 = r0.f7892d
            org.mistergroup.shouldianswer.ui.main.c.j r0 = (org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j) r0
            r6 = r0
            r0 = r8
            kotlin.C1771k.m2979a(r0)
            goto L90
        L64:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6f:
            r0 = r8
            kotlin.C1771k.m2979a(r0)
            r0 = r7
            r1 = r5
            r0.f7892d = r1
            r0 = r7
            r1 = r6
            r0.f7893e = r1
            r0 = r7
            r1 = 1
            r0.f7890b = r1
            r0 = r5
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m602a(r1, r2)
            r1 = r9
            if (r0 != r1) goto L90
            r0 = r9
            return r0
        L90:
            kotlin.o r0 = kotlin.C1775o.f4450a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.main.p104c.C2672j.m594b(java.util.ArrayList, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: b */
    public final boolean m595b() {
        return this.f7863b;
    }

    /* renamed from: c */
    public final LinkedList<C2676b> m592c() {
        return this.f7864c;
    }

    /* renamed from: d */
    public final void m591d() {
        if (!this.f7872k) {
            C3104j.f9124a.m155b("LogsDataSourceCallLog.onActive", this.f7869h);
            this.f7872k = true;
            if (this.f7864c.size() > 0) {
                m586i();
            }
            if (!m588g()) {
                return;
            }
            m596a(true);
        }
    }

    /* renamed from: e */
    public final void m590e() {
        if (this.f7872k) {
            C3104j.f9124a.m155b("LogsDataSourceCallLog.onInactive", this.f7869h);
            this.f7872k = false;
            m587h();
        }
    }

    /* renamed from: f */
    public final EnumC2674a m589f() {
        return this.f7874m;
    }
}
