package com.huawei.hms.common.internal;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/Asserter.class */
public final class Asserter {
    private Asserter() {
        throw new AssertionError("Cannot use constructor to make a new instance");
    }

    public static void checkNotNull(Object obj) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("checked object is null");
    }

    public static void checkNotNull(Object obj, Object obj2) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(obj2.toString());
    }

    public static void checkNull(Object obj) {
        if (obj == null) {
            return;
        }
        throw new IllegalArgumentException(obj.toString() + " is not null");
    }

    public static void checkState(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    public static void checkState(boolean z, Object obj) {
        if (z) {
            return;
        }
        throw new IllegalStateException(obj.toString());
    }
}
