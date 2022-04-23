package io.realm.internal;

import io.realm.Case;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/TableQuery.class */
public class TableQuery implements NativeObject {
    private static final String DATE_NULL_ERROR_MESSAGE = "Date value in query criteria must not be null.";
    private static final boolean DEBUG = false;
    private static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    private final NativeContext context;
    private final long nativePtr;
    private boolean queryValidated = true;
    private final Table table;

    public TableQuery(NativeContext nativeContext, Table table, long j) {
        this.context = nativeContext;
        this.table = table;
        this.nativePtr = j;
        nativeContext.addReference(this);
    }

    private native void nativeAlwaysFalse(long j);

    private native void nativeAlwaysTrue(long j);

    private native double nativeAverageDouble(long j, long j2, long j3, long j4, long j5);

    private native double nativeAverageFloat(long j, long j2, long j3, long j4, long j5);

    private native double nativeAverageInt(long j, long j2, long j3, long j4, long j5);

    private native void nativeBeginsWith(long j, long[] jArr, long[] jArr2, String str, boolean z);

    private native void nativeBetween(long j, long[] jArr, double d, double d2);

    private native void nativeBetween(long j, long[] jArr, float f, float f2);

    private native void nativeBetween(long j, long[] jArr, long j2, long j3);

    private native void nativeBetweenTimestamp(long j, long[] jArr, long j2, long j3);

    private native void nativeContains(long j, long[] jArr, long[] jArr2, String str, boolean z);

    private native long nativeCount(long j, long j2, long j3, long j4);

    private native void nativeEndGroup(long j);

