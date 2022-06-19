package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* renamed from: e.m.a.c.p1.h0.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/s.class */
public final class C24730s implements AbstractC24728q {

    /* renamed from: c */
    public static final C24730s f69301c = new C24730s(Collections.emptyMap());

    /* renamed from: a */
    public int f69302a;

    /* renamed from: b */
    public final Map<String, byte[]> f69303b;

    public C24730s() {
        this(Collections.emptyMap());
    }

    public C24730s(Map<String, byte[]> map) {
        this.f69303b = Collections.unmodifiableMap(map);
    }

    /* renamed from: c */
    public static boolean m4718c(Map<String, byte[]> map, Map<String, byte[]> map2) {
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
    public C24730s m4720a(C24729r c24729r) {
        byte[] bArr;
        HashMap hashMap = new HashMap(this.f69303b);
        Objects.requireNonNull(c24729r);
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(c24729r.f69300b));
        for (int i = 0; i < unmodifiableList.size(); i++) {
            hashMap.remove(unmodifiableList.get(i));
        }
        HashMap hashMap2 = new HashMap(c24729r.f69299a);
        for (Map.Entry entry : hashMap2.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr2 = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr2, bArr2.length));
            }
        }
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap2);
        for (String str : unmodifiableMap.keySet()) {
            Object obj = unmodifiableMap.get(str);
            if (obj instanceof Long) {
                bArr = ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
            } else if (obj instanceof String) {
                bArr = ((String) obj).getBytes(Charset.forName(StringConstant.UTF8));
            } else if (!(obj instanceof byte[])) {
                throw new IllegalArgumentException();
            } else {
                bArr = (byte[]) obj;
            }
            hashMap.put(str, bArr);
        }
        return m4718c(this.f69303b, hashMap) ? this : new C24730s(hashMap);
    }

    /* renamed from: b */
    public final long m4719b(String str, long j) {
        return this.f69303b.containsKey(str) ? ByteBuffer.wrap(this.f69303b.get(str)).getLong() : j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C24730s.class == obj.getClass()) {
            return m4718c(this.f69303b, ((C24730s) obj).f69303b);
        }
        return false;
    }

    public int hashCode() {
        if (this.f69302a == 0) {
            int i = 0;
            for (Map.Entry<String, byte[]> entry : this.f69303b.entrySet()) {
                i += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.f69302a = i;
        }
        return this.f69302a;
    }
}
