package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/AbstractIterator.class */
abstract class AbstractIterator<T> implements Iterator<T> {

    /* renamed from: d */
    private State f38580d = State.NOT_READY;

    /* renamed from: e */
    private T f38581e;

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/AbstractIterator$State.class */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: com.google.common.base.AbstractIterator$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/AbstractIterator$a.class */
    public static /* synthetic */ class C8736a {

        /* renamed from: a */
        static final /* synthetic */ int[] f38587a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f38587a = iArr;
            try {
                iArr[State.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f38587a[State.READY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: c */
    private boolean m2828c() {
        this.f38580d = State.FAILED;
        this.f38581e = mo2770a();
        if (this.f38580d != State.DONE) {
            this.f38580d = State.READY;
            return true;
        }
        return false;
    }

    /* renamed from: a */
    protected abstract T mo2770a();

    /* renamed from: b */
    public final T m2829b() {
        this.f38580d = State.DONE;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        C8756j.m2783r(this.f38580d != State.FAILED);
        int i = C8736a.f38587a[this.f38580d.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return true;
            }
            return m2828c();
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f38580d = State.NOT_READY;
            T t = this.f38581e;
            this.f38581e = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
