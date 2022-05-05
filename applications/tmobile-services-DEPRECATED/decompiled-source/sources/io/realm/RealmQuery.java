package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.SubscriptionAwareOsResults;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.core.DescriptorOrdering;
import io.realm.internal.fields.FieldDescriptor;
import io.realm.internal.sync.SubscriptionAction;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmQuery.class */
public class RealmQuery<E> {

    /* renamed from: a */
    private final Table f19953a;

    /* renamed from: b */
    private final BaseRealm f19954b;

    /* renamed from: c */
    private final TableQuery f19955c;

    /* renamed from: d */
    private final RealmObjectSchema f19956d;

    /* renamed from: e */
    private Class<E> f19957e;

    /* renamed from: f */
    private String f19958f;

    /* renamed from: g */
    private final boolean f19959g;

    /* renamed from: h */
    private final OsList f19960h;

    /* renamed from: i */
    private DescriptorOrdering f19961i;

    /* renamed from: io.realm.RealmQuery$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmQuery$1.class */
    static /* synthetic */ class C21531 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19962a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            f19962a = iArr;
            try {
                iArr[RealmFieldType.INTEGER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19962a[RealmFieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19962a[RealmFieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private RealmQuery(BaseRealm baseRealm, OsList osList, Class<E> cls) {
        this.f19961i = new DescriptorOrdering();
        this.f19954b = baseRealm;
        this.f19957e = cls;
        boolean z = !m2910M(cls);
        this.f19959g = z;
        if (z) {
            this.f19956d = null;
            this.f19953a = null;
            this.f19960h = null;
            this.f19955c = null;
            return;
        }
        RealmObjectSchema i = baseRealm.mo3059L().m2852i(cls);
        this.f19956d = i;
        this.f19953a = i.m2928k();
        this.f19960h = osList;
        this.f19955c = osList.m2768m();
    }

    private RealmQuery(BaseRealm baseRealm, OsList osList, String str) {
        this.f19961i = new DescriptorOrdering();
        this.f19954b = baseRealm;
        this.f19958f = str;
        this.f19959g = false;
        RealmObjectSchema j = baseRealm.mo3059L().m2851j(str);
        this.f19956d = j;
        this.f19953a = j.m2928k();
        this.f19955c = osList.m2768m();
        this.f19960h = osList;
    }

    private RealmQuery(BaseRealm baseRealm, String str) {
        this.f19961i = new DescriptorOrdering();
        this.f19954b = baseRealm;
        this.f19958f = str;
        this.f19959g = false;
        RealmObjectSchema j = baseRealm.mo3059L().m2851j(str);
        this.f19956d = j;
        Table k = j.m2928k();
        this.f19953a = k;
        this.f19955c = k.m2653Q();
        this.f19960h = null;
    }

    private RealmQuery(Realm realm, Class<E> cls) {
        this.f19961i = new DescriptorOrdering();
        this.f19954b = realm;
        this.f19957e = cls;
        boolean z = !m2910M(cls);
        this.f19959g = z;
        if (z) {
            this.f19956d = null;
            this.f19953a = null;
            this.f19960h = null;
            this.f19955c = null;
            return;
        }
        RealmObjectSchema i = realm.mo3059L().m2852i(cls);
        this.f19956d = i;
        Table k = i.m2928k();
        this.f19953a = k;
        this.f19960h = null;
        this.f19955c = k.m2653Q();
    }

    private RealmQuery(RealmResults<E> realmResults, Class<E> cls) {
        this.f19961i = new DescriptorOrdering();
        this.f19954b = realmResults.f19837f;
        this.f19957e = cls;
        boolean z = !m2910M(cls);
        this.f19959g = z;
        if (z) {
            this.f19956d = null;
            this.f19953a = null;
            this.f19960h = null;
            this.f19955c = null;
            return;
        }
        this.f19956d = this.f19954b.mo3059L().m2852i(cls);
        this.f19953a = realmResults.m3093k();
        this.f19960h = null;
        this.f19955c = realmResults.m3095h().m2708x();
    }

    private RealmQuery(RealmResults<DynamicRealmObject> realmResults, String str) {
        this.f19961i = new DescriptorOrdering();
        BaseRealm baseRealm = realmResults.f19837f;
        this.f19954b = baseRealm;
        this.f19958f = str;
        this.f19959g = false;
        RealmObjectSchema j = baseRealm.mo3059L().m2851j(str);
        this.f19956d = j;
        this.f19953a = j.m2928k();
        this.f19955c = realmResults.m3095h().m2708x();
        this.f19960h = null;
    }

    /* renamed from: A */
    private RealmQuery<E> m2922A(String str, @Nullable Long l) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.INTEGER);
        if (l == null) {
            this.f19955c.m2610q(g.m2577e(), g.m2574h());
        } else {
            this.f19955c.m2621f(g.m2577e(), g.m2574h(), l.longValue());
        }
        return this;
    }

    /* renamed from: B */
    private RealmQuery<E> m2921B(String str, @Nullable Short sh) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.INTEGER);
        if (sh == null) {
            this.f19955c.m2610q(g.m2577e(), g.m2574h());
        } else {
            this.f19955c.m2621f(g.m2577e(), g.m2574h(), sh.shortValue());
        }
        return this;
    }

