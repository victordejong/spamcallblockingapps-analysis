package androidx.core.util;

import kotlin.jvm.internal.Lambda;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10037r;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes-dex2jar.jar:androidx/core/util/LruCacheKt$lruCache$3.class */
public final class LruCacheKt$lruCache$3 extends Lambda implements AbstractC10037r<Boolean, K, V, V, C9946p> {
    public static final LruCacheKt$lruCache$3 INSTANCE = new LruCacheKt$lruCache$3();

    public LruCacheKt$lruCache$3() {
        super(4);
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        invoke(((Boolean) obj).booleanValue(), (boolean) obj2, obj3, obj4);
        return C9946p.f37137a;
    }

    public final void invoke(boolean z, K k, V v, V v2) {
        C10059q.m1637b(k, "<anonymous parameter 1>");
        C10059q.m1637b(v, "<anonymous parameter 2>");
    }
}
