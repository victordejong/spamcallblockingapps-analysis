package io.realm;

import io.realm.internal.ColumnIndices;
import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import io.realm.internal.Util;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmSchema.class */
public abstract class RealmSchema {

    /* renamed from: a */
    private final Map<String, Table> f19969a = new HashMap();

    /* renamed from: b */
    private final Map<Class<? extends RealmModel>, Table> f19970b = new HashMap();

    /* renamed from: c */
    private final Map<Class<? extends RealmModel>, RealmObjectSchema> f19971c = new HashMap();

    /* renamed from: d */
    private final Map<String, RealmObjectSchema> f19972d = new HashMap();

    /* renamed from: e */
    final BaseRealm f19973e;

    /* renamed from: f */
    private final ColumnIndices f19974f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmSchema(BaseRealm baseRealm, @Nullable ColumnIndices columnIndices) {
        this.f19973e = baseRealm;
        this.f19974f = columnIndices;
    }

    /* renamed from: a */
    private void m2860a() {
        if (!m2848m()) {
            throw new IllegalStateException("Attempt to use column key before set.");
        }
    }

    /* renamed from: n */
    private boolean m2847n(Class<? extends RealmModel> cls, Class<? extends RealmModel> cls2) {
        return cls.equals(cls2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m2859b(String str, String str2) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* renamed from: c */
    public boolean m2858c(String str) {
        return this.f19973e.m3162N().hasTable(Table.m2631v(str));
    }

    /* renamed from: d */
    public abstract RealmObjectSchema mo2857d(String str);

    @Nullable
    /* renamed from: e */
    public abstract RealmObjectSchema mo2856e(String str);

    /* renamed from: f */
    public abstract Set<RealmObjectSchema> mo2855f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final ColumnInfo m2854g(Class<? extends RealmModel> cls) {
        m2860a();
        return this.f19974f.m2836a(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final ColumnInfo m2853h(String str) {
        m2860a();
        return this.f19974f.m2835b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public RealmObjectSchema m2852i(Class<? extends RealmModel> cls) {
        RealmObjectSchema realmObjectSchema = this.f19971c.get(cls);
        if (realmObjectSchema != null) {
            return realmObjectSchema;
        }
        Class<? extends RealmModel> b = Util.m2598b(cls);
        if (m2847n(b, cls)) {
            realmObjectSchema = this.f19971c.get(b);
        }
        RealmObjectSchema realmObjectSchema2 = realmObjectSchema;
        if (realmObjectSchema == null) {
            realmObjectSchema2 = new ImmutableRealmObjectSchema(this.f19973e, this, m2850k(cls), m2854g(b));
            this.f19971c.put(b, realmObjectSchema2);
        }
        if (m2847n(b, cls)) {
            this.f19971c.put(cls, realmObjectSchema2);
        }
        return realmObjectSchema2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002c, code lost:
        if (r0.m2934e().equals(r8) == false) goto L_0x002f;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.realm.RealmObjectSchema m2851j(java.lang.String r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r0 = io.realm.internal.Table.m2631v(r0)
            r9 = r0
            r0 = r7
            java.util.Map<java.lang.String, io.realm.RealmObjectSchema> r0 = r0.f19972d
            r1 = r9
            java.lang.Object r0 = r0.get(r1)
            io.realm.RealmObjectSchema r0 = (io.realm.RealmObjectSchema) r0
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x002f
            r0 = r10
            io.realm.internal.Table r0 = r0.m2928k()
            boolean r0 = r0.m2666D()
            if (r0 == 0) goto L_0x002f
            r0 = r10
            r11 = r0
            r0 = r10
            java.lang.String r0 = r0.m2934e()
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0062
        L_0x002f:
            r0 = r7
            io.realm.BaseRealm r0 = r0.f19973e
            io.realm.internal.OsSharedRealm r0 = r0.m3162N()
            r1 = r9
            boolean r0 = r0.hasTable(r1)
            if (r0 == 0) goto L_0x0065
            r0 = r7
            io.realm.BaseRealm r0 = r0.f19973e
            r8 = r0
            io.realm.ImmutableRealmObjectSchema r0 = new io.realm.ImmutableRealmObjectSchema
            r1 = r0
            r2 = r8
            r3 = r7
            r4 = r8
            io.realm.internal.OsSharedRealm r4 = r4.m3162N()
            r5 = r9
            io.realm.internal.Table r4 = r4.getTable(r5)
            r1.<init>(r2, r3, r4)
            r11 = r0
            r0 = r7
            java.util.Map<java.lang.String, io.realm.RealmObjectSchema> r0 = r0.f19972d
            r1 = r9
            r2 = r11
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x0062:
            r0 = r11
            return r0
        L_0x0065:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "The class "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " doesn't exist in this Realm."
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r11
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.RealmSchema.m2851j(java.lang.String):io.realm.RealmObjectSchema");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public Table m2850k(Class<? extends RealmModel> cls) {
        Table table = this.f19970b.get(cls);
        if (table != null) {
            return table;
        }
        Class<? extends RealmModel> b = Util.m2598b(cls);
        if (m2847n(b, cls)) {
            table = this.f19970b.get(b);
        }
        Table table2 = table;
        if (table == null) {
            table2 = this.f19973e.m3162N().getTable(Table.m2631v(this.f19973e.m3164J().m2983p().m2682g(b)));
            this.f19970b.put(b, table2);
        }
        if (m2847n(b, cls)) {
            this.f19970b.put(cls, table2);
        }
        return table2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public Table m2849l(String str) {
        String v = Table.m2631v(str);
        Table table = this.f19969a.get(v);
        if (table != null) {
            return table;
        }
        Table table2 = this.f19973e.m3162N().getTable(v);
        this.f19969a.put(v, table2);
        return table2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public final boolean m2848m() {
        return this.f19974f != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m2846o() {
        ColumnIndices columnIndices = this.f19974f;
        if (columnIndices != null) {
            columnIndices.m2834c();
        }
        this.f19969a.clear();
        this.f19970b.clear();
        this.f19971c.clear();
        this.f19972d.clear();
    }
}
