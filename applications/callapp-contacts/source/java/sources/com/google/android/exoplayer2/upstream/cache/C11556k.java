package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.util.C11593a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.cache.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/k.class */
public final class C11556k {

    /* renamed from: a */
    private final Map<String, Object> f38473a = new HashMap();

    /* renamed from: b */
    private final List<String> f38474b = new ArrayList();

    /* renamed from: a */
    public static C11556k m20133a(C11556k c11556k, Uri uri) {
        return uri == null ? c11556k.m20132a("exo_redir") : c11556k.m20130a("exo_redir", uri.toString());
    }

    /* renamed from: a */
    private C11556k m20132a(String str) {
        this.f38474b.add(str);
        this.f38473a.remove(str);
        return this;
    }

    /* renamed from: a */
    private C11556k m20130a(String str, Object obj) {
        this.f38473a.put((String) C11593a.m20020b(str), C11593a.m20020b(obj));
        this.f38474b.remove(str);
        return this;
    }

    /* renamed from: a */
    public final C11556k m20131a(String str, long j) {
        return m20130a(str, Long.valueOf(j));
    }

    /* renamed from: a */
    public final List<String> m20134a() {
        return Collections.unmodifiableList(new ArrayList(this.f38474b));
    }

    /* renamed from: b */
    public final Map<String, Object> m20129b() {
        HashMap hashMap = new HashMap(this.f38473a);
        for (Map.Entry entry : hashMap.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }
}
