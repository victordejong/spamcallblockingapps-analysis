package com.google.android.gms.tagmanager;

import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/da.class */
final class da<K, V> {

    /* renamed from: a  reason: collision with root package name */
    final a<K, V> f4372a = new a<K, V>() { // from class: com.google.android.gms.tagmanager.da.1
        @Override // com.google.android.gms.tagmanager.da.a
        public final int a(K k, V v) {
            return 1;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/da$a.class */
    public interface a<K, V> {
        int a(K k, V v);
    }

    public static cz<K, V> a(a<K, V> aVar) {
        return Build.VERSION.SDK_INT < 12 ? new cf<>(aVar) : new ah<>(aVar);
    }
}
