package com.mopub.volley.toolbox;

import com.mopub.volley.Cache;
import com.mopub.volley.Header;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyLog;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/HttpHeaderParser.class */
public class HttpHeaderParser {
    /* renamed from: a */
    public static String m6002a(long j) {
        return m6003a().format(new Date(j));
    }

    /* renamed from: a */
    private static SimpleDateFormat m6003a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    /* renamed from: a */
    public static List<Header> m6000a(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<String, String> m6001a(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91 */
    public static Cache.Entry parseCacheHeaders(NetworkResponse networkResponse) {
        char c;
        char c2;
        boolean z;
        char c3;
        char c4;
        char c5;
        char c6;
        char c7;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = networkResponse.headers;
        String str = map.get("Date");
        char parseDateAsEpoch = str != null ? parseDateAsEpoch(str) : (char) 0;
        String str2 = map.get("Cache-Control");
        boolean z2 = false;
        int i = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z2 = false;
            c2 = 0;
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (i >= split.length) {
                    z = true;
                    break;
                }
                String trim = split[i].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        c6 = Long.parseLong(trim.substring(8));
                        c7 = c;
                    } catch (Exception e) {
                        c6 = c2;
                        c7 = c;
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    c7 = Long.parseLong(trim.substring(23));
                    c6 = c2;
                } else {
                    if (!trim.equals("must-revalidate")) {
                        c6 = c2;
                        c7 = c;
                        if (!trim.equals("proxy-revalidate")) {
                        }
                    }
                    z2 = true;
                    c7 = c;
                    c6 = c2;
                }
                i++;
                c2 = c6;
                r0 = c7;
            }
        } else {
            z = false;
            c2 = 0;
            c = 0;
        }
        String str3 = map.get("Expires");
        char parseDateAsEpoch2 = str3 != null ? parseDateAsEpoch(str3) : (char) 0;
        String str4 = map.get("Last-Modified");
        char parseDateAsEpoch3 = str4 != null ? parseDateAsEpoch(str4) : (char) 0;
        String str5 = map.get("ETag");
        if (z) {
            ?? r02 = currentTimeMillis + (c2 * 1000);
            if (z2) {
                c5 = r02;
            } else {
                Long.signum(c);
                c5 = (c * 1000) + r02;
            }
            char c8 = c5;
            c3 = r02;
            c4 = c8;
        } else {
            c4 = 0;
            if (parseDateAsEpoch <= 0 || parseDateAsEpoch2 < parseDateAsEpoch) {
                c3 = 0;
            } else {
                c3 = currentTimeMillis + (parseDateAsEpoch2 - parseDateAsEpoch);
                c4 = c3;
            }
        }
        Cache.Entry entry = new Cache.Entry();
        entry.data = networkResponse.data;
        entry.etag = str5;
        entry.softTtl = c3;
        entry.ttl = c4;
        entry.serverDate = parseDateAsEpoch;
        entry.lastModified = parseDateAsEpoch3;
        entry.responseHeaders = map;
        entry.allResponseHeaders = networkResponse.allHeaders;
        return entry;
    }

    public static String parseCharset(Map<String, String> map) {
        return parseCharset(map, "ISO-8859-1");
    }

    public static String parseCharset(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] split = str2.split(";", 0);
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=", 0);
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    public static long parseDateAsEpoch(String str) {
        try {
            return m6003a().parse(str).getTime();
        } catch (ParseException e) {
            VolleyLog.m6027e(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }
}
