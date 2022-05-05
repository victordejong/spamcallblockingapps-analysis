package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzl;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.DebugKt;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6865f;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.C7075g;
/* renamed from: h.i.a.e.m.b.s1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/s1.class */
public final class C9053s1 extends AbstractC9055s3 {

    /* renamed from: c */
    public C8970e2 f20623c;

    /* renamed from: d */
    public AppMeasurement.AbstractC3584b f20624d;

    /* renamed from: f */
    public boolean f20626f;

    /* renamed from: e */
    public final Set<AppMeasurement.AbstractC3585c> f20625e = new CopyOnWriteArraySet();

    /* renamed from: h */
    public boolean f20628h = true;

    /* renamed from: g */
    public final AtomicReference<String> f20627g = new AtomicReference<>();

    public C9053s1(C9052s0 s0Var) {
        super(s0Var);
    }

    @Nullable
    /* renamed from: A */
    public final String m16266A() {
        C8976f2 B = this.f20541a.m16279n().m16600B();
        if (B != null) {
            return B.f20363b;
        }
        return null;
    }

    @Nullable
    /* renamed from: B */
    public final String m16265B() {
        C8976f2 B = this.f20541a.m16279n().m16600B();
        if (B != null) {
            return B.f20362a;
        }
        return null;
    }

