package io.realm;

import io.realm.RealmModel;
import io.realm.internal.ObserverPairList;
import io.realm.internal.OsObject;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.PendingRow;
import io.realm.internal.Row;
import io.realm.internal.UncheckedRow;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/ProxyState.class */
public final class ProxyState<E extends RealmModel> implements PendingRow.FrontEnd {

    /* renamed from: h */
    private static QueryCallback f19844h = new QueryCallback();

    /* renamed from: a */
    private E f19845a;

    /* renamed from: c */
    private Row f19847c;

    /* renamed from: d */
    private OsObject f19848d;

    /* renamed from: e */
    private BaseRealm f19849e;

    /* renamed from: f */
    private boolean f19850f;

    /* renamed from: b */
    private boolean f19846b = true;

    /* renamed from: g */
    private ObserverPairList<OsObject.ObjectObserverPair> f19851g = new ObserverPairList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/ProxyState$QueryCallback.class */
    public static class QueryCallback implements ObserverPairList.Callback<OsObject.ObjectObserverPair> {
        private QueryCallback() {
        }

        /* renamed from: b */
        public void mo2544a(OsObject.ObjectObserverPair objectObserverPair, Object obj) {
            objectObserverPair.m2752a((RealmModel) obj, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/realm/ProxyState$RealmChangeListenerWrapper.class */
    public static class RealmChangeListenerWrapper<T extends RealmModel> implements RealmObjectChangeListener<T> {

        /* renamed from: a */
        private final RealmChangeListener<T> f19852a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RealmChangeListenerWrapper(RealmChangeListener<T> realmChangeListener) {
            if (realmChangeListener != null) {
                this.f19852a = realmChangeListener;
                return;
            }
            throw new IllegalArgumentException("Listener should not be null");
        }

        @Override // io.realm.RealmObjectChangeListener
        /* renamed from: a */
        public void mo2515a(T t, @Nullable ObjectChangeSet objectChangeSet) {
            this.f19852a.mo2506a(t);
        }

        public boolean equals(Object obj) {
            return (obj instanceof RealmChangeListenerWrapper) && this.f19852a == ((RealmChangeListenerWrapper) obj).f19852a;
        }

        public int hashCode() {
            return this.f19852a.hashCode();
        }
    }

    public ProxyState() {
    }

    public ProxyState(E e) {
        this.f19845a = e;
    }

    /* renamed from: i */
    private void m3080i() {
        this.f19851g.m2805c(f19844h);
    }

    /* renamed from: j */
    private void m3079j() {
        OsSharedRealm osSharedRealm = this.f19849e.f19809j;
        if (osSharedRealm != null && !osSharedRealm.isClosed() && this.f19847c.isValid() && this.f19848d == null) {
            OsObject osObject = new OsObject(this.f19849e.f19809j, (UncheckedRow) this.f19847c);
            this.f19848d = osObject;
            osObject.setObserverPairs(this.f19851g);
            this.f19851g = null;
        }
    }

    @Override // io.realm.internal.PendingRow.FrontEnd
    /* renamed from: a */
    public void mo2694a(Row row) {
        this.f19847c = row;
        m3080i();
        if (row.isValid()) {
            m3079j();
        }
    }

    /* renamed from: b */
    public void m3087b(RealmObjectChangeListener<E> realmObjectChangeListener) {
        Row row = this.f19847c;
        if (row instanceof PendingRow) {
            this.f19851g.m2807a(new OsObject.ObjectObserverPair(this.f19845a, realmObjectChangeListener));
        } else if (row instanceof UncheckedRow) {
            m3079j();
            OsObject osObject = this.f19848d;
            if (osObject != null) {
                osObject.addListener(this.f19845a, realmObjectChangeListener);
            }
        }
    }

    /* renamed from: c */
    public boolean m3086c() {
        return this.f19850f;
    }

    /* renamed from: d */
    public BaseRealm m3085d() {
        return this.f19849e;
    }

    /* renamed from: e */
    public Row m3084e() {
        return this.f19847c;
    }

    /* renamed from: f */
    public boolean m3083f() {
        return this.f19847c.isLoaded();
    }

    /* renamed from: g */
    public boolean m3082g() {
        return this.f19846b;
    }

    /* renamed from: h */
    public void m3081h() {
        Row row = this.f19847c;
        if (row instanceof PendingRow) {
            ((PendingRow) row).m2697c();
        }
    }

    /* renamed from: k */
    public void m3078k() {
        OsObject osObject = this.f19848d;
        if (osObject != null) {
            osObject.removeListener(this.f19845a);
        } else {
            this.f19851g.m2806b();
        }
    }

    /* renamed from: l */
    public void m3077l(RealmObjectChangeListener<E> realmObjectChangeListener) {
        OsObject osObject = this.f19848d;
        if (osObject != null) {
            osObject.removeListener(this.f19845a, realmObjectChangeListener);
        } else {
            this.f19851g.m2803e(this.f19845a, realmObjectChangeListener);
        }
    }

    /* renamed from: m */
    public void m3076m(boolean z) {
        this.f19850f = z;
    }

    /* renamed from: n */
    public void m3075n() {
        this.f19846b = false;
    }

    /* renamed from: o */
    public void m3074o(List<String> list) {
    }

    /* renamed from: p */
    public void m3073p(BaseRealm baseRealm) {
        this.f19849e = baseRealm;
    }

    /* renamed from: q */
    public void m3072q(Row row) {
        this.f19847c = row;
    }
}
