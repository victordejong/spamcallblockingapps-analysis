package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.util.LruCache;
import com.google.android.gms.tagmanager.da;
@TargetApi(12)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ah.class */
final class ah<K, V> implements cz<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private LruCache<K, V> f4275a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(final da.a<K, V> aVar) {
        this.f4275a = new LruCache<K, V>() { // from class: com.google.android.gms.tagmanager.ah.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1048576);
            }

            @Override // android.util.LruCache
            protected final int sizeOf(K k, V v) {
                return aVar.a(k, v);
            }
        };
    }

    @Override // com.google.android.gms.tagmanager.cz
    public final V a(K k) {
        return this.f4275a.get(k);
    }

    @Override // com.google.android.gms.tagmanager.cz
    public final void a(K k, V v) {
        this.f4275a.put(k, v);
    }
}
