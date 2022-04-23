package io.realm;

import io.realm.internal.CheckedRow;
import io.realm.internal.OsResults;
import io.realm.internal.Table;
import io.realm.log.RealmLog;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmResults.class */
public class RealmResults<E> extends OrderedRealmCollectionImpl<E> {

    /* renamed from: io.realm.RealmResults$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmResults$1.class */
    static /* synthetic */ class C21551 {

        /* renamed from: a */
        static final /* synthetic */ int[] f19968a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a1 -> B:62:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a5 -> B:48:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:44:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b1 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b5 -> B:58:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bd -> B:64:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c1 -> B:60:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c5 -> B:46:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c9 -> B:42:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cd -> B:52:0x0094). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            f19968a = iArr;
            try {
                iArr[RealmFieldType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19968a[RealmFieldType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19968a[RealmFieldType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19968a[RealmFieldType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f19968a[RealmFieldType.DATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f19968a[RealmFieldType.LIST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f19968a[RealmFieldType.INTEGER_LIST.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f19968a[RealmFieldType.BOOLEAN_LIST.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f19968a[RealmFieldType.STRING_LIST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f19968a[RealmFieldType.BINARY_LIST.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f19968a[RealmFieldType.DATE_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f19968a[RealmFieldType.FLOAT_LIST.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f19968a[RealmFieldType.DOUBLE_LIST.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmResults(BaseRealm baseRealm, OsResults osResults, Class<E> cls) {
        super(baseRealm, osResults, cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmResults(BaseRealm baseRealm, OsResults osResults, String str) {
        super(baseRealm, osResults, str);
    }

    /* renamed from: w */
    private void m2864w(@Nullable Object obj) {
        if (obj != null) {
            this.f19837f.m3151h();
            this.f19837f.f19809j.capabilities.mo2593b("Listeners cannot be used on current thread.");
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    /* renamed from: x */
    private void m2863x(@Nullable Object obj, boolean z) {
        if (z && obj == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (this.f19837f.isClosed()) {
            RealmLog.m2529g("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.f19837f.f19807h.m2987l());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public static RealmResults<DynamicRealmObject> m2862y(DynamicRealm dynamicRealm, CheckedRow checkedRow, Table table, String str) {
        return new RealmResults<>(dynamicRealm, OsResults.m2726f(dynamicRealm.f19809j, checkedRow, table, str), Table.m2640m(table.m2633t()));
    }

    /* renamed from: A */
    public boolean m2871A() {
        this.f19837f.m3151h();
        this.f19840i.m2714r();
        return true;
    }

    /* renamed from: B */
    public void m2870B() {
        m2863x(null, false);
        this.f19840i.m2713s();
    }

    /* renamed from: C */
    public void m2869C(OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener) {
        m2863x(orderedRealmCollectionChangeListener, true);
        this.f19840i.m2712t(this, orderedRealmCollectionChangeListener);
    }

    /* renamed from: D */
    public void m2868D(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        m2863x(realmChangeListener, true);
        this.f19840i.m2711u(this, realmChangeListener);
    }

    /* renamed from: E */
    public RealmQuery<E> m2867E() {
        this.f19837f.m3151h();
        return RealmQuery.m2892j(this);
    }

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        this.f19837f.m3151h();
        return this.f19840i.m2717o();
    }

    /* renamed from: u */
    public void m2866u(OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener) {
        m2864w(orderedRealmCollectionChangeListener);
        this.f19840i.m2729c(this, orderedRealmCollectionChangeListener);
    }

    /* renamed from: v */
    public void m2865v(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        m2864w(realmChangeListener);
        this.f19840i.m2728d(this, realmChangeListener);
    }

    /* renamed from: z */
    public RealmResults<E> m2861z() {
        if (isValid()) {
            BaseRealm t = this.f19837f.mo3047t();
            OsResults k = this.f19840i.m2721k(t.f19809j);
            String str = this.f19839h;
            return str != null ? new RealmResults<>(t, k, str) : new RealmResults<>(t, k, this.f19838g);
        }
        throw new IllegalStateException("Only valid, managed RealmResults can be frozen.");
    }
}
