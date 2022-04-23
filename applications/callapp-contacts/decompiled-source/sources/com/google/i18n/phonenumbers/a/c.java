package com.google.i18n.phonenumbers.a;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private a<String, Pattern> f32834a;

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a/c$a.class */
    static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        int f32835a;

        /* renamed from: b  reason: collision with root package name */
        private LinkedHashMap<K, V> f32836b;

        public a(int i) {
            this.f32835a = i;
            this.f32836b = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.google.i18n.phonenumbers.a.c.a.1
                @Override // java.util.LinkedHashMap
                protected final boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > a.this.f32835a;
                }
            };
        }

        public final V a(K k) {
            V v;
            synchronized (this) {
                v = this.f32836b.get(k);
            }
            return v;
        }

        public final void a(K k, V v) {
            synchronized (this) {
                this.f32836b.put(k, v);
            }
        }
    }

    public c(int i) {
        this.f32834a = new a<>(i);
    }

    public final Pattern a(String str) {
        Pattern a2 = this.f32834a.a(str);
        Pattern pattern = a2;
        if (a2 == null) {
            pattern = Pattern.compile(str);
            this.f32834a.a(str, pattern);
        }
        return pattern;
    }
}
