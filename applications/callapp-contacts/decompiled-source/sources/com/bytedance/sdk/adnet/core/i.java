package com.bytedance.sdk.adnet.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/i.class */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public final int f8322a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f8323b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f8324c;

    /* renamed from: d  reason: collision with root package name */
    public final List<Header> f8325d;
    public final boolean e;
    public final long f;

    private i(int i, byte[] bArr, Map<String, String> map, List<Header> list, boolean z, long j) {
        this.f8322a = i;
        this.f8323b = bArr;
        this.f8324c = map;
        if (list == null) {
            this.f8325d = null;
        } else {
            this.f8325d = Collections.unmodifiableList(list);
        }
        this.e = z;
        this.f = j;
    }

    @Deprecated
    public i(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this(i, bArr, map, a(map), z, j);
    }

    public i(int i, byte[] bArr, boolean z, long j, List<Header> list) {
        this(i, bArr, a(list), list, z, j);
    }

    @Deprecated
    public i(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }

    private static List<Header> a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    private static Map<String, String> a(List<Header> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }
}
