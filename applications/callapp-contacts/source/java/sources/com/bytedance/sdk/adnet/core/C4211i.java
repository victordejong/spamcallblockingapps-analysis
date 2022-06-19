package com.bytedance.sdk.adnet.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.bytedance.sdk.adnet.core.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/i.class */
public class C4211i {

    /* renamed from: a */
    public final int f15449a;

    /* renamed from: b */
    public final byte[] f15450b;

    /* renamed from: c */
    public final Map<String, String> f15451c;

    /* renamed from: d */
    public final List<Header> f15452d;

    /* renamed from: e */
    public final boolean f15453e;

    /* renamed from: f */
    public final long f15454f;

    private C4211i(int i, byte[] bArr, Map<String, String> map, List<Header> list, boolean z, long j) {
        this.f15449a = i;
        this.f15450b = bArr;
        this.f15451c = map;
        if (list == null) {
            this.f15452d = null;
        } else {
            this.f15452d = Collections.unmodifiableList(list);
        }
        this.f15453e = z;
        this.f15454f = j;
    }

    @Deprecated
    public C4211i(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this(i, bArr, map, m36138a(map), z, j);
    }

    public C4211i(int i, byte[] bArr, boolean z, long j, List<Header> list) {
        this(i, bArr, m36139a(list), list, z, j);
    }

    @Deprecated
    public C4211i(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }

    /* renamed from: a */
    private static List<Header> m36138a(Map<String, String> map) {
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

    /* renamed from: a */
    private static Map<String, String> m36139a(List<Header> list) {
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
