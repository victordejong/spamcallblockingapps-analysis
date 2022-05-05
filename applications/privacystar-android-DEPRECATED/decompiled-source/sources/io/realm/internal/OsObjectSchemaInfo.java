package io.realm.internal;

import io.realm.RealmFieldType;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObjectSchemaInfo.class */
public class OsObjectSchemaInfo implements NativeObject {
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private long nativePtr;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/OsObjectSchemaInfo$Builder.class */
    public static class Builder {
        private final String className;
        private final long[] computedPropertyPtrArray;
        private final long[] persistedPropertyPtrArray;
        private int persistedPropertyPtrCurPos = 0;
        private int computedPropertyPtrCurPos = 0;

        public Builder(String str, int i, int i2) {
            this.className = str;
            this.persistedPropertyPtrArray = new long[i];
            this.computedPropertyPtrArray = new long[i2];
        }

        public Builder addComputedLinkProperty(String str, String str2, String str3) {
            this.computedPropertyPtrArray[this.computedPropertyPtrCurPos] = Property.nativeCreateComputedLinkProperty(str, str2, str3);
            this.computedPropertyPtrCurPos++;
            return this;
        }

        public Builder addPersistedLinkProperty(String str, RealmFieldType realmFieldType, String str2) {
            this.persistedPropertyPtrArray[this.persistedPropertyPtrCurPos] = Property.nativeCreatePersistedLinkProperty(str, Property.convertFromRealmFieldType(realmFieldType, false), str2);
            this.persistedPropertyPtrCurPos++;
            return this;
        }

        public Builder addPersistedProperty(String str, RealmFieldType realmFieldType, boolean z, boolean z2, boolean z3) {
            this.persistedPropertyPtrArray[this.persistedPropertyPtrCurPos] = Property.nativeCreatePersistedProperty(str, Property.convertFromRealmFieldType(realmFieldType, z3), z, z2);
            this.persistedPropertyPtrCurPos++;
            return this;
        }

        public Builder addPersistedValueListProperty(String str, RealmFieldType realmFieldType, boolean z) {
            this.persistedPropertyPtrArray[this.persistedPropertyPtrCurPos] = Property.nativeCreatePersistedProperty(str, Property.convertFromRealmFieldType(realmFieldType, z), false, false);
            this.persistedPropertyPtrCurPos++;
            return this;
        }

        public OsObjectSchemaInfo build() {
            if (this.persistedPropertyPtrCurPos == -1 || this.computedPropertyPtrCurPos == -1) {
                throw new IllegalStateException("'OsObjectSchemaInfo.build()' has been called before on this object.");
            }
            OsObjectSchemaInfo osObjectSchemaInfo = new OsObjectSchemaInfo(this.className);
            OsObjectSchemaInfo.nativeAddProperties(osObjectSchemaInfo.nativePtr, this.persistedPropertyPtrArray, this.computedPropertyPtrArray);
            this.persistedPropertyPtrCurPos = -1;
            this.computedPropertyPtrCurPos = -1;
            return osObjectSchemaInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OsObjectSchemaInfo(long j) {
        this.nativePtr = j;
        NativeContext.dummyContext.addReference(this);
    }

    private OsObjectSchemaInfo(String str) {
        this(nativeCreateRealmObjectSchema(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeAddProperties(long j, long[] jArr, long[] jArr2);

    private static native long nativeCreateRealmObjectSchema(String str);

    private static native String nativeGetClassName(long j);

    private static native long nativeGetFinalizerPtr();

    private static native long nativeGetMaxColumnIndex(long j);

    private static native long nativeGetPrimaryKeyProperty(long j);

    private static native long nativeGetProperty(long j, String str);

    public String getClassName() {
        return nativeGetClassName(this.nativePtr);
    }

    public long getMaxColumnIndex() {
        return nativeGetMaxColumnIndex(this.nativePtr);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    @Nullable
    public Property getPrimaryKeyProperty() {
        return nativeGetPrimaryKeyProperty(this.nativePtr) == 0 ? null : new Property(nativeGetPrimaryKeyProperty(this.nativePtr));
    }

    public Property getProperty(String str) {
        return new Property(nativeGetProperty(this.nativePtr, str));
    }
}
