package org.p579a.p580a.p581a;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: org.a.a.a.c */
/* loaded from: classes5-dex2jar.jar:org/a/a/a/c.class */
public final class C20718c<K, V> extends AbstractC20715a<K, V, Set<V>> {

    /* renamed from: b */
    private final EnumC20720a f67175b;

    /* renamed from: org.a.a.a.c$1 */
    /* loaded from: classes5-dex2jar.jar:org/a/a/a/c$1.class */
    static final /* synthetic */ class C207191 {

        /* renamed from: a */
        static final /* synthetic */ int[] f67176a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC20720a.values().length];
            f67176a = iArr;
            try {
                iArr[EnumC20720a.REGULAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f67176a[EnumC20720a.THREAD_SAFE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: org.a.a.a.c$a */
    /* loaded from: classes5-dex2jar.jar:org/a/a/a/c$a.class */
    public enum EnumC20720a {
        REGULAR,
        THREAD_SAFE
    }

    protected C20718c(Map<K, Set<V>> map, EnumC20720a enumC20720a) {
        super(map);
        this.f67175b = enumC20720a;
    }

    /* renamed from: a */
    public static <K, V> C20718c<K, V> m607a(EnumC20720a enumC20720a) {
        return new C20718c<>(new HashMap(), enumC20720a);
    }

    @Override // org.p579a.p580a.p581a.AbstractC20715a
    /* renamed from: a */
    protected final /* synthetic */ Collection mo608a() {
        int i = C207191.f67176a[this.f67175b.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new CopyOnWriteArraySet();
            }
            throw new IllegalStateException("Unknown set type: " + this.f67175b);
        }
        return new HashSet();
    }
}
