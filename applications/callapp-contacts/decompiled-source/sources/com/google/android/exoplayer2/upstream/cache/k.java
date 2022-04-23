package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.util.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f22178a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f22179b = new ArrayList();

    public static k a(k kVar, Uri uri) {
        return uri == null ? kVar.a("exo_redir") : kVar.a("exo_redir", uri.toString());
    }

    private k a(String str) {
        this.f22179b.add(str);
        this.f22178a.remove(str);
        return this;
    }

    private k a(String str, Object obj) {
        this.f22178a.put((String) a.b(str), a.b(obj));
        this.f22179b.remove(str);
        return this;
    }

    public final k a(String str, long j) {
        return a(str, Long.valueOf(j));
    }

    public final List<String> a() {
        return Collections.unmodifiableList(new ArrayList(this.f22179b));
    }

    public final Map<String, Object> b() {
        HashMap hashMap = new HashMap(this.f22178a);
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
