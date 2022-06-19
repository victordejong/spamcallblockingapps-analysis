package com.liulishuo.filedownloader.exception;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p078c.p122d.p123a.p128i0.C2040f;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/exception/FileDownloadHttpException.class */
public class FileDownloadHttpException extends IOException {
    private final int mCode;
    private final Map<String, List<String>> mRequestHeaderMap;
    private final Map<String, List<String>> mResponseHeaderMap;

    public FileDownloadHttpException(int i, Map<String, List<String>> map, Map<String, List<String>> map2) {
        super(C2040f.m28206o("response code error: %d, \n request headers: %s \n response headers: %s", Integer.valueOf(i), map, map2));
        this.mCode = i;
        this.mRequestHeaderMap = m904a(map);
        this.mResponseHeaderMap = m904a(map);
    }

    /* renamed from: a */
    private static Map<String, List<String>> m904a(Map<String, List<String>> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), new ArrayList(entry.getValue()));
        }
        return hashMap;
    }

    public int getCode() {
        return this.mCode;
    }

    public Map<String, List<String>> getRequestHeader() {
        return this.mRequestHeaderMap;
    }

    public Map<String, List<String>> getResponseHeader() {
        return this.mResponseHeaderMap;
    }
}