    @Nullable
    /* renamed from: C */
    public final String m16264C() {
        if (this.f20541a.m16306A() != null) {
            return this.f20541a.m16306A();
        }
        try {
            return C6865f.m21690a();
        } catch (IllegalStateException e) {
            this.f20541a.mo16178c().m16375s().m16337a("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Nullable
    /* renamed from: D */
    public final String m16263D() {
        mo16327f();
        return this.f20627g.get();
    }

    @WorkerThread
    /* renamed from: E */
    public final void m16262E() {
        if (m16349l().m16501d(m16322p().m16568B(), C8966e.f20320j0)) {
            this.f20541a.m16289b(false);
        }
        if (!m16349l().m16496i(m16322p().m16568B()) || !this.f20541a.m16288d() || !this.f20628h) {
            mo16178c().m16368z().m16338a("Updating Scion state (FE)");
            m16321q().m16541G();
            return;
        }
        mo16178c().m16368z().m16338a("Recording app launch after enabling measurement for the first time (FE)");
        m16261F();
    }

    @WorkerThread
    /* renamed from: F */
    public final void m16261F() {
        mo16328d();
        mo16327f();
        m16226v();
        if (this.f20541a.m16299H()) {
            m16321q().m16542F();
            this.f20628h = false;
            String x = m16350k().m16748x();
            if (!TextUtils.isEmpty(x)) {
                m16353h().m16342n();
                if (!x.equals(Build.VERSION.RELEASE)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", x);
                    m16236b(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_ou", bundle);
                }
            }
        }
    }

    /* renamed from: a */
    public final List<AppMeasurement.ConditionalUserProperty> m16245a(String str, String str2, String str3) {
        C7021t.m21283b(str);
        m16325m();
        throw null;
    }

    /* renamed from: a */
    public final Map<String, Object> m16243a(String str, String str2, String str3, boolean z) {
        C7021t.m21283b(str);
        m16325m();
        throw null;
    }

    /* renamed from: a */
    public final Map<String, Object> m16242a(String str, String str2, boolean z) {
        mo16327f();
        return m16233b((String) null, str, str2, z);
    }

    /* renamed from: a */
    public final void m16260a(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        C7021t.m21290a(conditionalUserProperty);
        mo16327f();
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = new AppMeasurement.ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            mo16178c().m16372v().m16338a("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        m16231c(conditionalUserProperty2);
    }

    /* renamed from: a */
    public final void m16259a(AppMeasurement.AbstractC3585c cVar) {
        mo16327f();
        m16226v();
        C7021t.m21290a(cVar);
        if (!this.f20625e.add(cVar)) {
            mo16178c().m16372v().m16338a("OnEventListener already registered");
        }
    }

    /* renamed from: a */
    public final void m16255a(@Nullable String str) {
        this.f20627g.set(str);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16254a(String str, String str2, long j, Bundle bundle) {
        mo16327f();
        mo16328d();
        m16253a(str, str2, j, bundle, true, this.f20624d == null || C8959c4.m16702h(str2), false, null);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16253a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        C7021t.m21283b(str);
        C7021t.m21283b(str2);
        C7021t.m21290a(bundle);
        mo16328d();
        m16226v();
        if (!this.f20541a.m16288d()) {
            mo16178c().m16368z().m16338a("Event not sent since app measurement is disabled");
            return;
        }
        int i = 0;
        if (!this.f20626f) {
            this.f20626f = true;
            try {
                try {
                    Class.forName("com.google.android.gms.tagmanager.TagManagerService").getDeclaredMethod("initialize", Context.class).invoke(null, getContext());
                } catch (Exception e) {
                    mo16178c().m16372v().m16337a("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException e2) {
                mo16178c().m16369y().m16338a("Tag Manager is not found and thus will not be used");
            }
        }
        if (z3) {
            mo16187b();
            if (!"_iap".equals(str2)) {
                C8959c4 s = this.f20541a.m16274s();
                int i2 = 2;
                if (s.m16713b(NotificationCompat.CATEGORY_EVENT, str2)) {
                    if (!s.m16721a(NotificationCompat.CATEGORY_EVENT, AppMeasurement.C3583a.f7136a, str2)) {
                        i2 = 13;
                    } else if (s.m16729a(NotificationCompat.CATEGORY_EVENT, 40, str2)) {
                        i2 = 0;
                    }
                }
                if (i2 != 0) {
                    mo16178c().m16373u().m16337a("Invalid public event name. Event will not be logged (FE)", m16352i().m16473a(str2));
                    this.f20541a.m16274s();
                    this.f20541a.m16274s().m16742a(i2, "_ev", C8959c4.m16727a(str2, 40, true), str2 != null ? str2.length() : 0);
                    return;
                }
            }
        }
        mo16187b();
        C8976f2 A = m16320r().m16601A();
        if (A != null && !bundle.containsKey("_sc")) {
            A.f20365d = true;
        }
        C8982g2.m16594a(A, bundle, z && z3);
        boolean equals = "am".equals(str);
        boolean h = C8959c4.m16702h(str2);
        if (z && this.f20624d != null && !h && !equals) {
            mo16178c().m16368z().m16336a("Passing event to registered event handler (FE)", m16352i().m16473a(str2), m16352i().m16477a(bundle));
            this.f20624d.m31668a(str, str2, bundle, j);
        } else if (this.f20541a.m16299H()) {
            int a = m16351j().m16730a(str2);
            if (a != 0) {
                mo16178c().m16373u().m16337a("Invalid event name. Event will not be logged (FE)", m16352i().m16473a(str2));
                m16351j();
                String a2 = C8959c4.m16727a(str2, 40, true);
                if (str2 != null) {
                    i = str2.length();
                }
                this.f20541a.m16274s().m16728a(str3, a, "_ev", a2, i);
                return;
            }
            List<String> a3 = C7075g.m21151a((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
            Bundle a4 = m16351j().m16723a(str3, str2, bundle, a3, z3, true);
            C8976f2 f2Var = (a4 == null || !a4.containsKey("_sc") || !a4.containsKey("_si")) ? null : new C8976f2(a4.getString("_sn"), a4.getString("_sc"), Long.valueOf(a4.getLong("_si")).longValue());
            if (f2Var != null) {
                A = f2Var;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(a4);
            long nextLong = m16351j().m16700t().nextLong();
            String[] strArr = (String[]) a4.keySet().toArray(new String[bundle.size()]);
            Arrays.sort(strArr);
            int i3 = 0;
            for (String str4 : strArr) {
                Object obj = a4.get(str4);
                m16351j();
                Bundle[] a5 = C8959c4.m16731a(obj);
                if (a5 != null) {
                    a4.putInt(str4, a5.length);
                    for (int i4 = 0; i4 < a5.length; i4++) {
                        Bundle bundle2 = a5[i4];
                        C8982g2.m16594a(A, bundle2, true);
                        Bundle a6 = m16351j().m16723a(str3, "_ep", bundle2, a3, z3, false);
                        a6.putString("_en", str2);
                        a6.putLong("_eid", nextLong);
                        a6.putString("_gn", str4);
                        a6.putInt("_ll", a5.length);
                        a6.putInt("_i", i4);
                        arrayList.add(a6);
                    }
                    i3 += a5.length;
                }
            }
            if (i3 != 0) {
                a4.putLong("_eid", nextLong);
                a4.putInt("_epc", i3);
            }
            int i5 = 0;
            while (i5 < arrayList.size()) {
                Bundle bundle3 = (Bundle) arrayList.get(i5);
                String str5 = i5 != 0 ? "_ep" : str2;
                bundle3.putString("_o", str);
                Bundle bundle4 = bundle3;
                if (z2) {
                    bundle4 = m16351j().m16736a(bundle3);
                }
                mo16178c().m16368z().m16336a("Logging event (FE)", m16352i().m16473a(str2), m16352i().m16477a(bundle4));
                m16321q().m16536a(new zzad(str5, new zzaa(bundle4), str, j), str3);
                if (!equals) {
                    for (AppMeasurement.AbstractC3585c cVar : this.f20625e) {
                        cVar.mo15103a(str, str2, new Bundle(bundle4), j);
                    }
                }
                i5++;
            }
            mo16187b();
            if (m16320r().m16601A() != null && "_ae".equals(str2)) {
                m16318t().m16556a(true);
            }
        }
    }

    /* renamed from: a */
    public final void m16252a(String str, String str2, long j, Object obj) {
        mo16214a().m16364a(new RunnableC9072v1(this, str, str2, obj, j));
    }

    /* renamed from: a */
    public final void m16251a(String str, String str2, Bundle bundle) {
        mo16327f();
        m16234b((String) null, str, str2, bundle);
    }

    /* renamed from: a */
    public final void m16250a(String str, String str2, Bundle bundle, boolean z) {
        m16249a(str, str2, bundle, false, true, mo16174e().currentTimeMillis());
    }

    /* renamed from: a */
    public final void m16249a(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        mo16327f();
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        m16237b(str, str2, j, bundle, z2, !z2 || this.f20624d == null || C8959c4.m16702h(str2), !z, null);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16248a(String str, String str2, Object obj, long j) {
        Long l;
        C7021t.m21283b(str);
        C7021t.m21283b(str2);
        mo16328d();
        mo16327f();
        m16226v();
        if (m16349l().m16501d(m16322p().m16568B(), C8966e.f20320j0)) {
            l = obj;
            if ("_ap".equals(str2)) {
                l = obj;
                if (!DebugKt.DEBUG_PROPERTY_VALUE_AUTO.equals(str)) {
                    if (obj instanceof String) {
                        String str3 = (String) obj;
                        if (!TextUtils.isEmpty(str3)) {
                            String str4 = "true";
                            Long valueOf = Long.valueOf(("true".equals(str3.toLowerCase(Locale.ENGLISH)) || "1".equals(obj)) ? 1L : 0L);
                            C8974f0 f0Var = m16350k().f20214s;
                            if (valueOf.longValue() != 1) {
                                str4 = "false";
                            }
                            f0Var.m16662a(str4);
                            l = valueOf;
                        }
                    }
                    l = obj;
                    if (obj == null) {
                        m16350k().f20214s.m16662a("unset");
                        mo16214a().m16364a(new RunnableC9078w1(this));
                        l = obj;
                    }
                }
            }
        } else {
            l = obj;
            if ("_ap".equals(str2)) {
                return;
            }
        }
        if (!this.f20541a.m16288d()) {
            mo16178c().m16368z().m16338a("User property not set since app measurement is disabled");
        } else if (this.f20541a.m16299H()) {
            mo16178c().m16368z().m16336a("Setting user property (FE)", m16352i().m16473a(str2), l);
            m16321q().m16535a(new zzfh(str2, j, l, str));
        }
    }

    /* renamed from: a */
    public final void m16247a(String str, String str2, Object obj, boolean z) {
        m16246a(str, str2, obj, z, mo16174e().currentTimeMillis());
    }

    /* renamed from: a */
    public final void m16246a(String str, String str2, Object obj, boolean z, long j) {
        String str3 = str;
        if (str == null) {
            str3 = "app";
        }
        int i = 6;
        int i2 = 0;
        int i3 = 0;
        if (z || "_ap".equals(str2)) {
            i = m16351j().m16715b(str2);
        } else {
            C8959c4 j2 = m16351j();
            if (j2.m16713b("user property", str2)) {
                if (!j2.m16721a("user property", AppMeasurement.C3587e.f7140a, str2)) {
                    i = 15;
                } else if (j2.m16729a("user property", 24, str2)) {
                    i = 0;
                }
            }
        }
        if (i != 0) {
            m16351j();
            String a = C8959c4.m16727a(str2, 24, true);
            if (str2 != null) {
                i3 = str2.length();
            }
            this.f20541a.m16274s().m16742a(i, "_ev", a, i3);
        } else if (obj != null) {
            int b = m16351j().m16714b(str2, obj);
            if (b != 0) {
                m16351j();
                String a2 = C8959c4.m16727a(str2, 24, true);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    i2 = String.valueOf(obj).length();
                }
                this.f20541a.m16274s().m16742a(b, "_ev", a2, i2);
                return;
            }
            Object c = m16351j().m16710c(str2, obj);
            if (c != null) {
                m16252a(str3, str2, j, c);
            }
        } else {
            m16252a(str3, str2, j, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m16244a(String str, String str2, String str3, Bundle bundle) {
        C7021t.m21283b(str);
        m16325m();
        throw null;
    }

    /* renamed from: a */
    public final void m16241a(boolean z) {
        m16226v();
        mo16327f();
        mo16214a().m16364a(new RunnableC8963d2(this, z));
    }

    /* renamed from: b */
    public final List<AppMeasurement.ConditionalUserProperty> m16238b(String str, String str2) {
        mo16327f();
        return m16235b((String) null, str, str2);
    }

    /* renamed from: b */
    public final List<AppMeasurement.ConditionalUserProperty> m16235b(String str, String str2, String str3) {
        if (mo16214a().m16355s()) {
            mo16178c().m16375s().m16338a("Cannot get conditional user properties from analytics worker thread");
            return Collections.emptyList();
        } else if (C8996i4.m16551a()) {
            mo16178c().m16375s().m16338a("Cannot get conditional user properties from main thread");
            return Collections.emptyList();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            synchronized (atomicReference) {
                this.f20541a.mo16214a().m16364a(new RunnableC8951b2(this, atomicReference, str, str2, str3));
                try {
                    atomicReference.wait(5000L);
                } catch (InterruptedException e) {
                    mo16178c().m16372v().m16336a("Interrupted waiting for get conditional user properties", str, e);
                }
            }
            List<zzl> list = (List) atomicReference.get();
            if (list == null) {
                mo16178c().m16372v().m16337a("Timed out waiting for get conditional user properties", str);
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (zzl zzlVar : list) {
                AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
                conditionalUserProperty.mAppId = zzlVar.f7176a;
                conditionalUserProperty.mOrigin = zzlVar.f7177b;
                conditionalUserProperty.mCreationTimestamp = zzlVar.f7179d;
                zzfh zzfhVar = zzlVar.f7178c;
                conditionalUserProperty.mName = zzfhVar.f7152b;
                conditionalUserProperty.mValue = zzfhVar.m31657c();
                conditionalUserProperty.mActive = zzlVar.f7180e;
                conditionalUserProperty.mTriggerEventName = zzlVar.f7181f;
                zzad zzadVar = zzlVar.f7182g;
                if (zzadVar != null) {
                    conditionalUserProperty.mTimedOutEventName = zzadVar.f7147a;
                    zzaa zzaaVar = zzadVar.f7148b;
                    if (zzaaVar != null) {
                        conditionalUserProperty.mTimedOutEventParams = zzaaVar.m31660c();
                    }
                }
                conditionalUserProperty.mTriggerTimeout = zzlVar.f7183h;
                zzad zzadVar2 = zzlVar.f7184i;
                if (zzadVar2 != null) {
                    conditionalUserProperty.mTriggeredEventName = zzadVar2.f7147a;
                    zzaa zzaaVar2 = zzadVar2.f7148b;
                    if (zzaaVar2 != null) {
                        conditionalUserProperty.mTriggeredEventParams = zzaaVar2.m31660c();
                    }
                }
                conditionalUserProperty.mTriggeredTimestamp = zzlVar.f7178c.f7153c;
                conditionalUserProperty.mTimeToLive = zzlVar.f7185j;
                zzad zzadVar3 = zzlVar.f7186k;
                if (zzadVar3 != null) {
                    conditionalUserProperty.mExpiredEventName = zzadVar3.f7147a;
                    zzaa zzaaVar3 = zzadVar3.f7148b;
                    if (zzaaVar3 != null) {
                        conditionalUserProperty.mExpiredEventParams = zzaaVar3.m31660c();
                    }
                }
                arrayList.add(conditionalUserProperty);
            }
            return arrayList;
        }
    }

    /* renamed from: b */
    public final List<zzfh> m16232b(boolean z) {
        mo16327f();
        m16226v();
        mo16178c().m16368z().m16338a("Fetching user attributes (FE)");
        if (mo16214a().m16355s()) {
            mo16178c().m16375s().m16338a("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        } else if (C8996i4.m16551a()) {
            mo16178c().m16375s().m16338a("Cannot get all user properties from main thread");
            return Collections.emptyList();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            synchronized (atomicReference) {
                this.f20541a.mo16214a().m16364a(new RunnableC9084x1(this, atomicReference, z));
                try {
                    atomicReference.wait(5000L);
                } catch (InterruptedException e) {
                    mo16178c().m16372v().m16337a("Interrupted waiting for get user properties", e);
                }
            }
            List<zzfh> list = (List) atomicReference.get();
            List<zzfh> list2 = list;
            if (list == null) {
                mo16178c().m16372v().m16338a("Timed out waiting for get user properties");
                list2 = Collections.emptyList();
            }
            return list2;
        }
    }

    /* renamed from: b */
    public final Map<String, Object> m16233b(String str, String str2, String str3, boolean z) {
        if (mo16214a().m16355s()) {
            mo16178c().m16375s().m16338a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        } else if (C8996i4.m16551a()) {
            mo16178c().m16375s().m16338a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            synchronized (atomicReference) {
                this.f20541a.mo16214a().m16364a(new RunnableC8957c2(this, atomicReference, str, str2, str3, z));
                try {
                    atomicReference.wait(5000L);
                } catch (InterruptedException e) {
                    mo16178c().m16372v().m16337a("Interrupted waiting for get user properties", e);
                }
            }
            List<zzfh> list = (List) atomicReference.get();
            if (list == null) {
                mo16178c().m16372v().m16338a("Timed out waiting for get user properties");
                return Collections.emptyMap();
            }
            ArrayMap arrayMap = new ArrayMap(list.size());
            for (zzfh zzfhVar : list) {
                arrayMap.put(zzfhVar.f7152b, zzfhVar.m31657c());
            }
            return arrayMap;
        }
    }

    /* renamed from: b */
    public final void m16240b(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        C7021t.m21290a(conditionalUserProperty);
        C7021t.m21283b(conditionalUserProperty.mAppId);
        m16325m();
        throw null;
    }

    /* renamed from: b */
    public final void m16237b(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        mo16214a().m16364a(new RunnableC9066u1(this, str, str2, j, C8959c4.m16717b(bundle), z, z2, z3, str3));
    }

    /* renamed from: b */
    public final void m16236b(String str, String str2, Bundle bundle) {
        m16249a(str, str2, bundle, true, true, mo16174e().currentTimeMillis());
    }

    /* renamed from: b */
    public final void m16234b(String str, String str2, String str3, Bundle bundle) {
        long currentTimeMillis = mo16174e().currentTimeMillis();
        C7021t.m21283b(str2);
        AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        mo16214a().m16364a(new RunnableC8945a2(this, conditionalUserProperty));
    }

    /* renamed from: c */
    public final void m16231c(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        long currentTimeMillis = mo16174e().currentTimeMillis();
        C7021t.m21290a(conditionalUserProperty);
        C7021t.m21283b(conditionalUserProperty.mName);
        C7021t.m21283b(conditionalUserProperty.mOrigin);
        C7021t.m21290a(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (m16351j().m16715b(str) != 0) {
            mo16178c().m16375s().m16337a("Invalid conditional user property name", m16352i().m16470c(str));
        } else if (m16351j().m16714b(str, obj) != 0) {
            mo16178c().m16375s().m16336a("Invalid conditional user property value", m16352i().m16470c(str), obj);
        } else {
            Object c = m16351j().m16710c(str, obj);
            if (c == null) {
                mo16178c().m16375s().m16336a("Unable to normalize conditional user property value", m16352i().m16470c(str), obj);
                return;
            }
            conditionalUserProperty.mValue = c;
            long j = conditionalUserProperty.mTriggerTimeout;
            if (TextUtils.isEmpty(conditionalUserProperty.mTriggerEventName) || (j <= NumberInfo.Whoscall.Tag.EXPIRE_INTERVAL && j >= 1)) {
                long j2 = conditionalUserProperty.mTimeToLive;
                if (j2 > NumberInfo.Whoscall.Tag.EXPIRE_INTERVAL || j2 < 1) {
                    mo16178c().m16375s().m16336a("Invalid conditional user property time to live", m16352i().m16470c(str), Long.valueOf(j2));
                } else {
                    mo16214a().m16364a(new RunnableC9094z1(this, conditionalUserProperty));
                }
            } else {
                mo16178c().m16375s().m16336a("Invalid conditional user property timeout", m16352i().m16470c(str), Long.valueOf(j));
            }
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final void m16230c(String str, String str2, Bundle bundle) {
        mo16327f();
        mo16328d();
        m16254a(str, str2, mo16174e().currentTimeMillis(), bundle);
    }

    @WorkerThread
    /* renamed from: d */
    public final void m16229d(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        mo16328d();
        m16226v();
        C7021t.m21290a(conditionalUserProperty);
        C7021t.m21283b(conditionalUserProperty.mName);
        C7021t.m21283b(conditionalUserProperty.mOrigin);
        C7021t.m21290a(conditionalUserProperty.mValue);
        if (!this.f20541a.m16288d()) {
            mo16178c().m16368z().m16338a("Conditional property not sent since collection is disabled");
            return;
        }
        zzfh zzfhVar = new zzfh(conditionalUserProperty.mName, conditionalUserProperty.mTriggeredTimestamp, conditionalUserProperty.mValue, conditionalUserProperty.mOrigin);
        try {
            zzad a = m16351j().m16724a(conditionalUserProperty.mAppId, conditionalUserProperty.mTriggeredEventName, conditionalUserProperty.mTriggeredEventParams, conditionalUserProperty.mOrigin, 0L, true, false);
            m16321q().m16534a(new zzl(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, zzfhVar, conditionalUserProperty.mCreationTimestamp, false, conditionalUserProperty.mTriggerEventName, m16351j().m16724a(conditionalUserProperty.mAppId, conditionalUserProperty.mTimedOutEventName, conditionalUserProperty.mTimedOutEventParams, conditionalUserProperty.mOrigin, 0L, true, false), conditionalUserProperty.mTriggerTimeout, a, conditionalUserProperty.mTimeToLive, m16351j().m16724a(conditionalUserProperty.mAppId, conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    @WorkerThread
    /* renamed from: e */
    public final void m16228e(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        mo16328d();
        m16226v();
        C7021t.m21290a(conditionalUserProperty);
        C7021t.m21283b(conditionalUserProperty.mName);
        if (!this.f20541a.m16288d()) {
            mo16178c().m16368z().m16338a("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            m16321q().m16534a(new zzl(conditionalUserProperty.mAppId, conditionalUserProperty.mOrigin, new zzfh(conditionalUserProperty.mName, 0L, null, null), conditionalUserProperty.mCreationTimestamp, conditionalUserProperty.mActive, conditionalUserProperty.mTriggerEventName, null, conditionalUserProperty.mTriggerTimeout, null, conditionalUserProperty.mTimeToLive, m16351j().m16724a(conditionalUserProperty.mAppId, conditionalUserProperty.mExpiredEventName, conditionalUserProperty.mExpiredEventParams, conditionalUserProperty.mOrigin, conditionalUserProperty.mCreationTimestamp, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9055s3
    /* renamed from: x */
    public final boolean mo16224x() {
        return false;
    }
}
