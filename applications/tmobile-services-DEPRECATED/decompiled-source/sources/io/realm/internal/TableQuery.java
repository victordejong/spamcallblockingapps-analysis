package io.realm.internal;

import io.realm.Case;
import java.util.Date;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/TableQuery.class */
public class TableQuery implements NativeObject {

    /* renamed from: i */
    private static final long f20193i = nativeGetFinalizerPtr();

    /* renamed from: f */
    private final Table f20194f;

    /* renamed from: g */
    private final long f20195g;

    /* renamed from: h */
    private boolean f20196h = true;

    public TableQuery(NativeContext nativeContext, Table table, long j) {
        this.f20194f = table;
        this.f20195g = j;
        nativeContext.m2829a(this);
    }

    private native void nativeAlwaysFalse(long j);

    private native void nativeContains(long j, long[] jArr, long[] jArr2, String str, boolean z);

    private native void nativeEndGroup(long j);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, double d);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, float f);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, @Nullable String str, boolean z);

    private native void nativeEqual(long j, long[] jArr, long[] jArr2, boolean z);

    private native void nativeEqualTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native long nativeFind(long j);

    private static native long nativeGetFinalizerPtr();

    private native void nativeGreater(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeGreaterEqualTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeGreaterTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native void nativeGroup(long j);

    private native void nativeIsNull(long j, long[] jArr, long[] jArr2);

    private native void nativeLessTimestamp(long j, long[] jArr, long[] jArr2, long j2);

    private native Double nativeMaximumDouble(long j, long j2);

    private native Float nativeMaximumFloat(long j, long j2);

    private native Long nativeMaximumInt(long j, long j2);

    private native void nativeNotEqual(long j, long[] jArr, long[] jArr2, @Nullable String str, boolean z);

    private native void nativeOr(long j);

    private native String nativeValidateQuery(long j);

    /* renamed from: a */
    public void m2626a() {
        nativeAlwaysFalse(this.f20195g);
    }

    /* renamed from: b */
    public TableQuery m2625b(long[] jArr, long[] jArr2, String str, Case r12) {
        nativeContains(this.f20195g, jArr, jArr2, str, r12.getValue());
        this.f20196h = false;
        return this;
    }

    /* renamed from: c */
    public TableQuery m2624c() {
        nativeEndGroup(this.f20195g);
        this.f20196h = false;
        return this;
    }

    /* renamed from: d */
    public TableQuery m2623d(long[] jArr, long[] jArr2, double d) {
        nativeEqual(this.f20195g, jArr, jArr2, d);
        this.f20196h = false;
        return this;
    }

    /* renamed from: e */
    public TableQuery m2622e(long[] jArr, long[] jArr2, float f) {
        nativeEqual(this.f20195g, jArr, jArr2, f);
        this.f20196h = false;
        return this;
    }

    /* renamed from: f */
    public TableQuery m2621f(long[] jArr, long[] jArr2, long j) {
        nativeEqual(this.f20195g, jArr, jArr2, j);
        this.f20196h = false;
        return this;
    }

    /* renamed from: g */
    public TableQuery m2620g(long[] jArr, long[] jArr2, String str) {
        nativeEqual(this.f20195g, jArr, jArr2, str, true);
        this.f20196h = false;
        return this;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20193i;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20195g;
    }

    /* renamed from: h */
    public TableQuery m2619h(long[] jArr, long[] jArr2, @Nullable String str, Case r12) {
        nativeEqual(this.f20195g, jArr, jArr2, str, r12.getValue());
        this.f20196h = false;
        return this;
    }

    /* renamed from: i */
    public TableQuery m2618i(long[] jArr, long[] jArr2, @Nullable Date date) {
        if (date == null) {
            nativeIsNull(this.f20195g, jArr, jArr2);
        } else {
            nativeEqualTimestamp(this.f20195g, jArr, jArr2, date.getTime());
        }
        this.f20196h = false;
        return this;
    }

    /* renamed from: j */
    public TableQuery m2617j(long[] jArr, long[] jArr2, boolean z) {
        nativeEqual(this.f20195g, jArr, jArr2, z);
        this.f20196h = false;
        return this;
    }

    /* renamed from: k */
    public long m2616k() {
        m2603x();
        return nativeFind(this.f20195g);
    }

    /* renamed from: l */
    public Table m2615l() {
        return this.f20194f;
    }

    /* renamed from: m */
    public TableQuery m2614m(long[] jArr, long[] jArr2, long j) {
        nativeGreater(this.f20195g, jArr, jArr2, j);
        this.f20196h = false;
        return this;
    }

    /* renamed from: n */
    public TableQuery m2613n(long[] jArr, long[] jArr2, Date date) {
        if (date != null) {
            nativeGreaterTimestamp(this.f20195g, jArr, jArr2, date.getTime());
            this.f20196h = false;
            return this;
        }
        throw new IllegalArgumentException("Date value in query criteria must not be null.");
    }

    /* renamed from: o */
    public TableQuery m2612o(long[] jArr, long[] jArr2, Date date) {
        if (date != null) {
            nativeGreaterEqualTimestamp(this.f20195g, jArr, jArr2, date.getTime());
            this.f20196h = false;
            return this;
        }
        throw new IllegalArgumentException("Date value in query criteria must not be null.");
    }

    /* renamed from: p */
    public TableQuery m2611p() {
        nativeGroup(this.f20195g);
        this.f20196h = false;
        return this;
    }

    /* renamed from: q */
    public TableQuery m2610q(long[] jArr, long[] jArr2) {
        nativeIsNull(this.f20195g, jArr, jArr2);
        this.f20196h = false;
        return this;
    }

    /* renamed from: r */
    public TableQuery m2609r(long[] jArr, long[] jArr2, Date date) {
        if (date != null) {
            nativeLessTimestamp(this.f20195g, jArr, jArr2, date.getTime());
            this.f20196h = false;
            return this;
        }
        throw new IllegalArgumentException("Date value in query criteria must not be null.");
    }

    /* renamed from: s */
    public Double m2608s(long j) {
        m2603x();
        return nativeMaximumDouble(this.f20195g, j);
    }

    /* renamed from: t */
    public Float m2607t(long j) {
        m2603x();
        return nativeMaximumFloat(this.f20195g, j);
    }

    /* renamed from: u */
    public Long m2606u(long j) {
        m2603x();
        return nativeMaximumInt(this.f20195g, j);
    }

    /* renamed from: v */
    public TableQuery m2605v(long[] jArr, long[] jArr2, @Nullable String str, Case r12) {
        nativeNotEqual(this.f20195g, jArr, jArr2, str, r12.getValue());
        this.f20196h = false;
        return this;
    }

    /* renamed from: w */
    public TableQuery m2604w() {
        nativeOr(this.f20195g);
        this.f20196h = false;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void m2603x() {
        if (!this.f20196h) {
            String nativeValidateQuery = nativeValidateQuery(this.f20195g);
            if (nativeValidateQuery.equals("")) {
                this.f20196h = true;
                return;
            }
            throw new UnsupportedOperationException(nativeValidateQuery);
        }
    }
}
