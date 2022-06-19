package com.google.i18n.phonenumbers.p169a;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* renamed from: com.google.i18n.phonenumbers.a.c */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/a/c.class */
public class C5046c {

    /* renamed from: a */
    private C5047a<String, Pattern> f21302a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.i18n.phonenumbers.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/a/c$a.class */
    public static class C5047a<K, V> {

        /* renamed from: a */
        private LinkedHashMap<K, V> f21303a;

        /* renamed from: b */
        private int f21304b;

        public C5047a(int i) {
            this.f21304b = i;
            this.f21303a = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.google.i18n.phonenumbers.a.c.a.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > C5047a.this.f21304b;
                }
            };
        }

        /* renamed from: a */
        public V m1755a(K k) {
            V v;
            synchronized (this) {
                v = this.f21303a.get(k);
            }
            return v;
        }

        /* renamed from: a */
        public void m1754a(K k, V v) {
            synchronized (this) {
                this.f21303a.put(k, v);
            }
        }
    }

    public C5046c(int i) {
        this.f21302a = new C5047a<>(i);
    }

    /* renamed from: a */
    public Pattern m1757a(String str) {
        Pattern m1755a = this.f21302a.m1755a((C5047a<String, Pattern>) str);
        Pattern pattern = m1755a;
        if (m1755a == null) {
            pattern = Pattern.compile(str);
            this.f21302a.m1754a(str, pattern);
        }
        return pattern;
    }
}
