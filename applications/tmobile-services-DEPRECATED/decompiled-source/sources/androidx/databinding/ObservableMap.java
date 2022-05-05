package androidx.databinding;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableMap.class */
public interface ObservableMap<K, V> extends Map<K, V> {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableMap$OnMapChangedCallback.class */
    public static abstract class OnMapChangedCallback<T extends ObservableMap<K, V>, K, V> {
        /* renamed from: a */
        public abstract void mo18597a(T t, K k);
    }

    /* renamed from: c */
    void mo18639c(OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback);
}
