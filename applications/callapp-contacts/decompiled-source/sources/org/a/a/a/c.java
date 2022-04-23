package org.a.a.a;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes5-dex2jar.jar:org/a/a/a/c.class */
public final class c<K, V> extends org.a.a.a.a<K, V, Set<V>> {

    /* renamed from: b  reason: collision with root package name */
    private final a f39128b;

    /* renamed from: org.a.a.a.c$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:org/a/a/a/c$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f39129a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f39129a = iArr;
            try {
                iArr[a.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f39129a[a.THREAD_SAFE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/a/a/a/c$a.class */
    public enum a {
        REGULAR,
        THREAD_SAFE
    }

    protected c(Map<K, Set<V>> map, a aVar) {
        super(map);
        this.f39128b = aVar;
    }

    public static <K, V> c<K, V> a(a aVar) {
        return new c<>(new HashMap(), aVar);
    }

    @Override // org.a.a.a.a
    protected final /* synthetic */ Collection a() {
        int i = AnonymousClass1.f39129a[this.f39128b.ordinal()];
        if (i == 1) {
            return new HashSet();
        }
        if (i == 2) {
            return new CopyOnWriteArraySet();
        }
        throw new IllegalStateException("Unknown set type: " + this.f39128b);
    }
}
