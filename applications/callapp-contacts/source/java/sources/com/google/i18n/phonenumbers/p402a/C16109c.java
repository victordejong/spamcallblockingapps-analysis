package com.google.i18n.phonenumbers.p402a;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* renamed from: com.google.i18n.phonenumbers.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a/c.class */
public final class C16109c {

    /* renamed from: a */
    private C16110a<String, Pattern> f56888a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.i18n.phonenumbers.a.c$a */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/a/c$a.class */
    public static final class C16110a<K, V> {

        /* renamed from: a */
        int f56889a;

        /* renamed from: b */
        private LinkedHashMap<K, V> f56890b;

        public C16110a(int i) {
            this.f56889a = i;
            this.f56890b = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.google.i18n.phonenumbers.a.c.a.1
                @Override // java.util.LinkedHashMap
                protected final boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > C16110a.this.f56889a;
                }
            };
        }

        /* renamed from: a */
        public final V m7841a(K k) {
            V v;
            synchronized (this) {
                v = this.f56890b.get(k);
            }
            return v;
        }

        /* renamed from: a */
        public final void m7840a(K k, V v) {
            synchronized (this) {
                this.f56890b.put(k, v);
            }
        }
    }

    public C16109c(int i) {
        this.f56888a = new C16110a<>(i);
    }

    /* renamed from: a */
    public final Pattern m7842a(String str) {
        Pattern m7841a = this.f56888a.m7841a(str);
        Pattern pattern = m7841a;
        if (m7841a == null) {
            pattern = Pattern.compile(str);
            this.f56888a.m7840a(str, pattern);
        }
        return pattern;
    }
}
