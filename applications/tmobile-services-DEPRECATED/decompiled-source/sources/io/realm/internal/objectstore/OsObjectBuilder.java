package io.realm.internal.objectstore;

import io.realm.ImportFlag;
import io.realm.MutableRealmInteger;
import io.realm.RealmModel;
import io.realm.internal.NativeContext;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import java.io.Closeable;
import java.util.Date;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder.class */
public class OsObjectBuilder implements Closeable {

    /* renamed from: f */
    private final Table f20238f;

    /* renamed from: g */
    private final long f20239g;

    /* renamed from: h */
    private final long f20240h = nativeCreateBuilder();

    /* renamed from: i */
    private final long f20241i;

    /* renamed from: j */
    private final NativeContext f20242j;

    /* renamed from: k */
    private final boolean f20243k;

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$1.class */
    class C21921 implements ItemCallback<RealmModel> {
        C21921() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$10 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$10.class */
    class C219310 implements ItemCallback<Date> {
        C219310() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$11 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$11.class */
    class C219411 implements ItemCallback<byte[]> {
        C219411() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$12 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$12.class */
    class C219512 implements ItemCallback<MutableRealmInteger> {
        C219512() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$2 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$2.class */
    class C21962 implements ItemCallback<String> {
        C21962() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$3 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$3.class */
    class C21973 implements ItemCallback<Byte> {
        C21973() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$4 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$4.class */
    class C21984 implements ItemCallback<Short> {
        C21984() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$5 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$5.class */
    class C21995 implements ItemCallback<Integer> {
        C21995() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$6 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$6.class */
    class C22006 implements ItemCallback<Long> {
        C22006() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$7 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$7.class */
    class C22017 implements ItemCallback<Boolean> {
        C22017() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$8 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$8.class */
    class C22028 implements ItemCallback<Float> {
        C22028() {
        }
    }

    /* renamed from: io.realm.internal.objectstore.OsObjectBuilder$9 */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$9.class */
    class C22039 implements ItemCallback<Double> {
        C22039() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/objectstore/OsObjectBuilder$ItemCallback.class */
    private interface ItemCallback<T> {
    }

    public OsObjectBuilder(Table table, Set<ImportFlag> set) {
        OsSharedRealm u = table.m2632u();
        this.f20239g = u.getNativePtr();
        this.f20238f = table;
        table.m2636q();
        this.f20241i = table.getNativePtr();
        this.f20242j = u.context;
        this.f20243k = set.contains(ImportFlag.CHECK_SAME_VALUES_BEFORE_SET);
    }

    private static native void nativeAddBoolean(long j, long j2, boolean z);

    private static native void nativeAddDate(long j, long j2, long j3);

    private static native void nativeAddInteger(long j, long j2, long j3);

    private static native void nativeAddNull(long j, long j2);

    private static native void nativeAddString(long j, long j2, String str);

    private static native long nativeCreateBuilder();

    private static native long nativeCreateOrUpdate(long j, long j2, long j3, boolean z, boolean z2);

    private static native void nativeDestroyBuilder(long j);

    /* renamed from: a */
    public void m2554a(long j, Boolean bool) {
        if (bool == null) {
            nativeAddNull(this.f20240h, j);
        } else {
            nativeAddBoolean(this.f20240h, j, bool.booleanValue());
        }
    }

    /* renamed from: b */
    public void m2553b(long j, Date date) {
        if (date == null) {
            nativeAddNull(this.f20240h, j);
        } else {
            nativeAddDate(this.f20240h, j, date.getTime());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        nativeDestroyBuilder(this.f20240h);
    }

    /* renamed from: d */
    public void m2552d(long j, Integer num) {
        if (num == null) {
            nativeAddNull(this.f20240h, j);
        } else {
            nativeAddInteger(this.f20240h, j, num.intValue());
        }
    }

    /* renamed from: e */
    public void m2551e(long j, Long l) {
        if (l == null) {
            nativeAddNull(this.f20240h, j);
        } else {
            nativeAddInteger(this.f20240h, j, l.longValue());
        }
    }

    /* renamed from: h */
    public void m2550h(long j, String str) {
        if (str == null) {
            nativeAddNull(this.f20240h, j);
        } else {
            nativeAddString(this.f20240h, j, str);
        }
    }

    /* renamed from: i */
    public UncheckedRow m2549i() {
        try {
            return new UncheckedRow(this.f20242j, this.f20238f, nativeCreateOrUpdate(this.f20239g, this.f20241i, this.f20240h, false, false));
        } finally {
            close();
        }
    }

    /* renamed from: k */
    public void m2548k() {
        try {
            nativeCreateOrUpdate(this.f20239g, this.f20241i, this.f20240h, true, this.f20243k);
        } finally {
            close();
        }
    }
}
