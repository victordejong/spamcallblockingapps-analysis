package org.bson.internal;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:org/bson/internal/Optional.class */
public abstract class Optional<T> {
    private static final Optional<Object> NONE = new Optional<Object>() { // from class: org.bson.internal.Optional.1
        @Override // org.bson.internal.Optional
        public Object get() {
            throw new NoSuchElementException(".get call on None!");
        }

        @Override // org.bson.internal.Optional
        public boolean isEmpty() {
            return true;
        }
    };

    /* loaded from: classes-dex2jar.jar:org/bson/internal/Optional$Some.class */
    public static class Some<T> extends Optional<T> {
        private final T value;

        Some(T t) {
            this.value = t;
        }

        @Override // org.bson.internal.Optional
        public T get() {
            return this.value;
        }

        @Override // org.bson.internal.Optional
        public /* bridge */ /* synthetic */ boolean isDefined() {
            return Optional.super.isDefined();
        }

        @Override // org.bson.internal.Optional
        public boolean isEmpty() {
            return false;
        }

        @Override // org.bson.internal.Optional
        public String toString() {
            return String.format("Some(%s)", this.value);
        }
    }

    Optional() {
    }

    public static <T> Optional<T> empty() {
        return (Optional<T>) NONE;
    }

    /* renamed from: of */
    public static <T> Optional<T> m368of(T t) {
        return t == null ? (Optional<T>) NONE : new Some(t);
    }

    public abstract T get();

    public boolean isDefined() {
        return !isEmpty();
    }

    public abstract boolean isEmpty();

    public String toString() {
        return "None";
    }
}
