package io.realm.internal;

import io.realm.RealmFieldType;
import io.realm.exceptions.RealmPrimaryKeyConstraintException;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/Table.class */
public class Table implements NativeObject {

    /* renamed from: i */
    private static final String f20186i;

    /* renamed from: j */
    public static final int f20187j;

    /* renamed from: k */
    private static final long f20188k = nativeGetFinalizerPtr();

    /* renamed from: f */
    private final long f20189f;

    /* renamed from: g */
    private final NativeContext f20190g;

    /* renamed from: h */
    private final OsSharedRealm f20191h;

    /* renamed from: io.realm.internal.Table$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/Table$1.class */
    static /* synthetic */ class C21901 {

        /* renamed from: a */
        static final /* synthetic */ int[] f20192a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ad -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b1 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b5 -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b9 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c5 -> B:49:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c9 -> B:45:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cd -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d1 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d5 -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d9 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00dd -> B:69:0x00a0). Please submit an issue!!! */
        static {
            int[] iArr = new int[RealmFieldType.values().length];
            f20192a = iArr;
            try {
                iArr[RealmFieldType.INTEGER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20192a[RealmFieldType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20192a[RealmFieldType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f20192a[RealmFieldType.BINARY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f20192a[RealmFieldType.DATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f20192a[RealmFieldType.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f20192a[RealmFieldType.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f20192a[RealmFieldType.INTEGER_LIST.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f20192a[RealmFieldType.BOOLEAN_LIST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f20192a[RealmFieldType.STRING_LIST.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f20192a[RealmFieldType.BINARY_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f20192a[RealmFieldType.DATE_LIST.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f20192a[RealmFieldType.FLOAT_LIST.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f20192a[RealmFieldType.DOUBLE_LIST.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    static {
        String c = Util.m2597c();
        f20186i = c;
        f20187j = 63 - c.length();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Table(OsSharedRealm osSharedRealm, long j) {
        NativeContext nativeContext = osSharedRealm.context;
        this.f20190g = nativeContext;
        this.f20191h = osSharedRealm;
        this.f20189f = j;
        nativeContext.m2829a(this);
    }

    /* renamed from: C */
    private boolean m2667C(long j) {
        return m2637p(j).equals(OsObjectStore.m2744b(this.f20191h, m2641l()));
    }

    /* renamed from: N */
    public static void m2656N(Object obj) {
        throw new RealmPrimaryKeyConstraintException("Value already exists: " + obj);
    }

    /* renamed from: O */
    private static void m2655O() {
        throw new IllegalStateException("Cannot modify managed objects outside of a write transaction.");
    }

    /* renamed from: P */
    private void m2654P(String str) {
        if (str.length() > 63) {
            throw new IllegalArgumentException("Column names are currently limited to max 63 characters.");
        }
    }

    @Nullable
    /* renamed from: m */
    public static String m2640m(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return !str.startsWith(f20186i) ? str : str.substring(f20186i.length());
    }

    private native long nativeAddColumn(long j, int i, String str, boolean z);

    private native long nativeAddPrimitiveListColumn(long j, int i, String str, boolean z);

    private native void nativeAddSearchIndex(long j, long j2);

    private native void nativeClear(long j, boolean z);

    private native void nativeConvertColumnToNotNullable(long j, long j2, boolean z);

    private native void nativeConvertColumnToNullable(long j, long j2, boolean z);

    public static native long nativeFindFirstInt(long j, long j2, long j3);

    public static native long nativeFindFirstNull(long j, long j2);

    public static native long nativeFindFirstString(long j, long j2, String str);

    private static native long nativeFreeze(long j, long j2);

    private native long nativeGetColumnCount(long j);

    private native long nativeGetColumnKey(long j, String str);

    private native String nativeGetColumnName(long j, long j2);

    private native String[] nativeGetColumnNames(long j);

    private native int nativeGetColumnType(long j, long j2);

    private static native long nativeGetFinalizerPtr();

    private native long nativeGetLinkTarget(long j, long j2);

    private native String nativeGetName(long j);

    private native boolean nativeHasSameSchema(long j, long j2);

    private native boolean nativeHasSearchIndex(long j, long j2);

    private native boolean nativeIsColumnNullable(long j, long j2);

    private native boolean nativeIsValid(long j);

    private native void nativeMoveLastOver(long j, long j2);

    private native void nativeRemoveColumn(long j, long j2);

    private native void nativeRemoveSearchIndex(long j, long j2);

    public static native void nativeSetBoolean(long j, long j2, long j3, boolean z, boolean z2);

    public static native void nativeSetLong(long j, long j2, long j3, long j4, boolean z);

    public static native void nativeSetNull(long j, long j2, long j3, boolean z);

    public static native void nativeSetString(long j, long j2, long j3, String str, boolean z);

    public static native void nativeSetTimestamp(long j, long j2, long j3, long j4, boolean z);

    private native long nativeSize(long j);

    private native long nativeWhere(long j);

    /* renamed from: v */
    public static String m2631v(String str) {
        if (str == null) {
            return null;
        }
        return f20186i + str;
    }

    /* renamed from: A */
    public boolean m2669A(long j) {
        return nativeIsColumnNullable(this.f20189f, j);
    }

    /* renamed from: B */
    boolean m2668B() {
        OsSharedRealm osSharedRealm = this.f20191h;
        return osSharedRealm != null && !osSharedRealm.isInTransaction();
    }

    /* renamed from: D */
    public boolean m2666D() {
        long j = this.f20189f;
        return j != 0 && nativeIsValid(j);
    }

    /* renamed from: E */
    public void m2665E(long j) {
        m2650c();
        nativeMoveLastOver(this.f20189f, j);
    }

    /* renamed from: F */
    public void m2664F(long j) {
        String l = m2641l();
        String p = m2637p(j);
        String b = OsObjectStore.m2744b(this.f20191h, m2641l());
        nativeRemoveColumn(this.f20189f, j);
        if (p.equals(b)) {
            OsObjectStore.m2742d(this.f20191h, l, null);
        }
    }

    /* renamed from: G */
    public void m2663G(long j) {
        m2650c();
        nativeRemoveSearchIndex(this.f20189f, j);
    }

    /* renamed from: H */
    public void m2662H(long j, long j2, boolean z, boolean z2) {
        m2650c();
        nativeSetBoolean(this.f20189f, j, j2, z, z2);
    }

    /* renamed from: I */
    public void m2661I(long j, long j2, Date date, boolean z) {
        if (date != null) {
            m2650c();
            nativeSetTimestamp(this.f20189f, j, j2, date.getTime(), z);
            return;
        }
        throw new IllegalArgumentException("Null Date is not allowed.");
    }

    /* renamed from: J */
    public void m2660J(long j, long j2, long j3, boolean z) {
        m2650c();
        nativeSetLong(this.f20189f, j, j2, j3, z);
    }

    /* renamed from: K */
    public void m2659K(long j, long j2, boolean z) {
        m2650c();
        nativeSetNull(this.f20189f, j, j2, z);
    }

    /* renamed from: L */
    public void m2658L(long j, long j2, @Nullable String str, boolean z) {
        m2650c();
        if (str == null) {
            nativeSetNull(this.f20189f, j, j2, z);
        } else {
            nativeSetString(this.f20189f, j, j2, str, z);
        }
    }

    /* renamed from: M */
    public long m2657M() {
        return nativeSize(this.f20189f);
    }

    /* renamed from: Q */
    public TableQuery m2653Q() {
        return new TableQuery(this.f20190g, this, nativeWhere(this.f20189f));
    }

    /* renamed from: a */
    public long m2652a(RealmFieldType realmFieldType, String str, boolean z) {
        m2654P(str);
        switch (C21901.f20192a[realmFieldType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                return nativeAddColumn(this.f20189f, realmFieldType.getNativeValue(), str, z);
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return nativeAddPrimitiveListColumn(this.f20189f, realmFieldType.getNativeValue() - 128, str, z);
            default:
                throw new IllegalArgumentException("Unsupported type: " + realmFieldType);
        }
    }

    /* renamed from: b */
    public void m2651b(long j) {
        m2650c();
        nativeAddSearchIndex(this.f20189f, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m2650c() {
        if (m2668B()) {
            m2655O();
            throw null;
        }
    }

    /* renamed from: d */
    public void m2649d(boolean z) {
        m2650c();
        nativeClear(this.f20189f, z);
    }

    /* renamed from: e */
    public void m2648e(long j) {
        if (!this.f20191h.isSyncRealm()) {
            nativeConvertColumnToNotNullable(this.f20189f, j, m2667C(j));
            return;
        }
        throw new IllegalStateException("This method is only available for non-synchronized Realms");
    }

    /* renamed from: f */
    public void m2647f(long j) {
        if (!this.f20191h.isSyncRealm()) {
            nativeConvertColumnToNullable(this.f20189f, j, m2667C(j));
            return;
        }
        throw new IllegalStateException("This method is only available for non-synchronized Realms");
    }

    /* renamed from: g */
    public long m2646g(long j, long j2) {
        return nativeFindFirstInt(this.f20189f, j, j2);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20188k;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20189f;
    }

    /* renamed from: h */
    public long m2645h(long j) {
        return nativeFindFirstNull(this.f20189f, j);
    }

    /* renamed from: i */
    public long m2644i(long j, String str) {
        if (str != null) {
            return nativeFindFirstString(this.f20189f, j, str);
        }
        throw new IllegalArgumentException("null is not supported");
    }

    /* renamed from: j */
    public Table m2643j(OsSharedRealm osSharedRealm) {
        if (osSharedRealm.isFrozen()) {
            return new Table(osSharedRealm, nativeFreeze(osSharedRealm.getNativePtr(), this.f20189f));
        }
        throw new IllegalArgumentException("Frozen Realm required");
    }

    /* renamed from: k */
    public CheckedRow m2642k(long j) {
        return CheckedRow.m2838d(this.f20190g, this, j);
    }

    /* renamed from: l */
    public String m2641l() {
        String m = m2640m(m2633t());
        if (!Util.m2596d(m)) {
            return m;
        }
        throw new IllegalStateException("This object class is no longer part of the schema for the Realm file. It is therefor not possible to access the schema name.");
    }

    /* renamed from: n */
    public long m2639n() {
        return nativeGetColumnCount(this.f20189f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public native long nativeGetRowPtr(long j, long j2);

    /* renamed from: o */
    public long m2638o(String str) {
        if (str != null) {
            return nativeGetColumnKey(this.f20189f, str);
        }
        throw new IllegalArgumentException("Column name can not be null.");
    }

    /* renamed from: p */
    public String m2637p(long j) {
        return nativeGetColumnName(this.f20189f, j);
    }

    /* renamed from: q */
    public String[] m2636q() {
        return nativeGetColumnNames(this.f20189f);
    }

    /* renamed from: r */
    public RealmFieldType m2635r(long j) {
        return RealmFieldType.fromNativeValue(nativeGetColumnType(this.f20189f, j));
    }

    /* renamed from: s */
    public Table m2634s(long j) {
        return new Table(this.f20191h, nativeGetLinkTarget(this.f20189f, j));
    }

    @Nullable
    /* renamed from: t */
    public String m2633t() {
        return nativeGetName(this.f20189f);
    }

    public String toString() {
        long n = m2639n();
        String t = m2633t();
        StringBuilder sb = new StringBuilder("The Table ");
        if (t != null && !t.isEmpty()) {
            sb.append(m2633t());
            sb.append(" ");
        }
        sb.append("contains ");
        sb.append(n);
        sb.append(" columns: ");
        String[] q = m2636q();
        int length = q.length;
        boolean z = true;
        int i = 0;
        while (i < length) {
            String str = q[i];
            if (!z) {
                sb.append(", ");
            }
            sb.append(str);
            i++;
            z = false;
        }
        sb.append(".");
        sb.append(" And ");
        sb.append(m2657M());
        sb.append(" rows.");
        return sb.toString();
    }

    /* renamed from: u */
    public OsSharedRealm m2632u() {
        return this.f20191h;
    }

    /* renamed from: w */
    public UncheckedRow m2630w(long j) {
        return UncheckedRow.m2601b(this.f20190g, this, j);
    }

    /* renamed from: x */
    public UncheckedRow m2629x(long j) {
        return UncheckedRow.m2600c(this.f20190g, this, j);
    }

    /* renamed from: y */
    public boolean m2628y(Table table) {
        if (table != null) {
            return nativeHasSameSchema(this.f20189f, table.f20189f);
        }
        throw new IllegalArgumentException("The argument cannot be null");
    }

    /* renamed from: z */
    public boolean m2627z(long j) {
        return nativeHasSearchIndex(this.f20189f, j);
    }
}
