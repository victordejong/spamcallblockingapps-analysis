package com.amazonaws.services.s3.internal;

import com.amazonaws.Request;
import com.amazonaws.services.s3.model.ResponseHeaderOverrides;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/RestUtils.class */
public class RestUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final List<String> f6820a = Arrays.asList("acl", "torrent", "logging", "location", "policy", "requestPayment", "versioning", "versions", "versionId", "notification", "uploadId", "uploads", "partNumber", "website", "delete", "lifecycle", "tagging", "cors", "restore", "replication", "accelerate", "inventory", "analytics", "metrics", ResponseHeaderOverrides.RESPONSE_HEADER_CACHE_CONTROL, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_DISPOSITION, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_ENCODING, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_LANGUAGE, ResponseHeaderOverrides.RESPONSE_HEADER_CONTENT_TYPE, ResponseHeaderOverrides.RESPONSE_HEADER_EXPIRES);

    public static <T> String a(String str, String str2, Request<T> request, Collection<String> collection) {
        StringBuilder sb = new StringBuilder();
        sb.append(str + StringUtils.LF);
        Map<String, String> b2 = request.b();
        TreeMap treeMap = new TreeMap();
        if (b2 != null && b2.size() > 0) {
            for (Map.Entry<String, String> entry : b2.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null) {
                    String b3 = com.amazonaws.util.StringUtils.b(key);
                    if ("content-type".equals(b3) || "content-md5".equals(b3) || "date".equals(b3) || b3.startsWith("x-amz-")) {
                        treeMap.put(b3, value);
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
        for (Map.Entry<String, String> entry2 : request.d().entrySet()) {
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
            sb.append(StringUtils.LF);
        }
        sb.append(str2);
        String[] strArr = (String[]) request.d().keySet().toArray(new String[request.d().size()]);
        Arrays.sort(strArr);
        char c2 = '?';
        for (String str5 : strArr) {
            if (!f6820a.contains(str5)) {
                c2 = c2;
                if (collection != null) {
                    c2 = c2;
                    if (!collection.contains(str5)) {
                    }
                }
            }
            if (sb.length() == 0) {
                sb.append(c2);
            }
            sb.append(str5);
            String str6 = request.d().get(str5);
            if (str6 != null) {
                sb.append("=");
                sb.append(str6);
            }
            c2 = '&';
        }
        return sb.toString();
    }
}