    private native void nativeEndsWith(long j, long[] jArr, long[] jArr2, String str, boolean z);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, double d);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, float f);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, @Nullable String str, boolean z);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, boolean z);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, byte[] bArr);

    private native void nativeEqualTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native long nativeFind(long j, long j2);

    private native long nativeFindAll(long j, long j2, long j3, long j4);

    private static native long nativeGetFinalizerPtr();

    private native void nativeGreater(long j, long[] jArr, long[] jArr2, double d);

    private native void nativeGreater(long j, long[] jArr, long[] jArr2, float f);

    private native void nativeGreater(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeGreaterEqual(long j, long[] jArr, long[] jArr2, double d);

    private native void nativeGreaterEqual(long j, long[] jArr, long[] jArr2, float f);

    private native void nativeGreaterEqual(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeGreaterEqualTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeGreaterTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeGroup(long j);

    private native void nativeIsEmpty(long j, long[] jArr, long[] jArr2);

    private native void nativeIsNotEmpty(long j, long[] jArr, long[] jArr2);

    private native void nativeIsNotNull(long j, long[] jArr, long[] jArr2);

    private native void nativeIsNull(long j, long[] jArr, long[] jArr2);

    private native void nativeLess(long j, long[] jArr, long[] jArr2, double d);

    private native void nativeLess(long j, long[] jArr, long[] jArr2, float f);

    private native void nativeLess(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeLessEqual(long j, long[] jArr, long[] jArr2, double d);

    private native void nativeLessEqual(long j, long[] jArr, long[] jArr2, float f);

    private native void nativeLessEqual(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeLessEqualTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeLessTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeLike(long j, long[] jArr, long[] jArr2, String str, boolean z);

    private native Double nativeMaximumDouble(long j, long j2, long j3, long j4, long j5);

    private native Float nativeMaximumFloat(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMaximumInt(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMaximumTimestamp(long j, long j2, long j3, long j4, long j5);

    private native Double nativeMinimumDouble(long j, long j2, long j3, long j4, long j5);

    private native Float nativeMinimumFloat(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMinimumInt(long j, long j2, long j3, long j4, long j5);

    private native Long nativeMinimumTimestamp(long j, long j2, long j3, long j4, long j5);

    private native void nativeNot(long j);

    private native void nativeNotEqual(long j, long[] jArr, long[] jArr2, double d);

    private native void nativeNotEqual(long j, long[] jArr, long[] jArr2, float f);

    private native void nativeNotEqual(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeNotEqual(long j, long[] jArr, long[] jArr2, @Nullable String str, boolean z);

    private native void nativeNotEqual(long j, long[] jArr, long[] jArr2, byte[] bArr);

    private native void nativeNotEqualTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeOr(long j);

    private native long nativeRemove(long j);

    private native double nativeSumDouble(long j, long j2, long j3, long j4, long j5);

    private native double nativeSumFloat(long j, long j2, long j3, long j4, long j5);

    private native long nativeSumInt(long j, long j2, long j3, long j4, long j5);

    private native String nativeValidateQuery(long j);

    private void throwImmutable() {
        throw new IllegalStateException("Mutable method call during read transaction.");
    }

    public void alwaysFalse() {
        nativeAlwaysFalse(this.nativePtr);
    }

    public void alwaysTrue() {
        nativeAlwaysTrue(this.nativePtr);
    }

    public double averageDouble(long j) {
        validateQuery();
        return nativeAverageDouble(this.nativePtr, j, 0L, -1L, -1L);
    }

    public double averageDouble(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeAverageDouble(this.nativePtr, j, j2, j3, j4);
    }

    public double averageFloat(long j) {
        validateQuery();
        return nativeAverageFloat(this.nativePtr, j, 0L, -1L, -1L);
    }

    public double averageFloat(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeAverageFloat(this.nativePtr, j, j2, j3, j4);
    }

    public double averageInt(long j) {
        validateQuery();
        return nativeAverageInt(this.nativePtr, j, 0L, -1L, -1L);
    }

    public double averageInt(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeAverageInt(this.nativePtr, j, j2, j3, j4);
    }

    public TableQuery beginsWith(long[] jArr, long[] jArr2, String str) {
        nativeBeginsWith(this.nativePtr, jArr, jArr2, str, true);
        this.queryValidated = false;
        return this;
    }

    public TableQuery beginsWith(long[] jArr, long[] jArr2, String str, Case r12) {
        nativeBeginsWith(this.nativePtr, jArr, jArr2, str, r12.getValue());
        this.queryValidated = false;
        return this;
    }

    public TableQuery between(long[] jArr, double d, double d2) {
        nativeBetween(this.nativePtr, jArr, d, d2);
        this.queryValidated = false;
        return this;
    }

    public TableQuery between(long[] jArr, float f, float f2) {
        nativeBetween(this.nativePtr, jArr, f, f2);
        this.queryValidated = false;
        return this;
    }

    public TableQuery between(long[] jArr, long j, long j2) {
        nativeBetween(this.nativePtr, jArr, j, j2);
        this.queryValidated = false;
        return this;
    }

    public TableQuery between(long[] jArr, Date date, Date date2) {
        if (date == null || date2 == null) {
            throw new IllegalArgumentException("Date values in query criteria must not be null.");
        }
        nativeBetweenTimestamp(this.nativePtr, jArr, date.getTime(), date2.getTime());
        this.queryValidated = false;
        return this;
    }

    public TableQuery contains(long[] jArr, long[] jArr2, String str) {
        nativeContains(this.nativePtr, jArr, jArr2, str, true);
        this.queryValidated = false;
        return this;
    }

    public TableQuery contains(long[] jArr, long[] jArr2, String str, Case r12) {
        nativeContains(this.nativePtr, jArr, jArr2, str, r12.getValue());
        this.queryValidated = false;
        return this;
    }

    @Deprecated
    public long count() {
        validateQuery();
        return nativeCount(this.nativePtr, 0L, -1L, -1L);
    }

    public long count(long j, long j2, long j3) {
        validateQuery();
        return nativeCount(this.nativePtr, j, j2, j3);
    }

    public TableQuery endGroup() {
        nativeEndGroup(this.nativePtr);
        this.queryValidated = false;
        return this;
    }

    public TableQuery endsWith(long[] jArr, long[] jArr2, String str) {
        nativeEndsWith(this.nativePtr, jArr, jArr2, str, true);
        this.queryValidated = false;
        return this;
    }

    public TableQuery endsWith(long[] jArr, long[] jArr2, String str, Case r12) {
        nativeEndsWith(this.nativePtr, jArr, jArr2, str, r12.getValue());
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, double d) {
        nativeEqual(this.nativePtr, jArr, jArr2, d);
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, float f) {
        nativeEqual(this.nativePtr, jArr, jArr2, f);
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, long j) {
        nativeEqual(this.nativePtr, jArr, jArr2, j);
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, String str) {
        nativeEqual(this.nativePtr, jArr, jArr2, str, true);
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, @Nullable String str, Case r12) {
        nativeEqual(this.nativePtr, jArr, jArr2, str, r12.getValue());
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, @Nullable Date date) {
        if (date == null) {
            nativeIsNull(this.nativePtr, jArr, jArr2);
        } else {
            nativeEqualTimestamp(this.nativePtr, jArr, jArr2, date.getTime());
        }
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, boolean z) {
        nativeEqual(this.nativePtr, jArr, jArr2, z);
        this.queryValidated = false;
        return this;
    }

    public TableQuery equalTo(long[] jArr, long[] jArr2, byte[] bArr) {
        nativeEqual(this.nativePtr, jArr, jArr2, bArr);
        this.queryValidated = false;
        return this;
    }

    public long find() {
        validateQuery();
        return nativeFind(this.nativePtr, 0L);
    }

    @Deprecated
    public long find(long j) {
        validateQuery();
        return nativeFind(this.nativePtr, j);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public Table getTable() {
        return this.table;
    }

    public TableQuery greaterThan(long[] jArr, long[] jArr2, double d) {
        nativeGreater(this.nativePtr, jArr, jArr2, d);
        this.queryValidated = false;
        return this;
    }

    public TableQuery greaterThan(long[] jArr, long[] jArr2, float f) {
        nativeGreater(this.nativePtr, jArr, jArr2, f);
        this.queryValidated = false;
        return this;
    }

    public TableQuery greaterThan(long[] jArr, long[] jArr2, long j) {
        nativeGreater(this.nativePtr, jArr, jArr2, j);
        this.queryValidated = false;
        return this;
    }

    public TableQuery greaterThan(long[] jArr, long[] jArr2, Date date) {
        if (date == null) {
            throw new IllegalArgumentException(DATE_NULL_ERROR_MESSAGE);
        }
        nativeGreaterTimestamp(this.nativePtr, jArr, jArr2, date.getTime());
        this.queryValidated = false;
        return this;
    }

    public TableQuery greaterThanOrEqual(long[] jArr, long[] jArr2, double d) {
        nativeGreaterEqual(this.nativePtr, jArr, jArr2, d);
        this.queryValidated = false;
        return this;
    }

    public TableQuery greaterThanOrEqual(long[] jArr, long[] jArr2, float f) {
        nativeGreaterEqual(this.nativePtr, jArr, jArr2, f);
        this.queryValidated = false;
        return this;
    }

    public TableQuery greaterThanOrEqual(long[] jArr, long[] jArr2, long j) {
        nativeGreaterEqual(this.nativePtr, jArr, jArr2, j);
        this.queryValidated = false;
        return this;
    }

    public TableQuery greaterThanOrEqual(long[] jArr, long[] jArr2, Date date) {
        if (date == null) {
            throw new IllegalArgumentException(DATE_NULL_ERROR_MESSAGE);
        }
        nativeGreaterEqualTimestamp(this.nativePtr, jArr, jArr2, date.getTime());
        this.queryValidated = false;
        return this;
    }

    public TableQuery group() {
        nativeGroup(this.nativePtr);
        this.queryValidated = false;
        return this;
    }

    public TableQuery isEmpty(long[] jArr, long[] jArr2) {
        nativeIsEmpty(this.nativePtr, jArr, jArr2);
        this.queryValidated = false;
        return this;
    }

    public TableQuery isNotEmpty(long[] jArr, long[] jArr2) {
        nativeIsNotEmpty(this.nativePtr, jArr, jArr2);
        this.queryValidated = false;
        return this;
    }

    public TableQuery isNotNull(long[] jArr, long[] jArr2) {
        nativeIsNotNull(this.nativePtr, jArr, jArr2);
        this.queryValidated = false;
        return this;
    }

    public TableQuery isNull(long[] jArr, long[] jArr2) {
        nativeIsNull(this.nativePtr, jArr, jArr2);
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThan(long[] jArr, long[] jArr2, double d) {
        nativeLess(this.nativePtr, jArr, jArr2, d);
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThan(long[] jArr, long[] jArr2, float f) {
        nativeLess(this.nativePtr, jArr, jArr2, f);
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThan(long[] jArr, long[] jArr2, long j) {
        nativeLess(this.nativePtr, jArr, jArr2, j);
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThan(long[] jArr, long[] jArr2, Date date) {
        if (date == null) {
            throw new IllegalArgumentException(DATE_NULL_ERROR_MESSAGE);
        }
        nativeLessTimestamp(this.nativePtr, jArr, jArr2, date.getTime());
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThanOrEqual(long[] jArr, long[] jArr2, double d) {
        nativeLessEqual(this.nativePtr, jArr, jArr2, d);
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThanOrEqual(long[] jArr, long[] jArr2, float f) {
        nativeLessEqual(this.nativePtr, jArr, jArr2, f);
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThanOrEqual(long[] jArr, long[] jArr2, long j) {
        nativeLessEqual(this.nativePtr, jArr, jArr2, j);
        this.queryValidated = false;
        return this;
    }

    public TableQuery lessThanOrEqual(long[] jArr, long[] jArr2, Date date) {
        if (date == null) {
            throw new IllegalArgumentException(DATE_NULL_ERROR_MESSAGE);
        }
        nativeLessEqualTimestamp(this.nativePtr, jArr, jArr2, date.getTime());
        this.queryValidated = false;
        return this;
    }

    public TableQuery like(long[] jArr, long[] jArr2, String str) {
        nativeLike(this.nativePtr, jArr, jArr2, str, true);
        this.queryValidated = false;
        return this;
    }

    public TableQuery like(long[] jArr, long[] jArr2, String str, Case r12) {
        nativeLike(this.nativePtr, jArr, jArr2, str, r12.getValue());
        this.queryValidated = false;
        return this;
    }

    public Date maximumDate(long j) {
        validateQuery();
        Long nativeMaximumTimestamp = nativeMaximumTimestamp(this.nativePtr, j, 0L, -1L, -1L);
        if (nativeMaximumTimestamp != null) {
            return new Date(nativeMaximumTimestamp.longValue());
        }
        return null;
    }

    public Date maximumDate(long j, long j2, long j3, long j4) {
        validateQuery();
        Long nativeMaximumTimestamp = nativeMaximumTimestamp(this.nativePtr, j, j2, j3, j4);
        if (nativeMaximumTimestamp != null) {
            return new Date(nativeMaximumTimestamp.longValue());
        }
        return null;
    }

    public Double maximumDouble(long j) {
        validateQuery();
        return nativeMaximumDouble(this.nativePtr, j, 0L, -1L, -1L);
    }

    public Double maximumDouble(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeMaximumDouble(this.nativePtr, j, j2, j3, j4);
    }

    public Float maximumFloat(long j) {
        validateQuery();
        return nativeMaximumFloat(this.nativePtr, j, 0L, -1L, -1L);
    }

    public Float maximumFloat(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeMaximumFloat(this.nativePtr, j, j2, j3, j4);
    }

    public Long maximumInt(long j) {
        validateQuery();
        return nativeMaximumInt(this.nativePtr, j, 0L, -1L, -1L);
    }

    public Long maximumInt(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeMaximumInt(this.nativePtr, j, j2, j3, j4);
    }

    public Date minimumDate(long j) {
        validateQuery();
        Long nativeMinimumTimestamp = nativeMinimumTimestamp(this.nativePtr, j, 0L, -1L, -1L);
        if (nativeMinimumTimestamp != null) {
            return new Date(nativeMinimumTimestamp.longValue());
        }
        return null;
    }

    public Date minimumDate(long j, long j2, long j3, long j4) {
        validateQuery();
        Long nativeMinimumTimestamp = nativeMinimumTimestamp(this.nativePtr, j, j2, j3, j4);
        if (nativeMinimumTimestamp != null) {
            return new Date(nativeMinimumTimestamp.longValue() * 1000);
        }
        return null;
    }

    public Double minimumDouble(long j) {
        validateQuery();
        return nativeMinimumDouble(this.nativePtr, j, 0L, -1L, -1L);
    }

    public Double minimumDouble(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeMinimumDouble(this.nativePtr, j, j2, j3, j4);
    }

    public Float minimumFloat(long j) {
        validateQuery();
        return nativeMinimumFloat(this.nativePtr, j, 0L, -1L, -1L);
    }

    public Float minimumFloat(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeMinimumFloat(this.nativePtr, j, j2, j3, j4);
    }

    public Long minimumInt(long j) {
        validateQuery();
        return nativeMinimumInt(this.nativePtr, j, 0L, -1L, -1L);
    }

    public Long minimumInt(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeMinimumInt(this.nativePtr, j, j2, j3, j4);
    }

    public TableQuery not() {
        nativeNot(this.nativePtr);
        this.queryValidated = false;
        return this;
    }

    public TableQuery notEqualTo(long[] jArr, long[] jArr2, double d) {
        nativeNotEqual(this.nativePtr, jArr, jArr2, d);
        this.queryValidated = false;
        return this;
    }

    public TableQuery notEqualTo(long[] jArr, long[] jArr2, float f) {
        nativeNotEqual(this.nativePtr, jArr, jArr2, f);
        this.queryValidated = false;
        return this;
    }

    public TableQuery notEqualTo(long[] jArr, long[] jArr2, long j) {
        nativeNotEqual(this.nativePtr, jArr, jArr2, j);
        this.queryValidated = false;
        return this;
    }

    public TableQuery notEqualTo(long[] jArr, long[] jArr2, @Nullable String str) {
        nativeNotEqual(this.nativePtr, jArr, jArr2, str, true);
        this.queryValidated = false;
        return this;
    }

    public TableQuery notEqualTo(long[] jArr, long[] jArr2, @Nullable String str, Case r12) {
        nativeNotEqual(this.nativePtr, jArr, jArr2, str, r12.getValue());
        this.queryValidated = false;
        return this;
    }

    public TableQuery notEqualTo(long[] jArr, long[] jArr2, Date date) {
        if (date == null) {
            throw new IllegalArgumentException(DATE_NULL_ERROR_MESSAGE);
        }
        nativeNotEqualTimestamp(this.nativePtr, jArr, jArr2, date.getTime());
        this.queryValidated = false;
        return this;
    }

    public TableQuery notEqualTo(long[] jArr, long[] jArr2, byte[] bArr) {
        nativeNotEqual(this.nativePtr, jArr, jArr2, bArr);
        this.queryValidated = false;
        return this;
    }

    /* renamed from: or */
    public TableQuery m259or() {
        nativeOr(this.nativePtr);
        this.queryValidated = false;
        return this;
    }

    public long remove() {
        validateQuery();
        if (this.table.isImmutable()) {
            throwImmutable();
        }
        return nativeRemove(this.nativePtr);
    }

    public double sumDouble(long j) {
        validateQuery();
        return nativeSumDouble(this.nativePtr, j, 0L, -1L, -1L);
    }

    public double sumDouble(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeSumDouble(this.nativePtr, j, j2, j3, j4);
    }

    public double sumFloat(long j) {
        validateQuery();
        return nativeSumFloat(this.nativePtr, j, 0L, -1L, -1L);
    }

    public double sumFloat(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeSumFloat(this.nativePtr, j, j2, j3, j4);
    }

    public long sumInt(long j) {
        validateQuery();
        return nativeSumInt(this.nativePtr, j, 0L, -1L, -1L);
    }

    public long sumInt(long j, long j2, long j3, long j4) {
        validateQuery();
        return nativeSumInt(this.nativePtr, j, j2, j3, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void validateQuery() {
        if (!this.queryValidated) {
            String nativeValidateQuery = nativeValidateQuery(this.nativePtr);
            if (nativeValidateQuery.equals("")) {
                this.queryValidated = true;
                return;
            }
            throw new UnsupportedOperationException(nativeValidateQuery);
        }
    }
}