    /* renamed from: C */
    private RealmQuery<E> m2920C(String str, @Nullable String str2, Case r10) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.STRING);
        this.f19955c.m2619h(g.m2577e(), g.m2574h(), str2, r10);
        return this;
    }

    /* renamed from: D */
    private RealmQuery<E> m2919D(String str, @Nullable Date date) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.DATE);
        this.f19955c.m2618i(g.m2577e(), g.m2574h(), date);
        return this;
    }

    /* renamed from: H */
    private long m2915H() {
        if (this.f19961i.m2582a()) {
            return this.f19955c.m2616k();
        }
        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) m2918E().m3097f(null);
        if (realmObjectProxy != null) {
            return realmObjectProxy.realmGet$proxyState().m3084e().getObjectKey();
        }
        return -1L;
    }

    /* renamed from: M */
    private static boolean m2910M(Class<?> cls) {
        return RealmModel.class.isAssignableFrom(cls);
    }

    /* renamed from: N */
    private boolean m2909N() {
        return this.f19958f != null;
    }

    /* renamed from: O */
    private OsResults m2908O() {
        this.f19954b.m3151h();
        return m2891k(this.f19955c, this.f19961i, false, SubscriptionAction.f20247d).f19840i;
    }

    /* renamed from: U */
    private RealmQuery<E> m2902U() {
        this.f19955c.m2604w();
        return this;
    }

    /* renamed from: c */
    private RealmQuery<E> m2899c() {
        this.f19955c.m2611p();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static <E extends RealmModel> RealmQuery<E> m2895g(DynamicRealm dynamicRealm, String str) {
        return new RealmQuery<>(dynamicRealm, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static <E extends RealmModel> RealmQuery<E> m2894h(Realm realm, Class<E> cls) {
        return new RealmQuery<>(realm, cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static <E> RealmQuery<E> m2893i(RealmList<E> realmList) {
        return realmList.f19933f == null ? new RealmQuery<>(realmList.f19936i, realmList.m2949v(), realmList.f19934g) : new RealmQuery<>(realmList.f19936i, realmList.m2949v(), realmList.f19933f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static <E> RealmQuery<E> m2892j(RealmResults<E> realmResults) {
        Class<E> cls = realmResults.f19838g;
        return cls == null ? new RealmQuery<>((RealmResults<DynamicRealmObject>) realmResults, realmResults.f19839h) : new RealmQuery<>(realmResults, cls);
    }

    /* renamed from: k */
    private RealmResults<E> m2891k(TableQuery tableQuery, DescriptorOrdering descriptorOrdering, boolean z, SubscriptionAction subscriptionAction) {
        OsResults E = subscriptionAction.m2538d() ? SubscriptionAwareOsResults.m2674E(this.f19954b.f19809j, tableQuery, descriptorOrdering, subscriptionAction) : OsResults.m2724h(this.f19954b.f19809j, tableQuery, descriptorOrdering);
        RealmResults<E> realmResults = m2909N() ? new RealmResults<>(this.f19954b, E, this.f19958f) : new RealmResults<>(this.f19954b, E, this.f19957e);
        if (z) {
            realmResults.m2871A();
        }
        return realmResults;
    }

    /* renamed from: m */
    private RealmQuery<E> m2889m() {
        this.f19955c.m2624c();
        return this;
    }

    /* renamed from: w */
    private RealmQuery<E> m2879w(String str, @Nullable Boolean bool) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.BOOLEAN);
        if (bool == null) {
            this.f19955c.m2610q(g.m2577e(), g.m2574h());
        } else {
            this.f19955c.m2617j(g.m2577e(), g.m2574h(), bool.booleanValue());
        }
        return this;
    }

    /* renamed from: x */
    private RealmQuery<E> m2878x(String str, @Nullable Double d) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.DOUBLE);
        if (d == null) {
            this.f19955c.m2610q(g.m2577e(), g.m2574h());
        } else {
            this.f19955c.m2623d(g.m2577e(), g.m2574h(), d.doubleValue());
        }
        return this;
    }

    /* renamed from: y */
    private RealmQuery<E> m2877y(String str, @Nullable Float f) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.FLOAT);
        if (f == null) {
            this.f19955c.m2610q(g.m2577e(), g.m2574h());
        } else {
            this.f19955c.m2622e(g.m2577e(), g.m2574h(), f.floatValue());
        }
        return this;
    }

    /* renamed from: z */
    private RealmQuery<E> m2876z(String str, @Nullable Integer num) {
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.INTEGER);
        if (num == null) {
            this.f19955c.m2610q(g.m2577e(), g.m2574h());
        } else {
            this.f19955c.m2621f(g.m2577e(), g.m2574h(), num.intValue());
        }
        return this;
    }

    /* renamed from: E */
    public RealmResults<E> m2918E() {
        this.f19954b.m3151h();
        return m2891k(this.f19955c, this.f19961i, true, SubscriptionAction.f20247d);
    }

    /* renamed from: F */
    public RealmResults<E> m2917F() {
        this.f19954b.m3151h();
        this.f19954b.f19809j.capabilities.mo2593b("Async query cannot be created on current thread.");
        return m2891k(this.f19955c, this.f19961i, false, (!this.f19954b.f19809j.isPartial() || this.f19960h != null) ? SubscriptionAction.f20247d : SubscriptionAction.f20248e);
    }

    @Nullable
    /* renamed from: G */
    public E m2916G() {
        this.f19954b.m3151h();
        E e = null;
        if (this.f19959g) {
            return null;
        }
        long H = m2915H();
        if (H >= 0) {
            e = (E) this.f19954b.m3166B(this.f19957e, this.f19958f, H);
        }
        return e;
    }

    /* renamed from: I */
    public RealmQuery<E> m2914I(String str, int i) {
        this.f19954b.m3151h();
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.INTEGER);
        this.f19955c.m2614m(g.m2577e(), g.m2574h(), i);
        return this;
    }

    /* renamed from: J */
    public RealmQuery<E> m2913J(String str, Date date) {
        this.f19954b.m3151h();
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.DATE);
        this.f19955c.m2613n(g.m2577e(), g.m2574h(), date);
        return this;
    }

    /* renamed from: K */
    public RealmQuery<E> m2912K(String str, Date date) {
        this.f19954b.m3151h();
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.DATE);
        this.f19955c.m2612o(g.m2577e(), g.m2574h(), date);
        return this;
    }

    /* renamed from: L */
    public RealmQuery<E> m2911L(String str, @Nullable Integer[] numArr) {
        this.f19954b.m3151h();
        if (numArr == null || numArr.length == 0) {
            m2901a();
            return this;
        }
        m2899c();
        m2876z(str, numArr[0]);
        for (int i = 1; i < numArr.length; i++) {
            m2902U();
            m2876z(str, numArr[i]);
        }
        m2889m();
        return this;
    }

    /* renamed from: P */
    public RealmQuery<E> m2907P(String str, Date date) {
        this.f19954b.m3151h();
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.DATE);
        this.f19955c.m2609r(g.m2577e(), g.m2574h(), date);
        return this;
    }

    @Nullable
    /* renamed from: Q */
    public Number m2906Q(String str) {
        this.f19954b.m3151h();
        long d = this.f19956d.m2935d(str);
        int i = C21531.f19962a[this.f19953a.m2635r(d).ordinal()];
        if (i == 1) {
            return this.f19955c.m2606u(d);
        }
        if (i == 2) {
            return this.f19955c.m2607t(d);
        }
        if (i == 3) {
            return this.f19955c.m2608s(d);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field '%s': type mismatch - %s expected.", str, "int, float or double"));
    }

    /* renamed from: R */
    public RealmQuery<E> m2905R(String str, @Nullable String str2) {
        m2904S(str, str2, Case.SENSITIVE);
        return this;
    }

    /* renamed from: S */
    public RealmQuery<E> m2904S(String str, @Nullable String str2, Case r10) {
        this.f19954b.m3151h();
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.STRING);
        if (g.m2573i() <= 1 || r10.getValue()) {
            this.f19955c.m2605v(g.m2577e(), g.m2574h(), str2, r10);
            return this;
        }
        throw new IllegalArgumentException("Link queries cannot be case insensitive - coming soon.");
    }

    /* renamed from: T */
    public RealmQuery<E> m2903T() {
        this.f19954b.m3151h();
        m2902U();
        return this;
    }

    /* renamed from: a */
    public RealmQuery<E> m2901a() {
        this.f19954b.m3151h();
        this.f19955c.m2626a();
        return this;
    }

    /* renamed from: b */
    public RealmQuery<E> m2900b() {
        this.f19954b.m3151h();
        m2899c();
        return this;
    }

    /* renamed from: d */
    public RealmQuery<E> m2898d(String str, String str2) {
        m2897e(str, str2, Case.SENSITIVE);
        return this;
    }

    /* renamed from: e */
    public RealmQuery<E> m2897e(String str, String str2, Case r10) {
        this.f19954b.m3151h();
        FieldDescriptor g = this.f19956d.mo2932g(str, RealmFieldType.STRING);
        this.f19955c.m2625b(g.m2577e(), g.m2574h(), str2, r10);
        return this;
    }

    /* renamed from: f */
    public long m2896f() {
        this.f19954b.m3151h();
        return m2908O().m2710v();
    }

    /* renamed from: l */
    public RealmQuery<E> m2890l() {
        this.f19954b.m3151h();
        m2889m();
        return this;
    }

    /* renamed from: n */
    public RealmQuery<E> m2888n(String str, @Nullable Boolean bool) {
        this.f19954b.m3151h();
        m2879w(str, bool);
        return this;
    }

    /* renamed from: o */
    public RealmQuery<E> m2887o(String str, @Nullable Double d) {
        this.f19954b.m3151h();
        m2878x(str, d);
        return this;
    }

    /* renamed from: p */
    public RealmQuery<E> m2886p(String str, @Nullable Float f) {
        this.f19954b.m3151h();
        m2877y(str, f);
        return this;
    }

    /* renamed from: q */
    public RealmQuery<E> m2885q(String str, @Nullable Integer num) {
        this.f19954b.m3151h();
        m2876z(str, num);
        return this;
    }

    /* renamed from: r */
    public RealmQuery<E> m2884r(String str, @Nullable Long l) {
        this.f19954b.m3151h();
        m2922A(str, l);
        return this;
    }

    /* renamed from: s */
    public RealmQuery<E> m2883s(String str, @Nullable Short sh) {
        this.f19954b.m3151h();
        m2921B(str, sh);
        return this;
    }

    /* renamed from: t */
    public RealmQuery<E> m2882t(String str, @Nullable String str2) {
        m2881u(str, str2, Case.SENSITIVE);
        return this;
    }

    /* renamed from: u */
    public RealmQuery<E> m2881u(String str, @Nullable String str2, Case r8) {
        this.f19954b.m3151h();
        m2920C(str, str2, r8);
        return this;
    }

    /* renamed from: v */
    public RealmQuery<E> m2880v(String str, @Nullable Date date) {
        this.f19954b.m3151h();
        m2919D(str, date);
        return this;
    }
}
