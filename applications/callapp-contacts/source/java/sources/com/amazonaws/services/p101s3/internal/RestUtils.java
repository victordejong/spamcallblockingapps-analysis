package com.amazonaws.services.p101s3.internal;

import com.amazonaws.Request;
import com.amazonaws.services.p101s3.model.ResponseHeaderOverrides;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.amazonaws.services.s3.internal.RestUtils */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/RestUtils.class */
public class RestUtils {

    /* renamed from: a */
    private static final List<String> f12362a = Arrays.asList("acl", "torrent", "logging", "location", "policy", "requestPayment", "versioning", "versions", "versionId", "notification", "uploadId", "uploads", "partNumber", "website", "delete", "lifecycle", "tagging", "cors", "restore", "replication", "accelerate", "inventory", "analytics", "metrics", ResponseHeaderOverrides.RESPONSE_HEADER_CACHE_CONTROL, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_DISPOSITION, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_ENCODING, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_LANGUAGE, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_TYPE, ResponseHeaderOverrides.RESPONSE_HEADER_EXPIRES);

    /* renamed from: a */
    public static <T> String m38425a(String str, String str2, Request<T> request, Collection<String> collection) {
        StringBuilder sb = new StringBuilder();
        sb.append(str + StringUtils.f67179LF);
        Map<String, String> mo38711b = request.mo38711b();
        TreeMap treeMap = new TreeMap();
        if (mo38711b != null && mo38711b.size() > 0) {
            for (Map.Entry<String, String> entry : mo38711b.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null) {
                    String m38227b = com.amazonaws.util.StringUtils.m38227b(key);
                    if ("content-type".equals(m38227b) || "content-md5".equals(m38227b) || "date".equals(m38227b) || m38227b.startsWith("x-amz-")) {
                        treeMap.put(m38227b, value);
                    }
                }
            }
        }
        if (treeMap.containsKey("x-amz-date")) {
            treeMap.put("date", "");
        }
        if (!treeMap.containsKey("content-type")) {
            treeMap.put("content-type", "");
        }
        if (!treeMap.containsKey("content-md5")) {
            treeMap.put("content-md5", "");
        }
        for (Map.Entry<String, String> entry2 : request.mo38707d().entrySet()) {
            if (entry2.getKey().startsWith("x-amz-")) {
                treeMap.put(entry2.getKey(), entry2.getValue());
            }
        }
        for (Map.Entry entry3 : treeMap.entrySet()) {
            String str3 = (String) entry3.getKey();
            String str4 = (String) entry3.getValue();
            if (str3.startsWith("x-amz-")) {
                sb.append(str3);
                sb.append(':');
                if (str4 != null) {
                    sb.append(str4);
                }
            } else if (str4 != null) {
                sb.append(str4);
            }
            sb.append(StringUtils.f67179LF);
        }
        sb.append(str2);
        String[] strArr = (String[]) request.mo38707d().keySet().toArray(new String[request.mo38707d().size()]);
        Arrays.sort(strArr);
        char c = '?';
        int length = strArr.length;
        int i = 0;
        while (true) {
            char c2 = c;
            if (i < length) {
                String str5 = strArr[i];
                if (!f12362a.contains(str5)) {
                    c = c2;
                    if (collection != null) {
                        c = c2;
                        if (!collection.contains(str5)) {
                        }
                    }
                    i++;
                }
                if (sb.length() == 0) {
                    sb.append(c2);
                }
                sb.append(str5);
                String str6 = request.mo38707d().get(str5);
                if (str6 != null) {
                    sb.append("=");
                    sb.append(str6);
                }
                c = '&';
                i++;
            } else {
                return sb.toString();
            }
        }
    }
}
