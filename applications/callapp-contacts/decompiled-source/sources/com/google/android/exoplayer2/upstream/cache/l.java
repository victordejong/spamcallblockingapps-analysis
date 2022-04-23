package com.google.android.exoplayer2.upstream.cache;

import com.google.common.base.d;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/l.class */
public final class l implements j {

    /* renamed from: a  reason: collision with root package name */
    public static final l f22180a = new l(Collections.emptyMap());

    /* renamed from: b  reason: collision with root package name */
    final Map<String, byte[]> f22181b;

    /* renamed from: c  reason: collision with root package name */
    private int f22182c;

    public l() {
        this(Collections.emptyMap());
    }

    public l(Map<String, byte[]> map) {
        this.f22181b = Collections.unmodifiableMap(map);
    }

    private static Map<String, byte[]> a(Map<String, byte[]> map, k kVar) {
        HashMap hashMap = new HashMap(map);
        a(hashMap, kVar.a());
        a(hashMap, kVar.b());
        return hashMap;
    }

    private static void a(HashMap<String, byte[]> hashMap, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            hashMap.remove(list.get(i));
        }
    }

    private static void a(HashMap<String, byte[]> hashMap, Map<String, Object> map) {
        byte[] bArr;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Long) {
                bArr = ByteBuffer.allocate(8).putLong(((Long) value).longValue()).array();
            } else if (value instanceof String) {
                bArr = ((String) value).getBytes(d.f31920c);
            } else if (value instanceof byte[]) {
                bArr = (byte[]) value;
            } else {
                throw new IllegalArgumentException();
            }
            hashMap.put(key, bArr);
        }
    }

    private static boolean a(Map<String, byte[]> map, Map<String, byte[]> map2) {
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

    public final l a(k kVar) {
        Map<String, byte[]> a2 = a(this.f22181b, kVar);
        return a(this.f22181b, a2) ? this : new l(a2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.j
    public final String a(String str) {
        byte[] bArr = this.f22181b.get(str);
        if (bArr != null) {
            return new String(bArr, d.f31920c);
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.j
    public final long b(String str) {
        byte[] bArr = this.f22181b.get(str);
        if (bArr != null) {
            return ByteBuffer.wrap(bArr).getLong();
        }
        return -1L;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return a(this.f22181b, ((l) obj).f22181b);
    }

    public final int hashCode() {
        if (this.f22182c == 0) {
            int i = 0;
            for (Map.Entry<String, byte[]> entry : this.f22181b.entrySet()) {
                i += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.f22182c = i;
        }
        return this.f22182c;
    }
}
