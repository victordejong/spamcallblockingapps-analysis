package com.jakewharton.rxbinding2.internal;

import android.support.annotation.RestrictTo;
import io.reactivex.functions.Predicate;
import java.util.concurrent.Callable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/internal/Functions.class */
public final class Functions {
    private static final Always ALWAYS_TRUE = new Always(true);
    public static final Callable<Boolean> CALLABLE_ALWAYS_TRUE = ALWAYS_TRUE;
    public static final Predicate<Object> PREDICATE_ALWAYS_TRUE = ALWAYS_TRUE;

    /* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/internal/Functions$Always.class */
    private static final class Always implements Callable<Boolean>, Predicate<Object> {
        private final Boolean value;

        Always(Boolean bool) {
            this.value = bool;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() {
            return this.value;
        }

        @Override // io.reactivex.functions.Predicate
        public boolean test(Object obj) throws Exception {
            return this.value.booleanValue();
        }
    }

    private Functions() {
        throw new AssertionError("No instances.");
    }
}
