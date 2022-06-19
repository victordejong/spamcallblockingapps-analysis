package com.google.android.exoplayer2.upstream.cache;

import com.google.common.base.C15374d;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.cache.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/l.class */
public final class C11557l implements AbstractC11555j {

    /* renamed from: a */
    public static final C11557l f38475a = new C11557l(Collections.emptyMap());

    /* renamed from: b */
    final Map<String, byte[]> f38476b;

    /* renamed from: c */
    private int f38477c;

    public C11557l() {
        this(Collections.emptyMap());
    }

    public C11557l(Map<String, byte[]> map) {
        this.f38476b = Collections.unmodifiableMap(map);
    }

    /* renamed from: a */
    private static Map<String, byte[]> m20124a(Map<String, byte[]> map, C11556k c11556k) {
        HashMap hashMap = new HashMap(map);
        m20126a(hashMap, c11556k.m20134a());
        m20125a(hashMap, c11556k.m20129b());
        return hashMap;
    }

    /* renamed from: a */
    private static void m20126a(HashMap<String, byte[]> hashMap, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            hashMap.remove(list.get(i));
        }
    }

    /* renamed from: a */
    private static void m20125a(HashMap<String, byte[]> hashMap, Map<String, Object> map) {
        byte[] bArr;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Long) {
                bArr = ByteBuffer.allocate(8).putLong(((Long) value).longValue()).array();
            } else if (value instanceof String) {
                bArr = ((String) value).getBytes(C15374d.f55620c);
            } else if (!(value instanceof byte[])) {
                throw new IllegalArgumentException();
            } else {
                bArr = (byte[]) value;
            }
            hashMap.put(key, bArr);
        }
    }

    /* renamed from: a */
    private static boolean m20123a(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final C11557l m20128a(C11556k c11556k) {
        Map<String, byte[]> m20124a = m20124a(this.f38476b, c11556k);
        return m20123a(this.f38476b, m20124a) ? this : new C11557l(m20124a);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.AbstractC11555j
    /* renamed from: a */
    public final String mo20127a(String str) {
        byte[] bArr = this.f38476b.get(str);
        if (bArr != null) {
            return new String(bArr, C15374d.f55620c);
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.AbstractC11555j
    /* renamed from: b */
    public final long mo20122b(String str) {
        byte[] bArr = this.f38476b.get(str);
        if (bArr != null) {
            return ByteBuffer.wrap(bArr).getLong();
        }
        return -1L;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return m20123a(this.f38476b, ((C11557l) obj).f38476b);
        }
        return false;
    }

    public final int hashCode() {
        if (this.f38477c == 0) {
            int i = 0;
            for (Map.Entry<String, byte[]> entry : this.f38476b.entrySet()) {
                i += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.f38477c = i;
        }
        return this.f38477c;
    }
}
