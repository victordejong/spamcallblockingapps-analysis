package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.da;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cf.class */
final class cf<K, V> implements cz<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<K, V> f4351a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final int f4352b = 1048576;
    private final da.a<K, V> c;
    private int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(da.a<K, V> aVar) {
        this.c = aVar;
    }

    @Override // com.google.android.gms.tagmanager.cz
    public final V a(K k) {
        V v;
        synchronized (this) {
            v = this.f4351a.get(k);
        }
        return v;
    }

    @Override // com.google.android.gms.tagmanager.cz
    public final void a(K k, V v) {
        synchronized (this) {
            if (k == null) {
                throw new NullPointerException("key == null || value == null");
            }
            this.d += this.c.a(k, v);
            if (this.d > this.f4352b) {
                Iterator<Map.Entry<K, V>> it = this.f4351a.entrySet().iterator();
                do {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<K, V> next = it.next();
                    this.d -= this.c.a(next.getKey(), next.getValue());
                    it.remove();
                } while (this.d > this.f4352b);
            }
            this.f4351a.put(k, v);
        }
    }
}
