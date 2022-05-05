package io.realm.internal;

import io.realm.RealmFieldType;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObjectSchemaInfo.class */
public class OsObjectSchemaInfo implements NativeObject {

    /* renamed from: g */
    private static final long f20125g = nativeGetFinalizerPtr();

    /* renamed from: f */
    private long f20126f;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObjectSchemaInfo$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private final String f20127a;

        /* renamed from: b */
        private final long[] f20128b;

        /* renamed from: d */
        private final long[] f20130d;

        /* renamed from: c */
        private int f20129c = 0;

        /* renamed from: e */
        private int f20131e = 0;

        public Builder(String str, int i, int i2) {
            this.f20127a = str;
            this.f20128b = new long[i];
            this.f20130d = new long[i2];
        }

        /* renamed from: a */
        public Builder m2747a(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
            long nativeCreatePersistedProperty = Property.nativeCreatePersistedProperty(str, Property.m2693a(realmFieldType, z3), z, z2);
            long[] jArr = this.f20128b;
            int i = this.f20129c;
            jArr[i] = nativeCreatePersistedProperty;
            this.f20129c = i + 1;
            return this;
        }

        /* renamed from: b */
        public OsObjectSchemaInfo m2746b() {
            if (this.f20129c == -1 || this.f20131e == -1) {
                throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
            }
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo(this.f20127a);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.f20126f, this.f20128b, this.f20130d);
            this.f20129c = -1;
            this.f20131e = -1;
            return osObjectSchemaInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OsObjectSchemaInfo(long j) {
        this.f20126f = j;
        NativeContext.f20097c.m2829a(this);
    }

    private OsObjectSchemaInfo(String str) {
        this(nativeCreateRealmObjectSchema(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeAddProperties(long j, long[] jArr, long[] jArr2);

    private static native long nativeCreateRealmObjectSchema(String str);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetPrimaryKeyProperty(long j);

    private static native long nativeGetProperty(long j, String str);

    @Nullable
    /* renamed from: c */
    public Property m2749c() {
        return nativeGetPrimaryKeyProperty(this.f20126f) == 0 ? null : new Property(nativeGetPrimaryKeyProperty(this.f20126f));
    }

    /* renamed from: d */
    public Property m2748d(String str) {
        return new Property(nativeGetProperty(this.f20126f, str));
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20125g;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20126f;
    }
}
