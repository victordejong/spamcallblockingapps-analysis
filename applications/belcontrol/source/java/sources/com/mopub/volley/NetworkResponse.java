package com.mopub.volley;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.bouncycastle.asn1.x509.DisplayText;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/NetworkResponse.class */
public class NetworkResponse {
    public final List<Header> allHeaders;
    public final byte[] data;
    public final Map<String, String> headers;
    public final long networkTimeMs;
    public final boolean notModified;
    public final int statusCode;

    public NetworkResponse(int i, byte[] bArr, Map<String, String> map, List<Header> list, boolean z, long j) {
        this.statusCode = i;
        this.data = bArr;
        this.headers = map;
        this.allHeaders = list == null ? null : Collections.unmodifiableList(list);
        this.notModified = z;
        this.networkTimeMs = j;
    }

    @Deprecated
    public NetworkResponse(int i, byte[] bArr, Map<String, String> map, boolean z) {
        this(i, bArr, map, z, 0L);
    }

    @Deprecated
    public NetworkResponse(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this(i, bArr, map, m3175a(map), z, j);
    }

    public NetworkResponse(int i, byte[] bArr, boolean z, long j, List<Header> list) {
        this(i, bArr, m3174b(list), list, z, j);
    }

    public NetworkResponse(byte[] bArr) {
        this((int) DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, bArr, false, 0L, (List<Header>) Collections.emptyList());
    }

    @Deprecated
    public NetworkResponse(byte[] bArr, Map<String, String> map) {
        this((int) DisplayText.DISPLAY_TEXT_MAXIMUM_SIZE, bArr, map, false, 0L);
    }

    /* renamed from: a */
    public static List<Header> m3175a(Map<String, String> map) {
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

    /* renamed from: b */
    public static Map<String, String> m3174b(List<Header> list) {
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
