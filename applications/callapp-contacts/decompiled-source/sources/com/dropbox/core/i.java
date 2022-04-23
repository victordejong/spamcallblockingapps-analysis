package com.dropbox.core;

import com.dropbox.core.a;
import com.dropbox.core.http.a;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.d;
import com.dropbox.core.util.f;
import com.dropbox.core.v2.auth.a;
import com.dropbox.core.v2.auth.b;
import com.dropbox.core.v2.c.b;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.nio.charset.CharacterCodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static com.dropbox.core.v2.a.a f17811a;

    /* renamed from: b  reason: collision with root package name */
    private static final Random f17812b = new Random();

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/i$a.class */
    public static abstract class a<T, E extends Throwable> {
        public abstract T a() throws DbxException, Throwable;
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/i$b.class */
    public static abstract class b<T> {
        public abstract T a(a.b bVar) throws DbxException;
    }

    public static DbxException a(a.b bVar) throws NetworkIOException, BadResponseException {
        return b(bVar);
    }

    public static a.b a(h hVar, String str, String str2, String str3, byte[] bArr, List<a.C0354a> list) throws NetworkIOException {
        String a2 = a(str2, str3);
        List<a.C0354a> a3 = a(b(list), hVar, str);
        a3.add(new a.C0354a("Content-Length", Integer.toString(bArr.length)));
        try {
            a.c a4 = hVar.f17765c.a(a2, a3);
            a4.a(bArr);
            a.b c2 = a4.c();
            a4.b();
            return c2;
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    public static a.b a(h hVar, String str, String str2, String str3, String[] strArr, List<a.C0354a> list) throws NetworkIOException {
        byte[] a2 = f.a(a(hVar.f17764b, strArr));
        List<a.C0354a> b2 = b(list);
        b2.add(new a.C0354a("Content-Type", "application/x-www-form-urlencoded; charset=utf-8"));
        return a(hVar, str, str2, str3, a2, b2);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0047 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T, E extends java.lang.Throwable> T a(int r5, com.dropbox.core.i.a<T, E> r6) throws com.dropbox.core.DbxException, java.lang.Throwable {
        /*
            r0 = 0
            r7 = r0
        L_0x0002:
            r0 = r6
            java.lang.Object r0 = r0.a()     // Catch: ServerException -> 0x0009, RetryException -> 0x0010
            r8 = r0
            r0 = r8
            return r0
        L_0x0009:
            r8 = move-exception
            r0 = 0
            r9 = r0
            goto L_0x0017
        L_0x0010:
            r8 = move-exception
            r0 = r8
            long r0 = r0.f17705a
            r9 = r0
        L_0x0017:
            r0 = r7
            r1 = r5
            if (r0 >= r1) goto L_0x0047
            r0 = r9
            java.util.Random r1 = com.dropbox.core.i.f17812b
            r2 = 1000(0x3e8, float:1.401E-42)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            long r0 = r0 + r1
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0041
            r0 = r9
            java.lang.Thread.sleep(r0)     // Catch: InterruptedException -> 0x003a
            goto L_0x0041
        L_0x003a:
            r8 = move-exception
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L_0x0041:
            int r7 = r7 + 1
            goto L_0x0002
        L_0x0047:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.i.a(int, com.dropbox.core.i$a):java.lang.Object");
    }

    public static <T> T a(final h hVar, final String str, final String str2, final String str3, final String[] strArr, final List<a.C0354a> list, final b<T> bVar) throws DbxException {
        return (T) a(hVar.f17766d, new a<T, DbxException>() { // from class: com.dropbox.core.i.1
            /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
            @Override // com.dropbox.core.i.a
            public final T a() throws DbxException {
                return i.a(i.a(h.this, str, str2, str3, strArr, list), bVar);
            }
        });
    }

    public static <T> T a(a.b bVar, b<T> bVar2) throws DbxException {
        try {
            return bVar2.a(bVar);
        } finally {
            IOUtil.b(bVar.f17783b);
        }
    }

    public static <T> T a(JsonReader<T> jsonReader, a.b bVar) throws BadResponseException, NetworkIOException {
        try {
            return jsonReader.readFully(bVar.f17783b);
        } catch (JsonReadException e) {
            String b2 = b(bVar, "X-Dropbox-Request-Id");
            throw new BadResponseException(b2, "error in response JSON: " + e.getMessage(), e);
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    private static String a(a.b bVar, String str) throws NetworkIOException, BadResponseException {
        return a(str, bVar.f17782a, d(bVar));
    }

    private static String a(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw d.a("UTF-8 should always be supported", (Throwable) e);
        }
    }

    private static String a(String str, int i, byte[] bArr) throws BadResponseException {
        try {
            return f.a(bArr);
        } catch (CharacterCodingException e) {
            throw new BadResponseException(str, "Got non-UTF8 response body: " + i + ": " + e.getMessage());
        }
    }

    public static String a(String str, String str2) {
        try {
            return new URI(Constants.HTTPS, str, "/".concat(String.valueOf(str2)), null).toASCIIString();
        } catch (URISyntaxException e) {
            throw d.a("URI creation failed, host=" + f.b(str) + ", path=" + f.b(str2), (Throwable) e);
        }
    }

    public static String a(String str, String str2, String str3, String[] strArr) {
        return a(str2, str3) + "?" + a(str, strArr);
    }

    private static String a(String str, String[] strArr) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("locale=");
            sb.append(a(str));
            str2 = "&";
        } else {
            str2 = "";
        }
        if (strArr != null) {
            if (strArr.length % 2 == 0) {
                for (int i = 0; i < strArr.length; i += 2) {
                    String str3 = strArr[i];
                    String str4 = strArr[i + 1];
                    if (str3 != null) {
                        str2 = str2;
                        if (str4 != null) {
                            sb.append(str2);
                            sb.append(a(str3));
                            sb.append("=");
                            sb.append(a(str4));
                            str2 = "&";
                        }
                    } else {
                        throw new IllegalArgumentException("params[" + i + "] is null");
                    }
                }
            } else {
                throw new IllegalArgumentException("'params.length' is " + strArr.length + "; expecting a multiple of two");
            }
        }
        return sb.toString();
    }

    public static List<a.C0354a> a(List<a.C0354a> list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (a.C0354a aVar : list) {
            if ("Authorization".equals(aVar.f17780a)) {
                arrayList.add(aVar);
            }
        }
        list.removeAll(arrayList);
        return list;
    }

    public static List<a.C0354a> a(List<a.C0354a> list, h hVar) {
        if (hVar.f17764b == null) {
            return list;
        }
        list.add(new a.C0354a("Dropbox-API-User-Locale", hVar.f17764b));
        return list;
    }

    public static List<a.C0354a> a(List<a.C0354a> list, h hVar, String str) {
        List<a.C0354a> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        list2.add(new a.C0354a("User-Agent", hVar.f17763a + StringUtils.SPACE + str + "/" + j.f17817a));
        return list2;
    }

    public static List<a.C0354a> a(List<a.C0354a> list, com.dropbox.core.v2.c.a aVar) {
        if (aVar == null) {
            return list;
        }
        list.add(new a.C0354a("Dropbox-API-Path-Root", aVar.toString()));
        return list;
    }

    public static List<a.C0354a> a(List<a.C0354a> list, String str) {
        Objects.requireNonNull(str, "accessToken");
        List<a.C0354a> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
        }
        list2.add(new a.C0354a("Authorization", "Bearer ".concat(String.valueOf(str))));
        return list2;
    }

    public static List<a.C0354a> a(List<a.C0354a> list, String str, String str2) {
        Objects.requireNonNull(str, "username");
        Objects.requireNonNull(str2, "password");
        list.add(new a.C0354a("Authorization", "Basic ".concat(String.valueOf(f.b(f.a(str + ":" + str2))))));
        return list;
    }

    public static String[] a(Map<String, String> map) {
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            strArr[i] = entry.getKey();
            strArr[i + 1] = entry.getValue();
            i += 2;
        }
        return strArr;
    }

    public static DbxException b(a.b bVar) throws NetworkIOException, BadResponseException {
        DbxException dbxException;
        String b2 = b(bVar, "X-Dropbox-Request-Id");
        int i = bVar.f17782a;
        if (i == 400) {
            dbxException = new BadRequestException(b2, a(bVar, b2));
        } else if (i != 401) {
            String str = null;
            String str2 = null;
            if (i == 403) {
                try {
                    com.dropbox.core.a deserialize = new a.C0351a(a.C0361a.f17927a).deserialize(bVar.f17783b);
                    if (deserialize.f17707b != null) {
                        str = deserialize.f17707b.toString();
                    }
                    dbxException = new AccessErrorException(b2, str, (com.dropbox.core.v2.auth.a) deserialize.f17706a);
                } catch (JsonProcessingException e) {
                    throw new BadResponseException(b2, "Bad JSON: " + e.getMessage(), e);
                } catch (IOException e2) {
                    throw new NetworkIOException(e2);
                }
            } else if (i == 422) {
                try {
                    com.dropbox.core.a deserialize2 = new a.C0351a(b.a.f17965a).deserialize(bVar.f17783b);
                    if (deserialize2.f17707b != null) {
                        str2 = deserialize2.f17707b.toString();
                    }
                    dbxException = new PathRootErrorException(b2, str2, (com.dropbox.core.v2.c.b) deserialize2.f17706a);
                } catch (JsonProcessingException e3) {
                    throw new BadResponseException(b2, "Bad JSON: " + e3.getMessage(), e3);
                } catch (IOException e4) {
                    throw new NetworkIOException(e4);
                }
            } else if (i == 429) {
                try {
                    List<String> list = bVar.f17784c.get("Retry-After");
                    if (list == null || list.isEmpty()) {
                        String b3 = b(bVar, "X-Dropbox-Request-Id");
                        throw new BadResponseException(b3, "missing HTTP header \"Retry-After\"");
                    }
                    dbxException = new RateLimitException(b2, null, Integer.parseInt(list.get(0)), TimeUnit.SECONDS);
                } catch (NumberFormatException e5) {
                    dbxException = new BadResponseException(b2, "Invalid value for HTTP header: \"Retry-After\"");
                }
            } else if (i == 500) {
                dbxException = new ServerException(b2, null);
            } else if (i != 503) {
                dbxException = new BadResponseCodeException(b2, "unexpected HTTP status code: " + bVar.f17782a + ": " + ((String) null), bVar.f17782a);
            } else {
                String b4 = b(bVar, "Retry-After");
                if (b4 != null) {
                    try {
                        if (!b4.trim().isEmpty()) {
                            dbxException = new RetryException(b2, null, Integer.parseInt(b4), TimeUnit.SECONDS);
                        }
                    } catch (NumberFormatException e6) {
                        dbxException = new BadResponseException(b2, "Invalid value for HTTP header: \"Retry-After\"");
                    }
                }
                dbxException = new RetryException(b2, null);
            }
        } else {
            String a2 = a(bVar, b2);
            try {
                dbxException = new InvalidAccessTokenException(b2, a2, (com.dropbox.core.v2.auth.b) new a.C0351a(b.a.f17933a).deserialize(a2).f17706a);
            } catch (JsonParseException e7) {
                throw new BadResponseException(b2, "Bad JSON: " + e7.getMessage(), e7);
            }
        }
        return dbxException;
    }

    private static String b(a.b bVar, String str) {
        List<String> list = bVar.f17784c.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static List<a.C0354a> b(List<a.C0354a> list) {
        return list == null ? new ArrayList() : new ArrayList(list);
    }

    public static String c(a.b bVar) {
        return b(bVar, "X-Dropbox-Request-Id");
    }

    private static byte[] d(a.b bVar) throws NetworkIOException {
        if (bVar.f17783b == null) {
            return new byte[0];
        }
        try {
            return IOUtil.a(bVar.f17783b);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }
}
