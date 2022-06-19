package com.dropbox.core;

import com.dropbox.core.C8543a;
import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.p265v2.auth.C8665a;
import com.dropbox.core.p265v2.auth.C8669b;
import com.dropbox.core.p265v2.p266a.AbstractC8658a;
import com.dropbox.core.p265v2.p268c.C8688a;
import com.dropbox.core.p265v2.p268c.C8692b;
import com.dropbox.core.util.C8636d;
import com.dropbox.core.util.C8638f;
import com.dropbox.core.util.IOUtil;
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
/* renamed from: com.dropbox.core.i */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/i.class */
public final class C8600i {

    /* renamed from: a */
    public static AbstractC8658a f30602a;

    /* renamed from: b */
    private static final Random f30603b = new Random();

    /* renamed from: com.dropbox.core.i$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/i$a.class */
    public static abstract class AbstractC8602a<T, E extends Throwable> {
        /* renamed from: a */
        public abstract T mo25258a() throws DbxException, Throwable;
    }

    /* renamed from: com.dropbox.core.i$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/i$b.class */
    public static abstract class AbstractC8603b<T> {
        /* renamed from: a */
        public abstract T mo25211a(AbstractC8582a.C8584b c8584b) throws DbxException;
    }

    /* renamed from: a */
    public static DbxException m25279a(AbstractC8582a.C8584b c8584b) throws NetworkIOException, BadResponseException {
        return m25263b(c8584b);
    }

    /* renamed from: a */
    public static AbstractC8582a.C8584b m25282a(C8577h c8577h, String str, String str2, String str3, byte[] bArr, List<AbstractC8582a.C8583a> list) throws NetworkIOException {
        String m25273a = m25273a(str2, str3);
        List<AbstractC8582a.C8583a> m25268a = m25268a(m25261b(list), c8577h, str);
        m25268a.add(new AbstractC8582a.C8583a("Content-Length", Integer.toString(bArr.length)));
        try {
            AbstractC8582a.AbstractC8585c mo25291a = c8577h.f30546c.mo25291a(m25273a, m25268a);
            mo25291a.mo25295a(bArr);
            AbstractC8582a.C8584b mo25284c = mo25291a.mo25284c();
            mo25291a.mo25285b();
            return mo25284c;
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    /* renamed from: a */
    public static AbstractC8582a.C8584b m25281a(C8577h c8577h, String str, String str2, String str3, String[] strArr, List<AbstractC8582a.C8583a> list) throws NetworkIOException {
        byte[] m25219a = C8638f.m25219a(m25271a(c8577h.f30545b, strArr));
        List<AbstractC8582a.C8583a> m25261b = m25261b(list);
        m25261b.add(new AbstractC8582a.C8583a("Content-Type", "application/x-www-form-urlencoded; charset=utf-8"));
        return m25282a(c8577h, str, str2, str3, m25219a, m25261b);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T, E extends java.lang.Throwable> T m25283a(int r5, com.dropbox.core.C8600i.AbstractC8602a<T, E> r6) throws com.dropbox.core.DbxException, java.lang.Throwable {
        /*
            r0 = 0
            r7 = r0
        L2:
            r0 = r6
            java.lang.Object r0 = r0.mo25258a()     // Catch: com.dropbox.core.ServerException -> L9 com.dropbox.core.RetryException -> L10
            r8 = r0
            r0 = r8
            return r0
        L9:
            r8 = move-exception
            r0 = 0
            r9 = r0
            goto L17
        L10:
            r8 = move-exception
            r0 = r8
            long r0 = r0.f30447a
            r9 = r0
        L17:
            r0 = r7
            r1 = r5
            if (r0 >= r1) goto L47
            r0 = r9
            java.util.Random r1 = com.dropbox.core.C8600i.f30603b
            r2 = 1000(0x3e8, float:1.401E-42)
            int r1 = r1.nextInt(r2)
            long r1 = (long) r1
            long r0 = r0 + r1
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L41
            r0 = r9
            java.lang.Thread.sleep(r0)     // Catch: java.lang.InterruptedException -> L3a
            goto L41
        L3a:
            r8 = move-exception
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r0.interrupt()
        L41:
            int r7 = r7 + 1
            goto L2
        L47:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.C8600i.m25283a(int, com.dropbox.core.i$a):java.lang.Object");
    }

    /* renamed from: a */
    public static <T> T m25280a(final C8577h c8577h, final String str, final String str2, final String str3, final String[] strArr, final List<AbstractC8582a.C8583a> list, final AbstractC8603b<T> abstractC8603b) throws DbxException {
        return (T) m25283a(c8577h.f30547d, new AbstractC8602a<T, DbxException>() { // from class: com.dropbox.core.i.1
            /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
            @Override // com.dropbox.core.C8600i.AbstractC8602a
            /* renamed from: a */
            public final T mo25258a() throws DbxException {
                return C8600i.m25278a(C8600i.m25281a(c8577h, str, str2, str3, strArr, list), abstractC8603b);
            }
        });
    }

    /* renamed from: a */
    public static <T> T m25278a(AbstractC8582a.C8584b c8584b, AbstractC8603b<T> abstractC8603b) throws DbxException {
        try {
            return abstractC8603b.mo25211a(c8584b);
        } finally {
            IOUtil.m25243b(c8584b.f30567b);
        }
    }

    /* renamed from: a */
    public static <T> T m25276a(JsonReader<T> jsonReader, AbstractC8582a.C8584b c8584b) throws BadResponseException, NetworkIOException {
        try {
            return jsonReader.readFully(c8584b.f30567b);
        } catch (JsonReadException e) {
            String m25262b = m25262b(c8584b, "X-Dropbox-Request-Id");
            throw new BadResponseException(m25262b, "error in response JSON: " + e.getMessage(), e);
        } catch (IOException e2) {
            throw new NetworkIOException(e2);
        }
    }

    /* renamed from: a */
    private static String m25277a(AbstractC8582a.C8584b c8584b, String str) throws NetworkIOException, BadResponseException {
        return m25274a(str, c8584b.f30566a, m25259d(c8584b));
    }

    /* renamed from: a */
    private static String m25275a(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw C8636d.m25222a("UTF-8 should always be supported", (Throwable) e);
        }
    }

    /* renamed from: a */
    private static String m25274a(String str, int i, byte[] bArr) throws BadResponseException {
        try {
            return C8638f.m25217a(bArr);
        } catch (CharacterCodingException e) {
            throw new BadResponseException(str, "Got non-UTF8 response body: " + i + ": " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static String m25273a(String str, String str2) {
        try {
            return new URI(Constants.HTTPS, str, "/".concat(String.valueOf(str2)), null).toASCIIString();
        } catch (URISyntaxException e) {
            throw C8636d.m25222a("URI creation failed, host=" + C8638f.m25215b(str) + ", path=" + C8638f.m25215b(str2), (Throwable) e);
        }
    }

    /* renamed from: a */
    public static String m25272a(String str, String str2, String str3, String[] strArr) {
        return m25273a(str2, str3) + "?" + m25271a(str, strArr);
    }

    /* renamed from: a */
    private static String m25271a(String str, String[] strArr) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("locale=");
            sb.append(m25275a(str));
            str2 = "&";
        } else {
            str2 = "";
        }
        if (strArr != null) {
            if (strArr.length % 2 != 0) {
                throw new IllegalArgumentException("'params.length' is " + strArr.length + "; expecting a multiple of two");
            }
            int i = 0;
            while (true) {
                String str3 = str2;
                if (i >= strArr.length) {
                    break;
                }
                String str4 = strArr[i];
                String str5 = strArr[i + 1];
                if (str4 == null) {
                    throw new IllegalArgumentException("params[" + i + "] is null");
                }
                str2 = str3;
                if (str5 != null) {
                    sb.append(str3);
                    sb.append(m25275a(str4));
                    sb.append("=");
                    sb.append(m25275a(str5));
                    str2 = "&";
                }
                i += 2;
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static List<AbstractC8582a.C8583a> m25270a(List<AbstractC8582a.C8583a> list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (AbstractC8582a.C8583a c8583a : list) {
            if ("Authorization".equals(c8583a.f30564a)) {
                arrayList.add(c8583a);
            }
        }
        list.removeAll(arrayList);
        return list;
    }

    /* renamed from: a */
    public static List<AbstractC8582a.C8583a> m25269a(List<AbstractC8582a.C8583a> list, C8577h c8577h) {
        if (c8577h.f30545b == null) {
            return list;
        }
        list.add(new AbstractC8582a.C8583a("Dropbox-API-User-Locale", c8577h.f30545b));
        return list;
    }

    /* renamed from: a */
    public static List<AbstractC8582a.C8583a> m25268a(List<AbstractC8582a.C8583a> list, C8577h c8577h, String str) {
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        arrayList.add(new AbstractC8582a.C8583a("User-Agent", c8577h.f30544a + StringUtils.SPACE + str + "/" + C8604j.f30611a));
        return arrayList;
    }

    /* renamed from: a */
    public static List<AbstractC8582a.C8583a> m25267a(List<AbstractC8582a.C8583a> list, C8688a c8688a) {
        if (c8688a == null) {
            return list;
        }
        list.add(new AbstractC8582a.C8583a("Dropbox-API-Path-Root", c8688a.toString()));
        return list;
    }

    /* renamed from: a */
    public static List<AbstractC8582a.C8583a> m25266a(List<AbstractC8582a.C8583a> list, String str) {
        Objects.requireNonNull(str, "accessToken");
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
        }
        arrayList.add(new AbstractC8582a.C8583a("Authorization", "Bearer ".concat(String.valueOf(str))));
        return arrayList;
    }

    /* renamed from: a */
    public static List<AbstractC8582a.C8583a> m25265a(List<AbstractC8582a.C8583a> list, String str, String str2) {
        Objects.requireNonNull(str, "username");
        Objects.requireNonNull(str2, "password");
        list.add(new AbstractC8582a.C8583a("Authorization", "Basic ".concat(String.valueOf(C8638f.m25214b(C8638f.m25219a(str + ":" + str2))))));
        return list;
    }

    /* renamed from: a */
    public static String[] m25264a(Map<String, String> map) {
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            strArr[i] = entry.getKey();
            strArr[i + 1] = entry.getValue();
            i += 2;
        }
        return strArr;
    }

    /* renamed from: b */
    public static DbxException m25263b(AbstractC8582a.C8584b c8584b) throws NetworkIOException, BadResponseException {
        RetryException retryException;
        String m25262b = m25262b(c8584b, "X-Dropbox-Request-Id");
        int i = c8584b.f30566a;
        if (i == 400) {
            retryException = new BadRequestException(m25262b, m25277a(c8584b, m25262b));
        } else if (i == 401) {
            String m25277a = m25277a(c8584b, m25262b);
            try {
                retryException = new InvalidAccessTokenException(m25262b, m25277a, (C8669b) new C8543a.C8544a(C8669b.C8671a.f30765a).deserialize(m25277a).f30448a);
            } catch (JsonParseException e) {
                throw new BadResponseException(m25262b, "Bad JSON: " + e.getMessage(), e);
            }
        } else if (i == 403) {
            try {
                C8543a deserialize = new C8543a.C8544a(C8665a.C8667a.f30754a).deserialize(c8584b.f30567b);
                String str = null;
                if (deserialize.f30449b != null) {
                    str = deserialize.f30449b.toString();
                }
                retryException = new AccessErrorException(m25262b, str, (C8665a) deserialize.f30448a);
            } catch (JsonProcessingException e2) {
                throw new BadResponseException(m25262b, "Bad JSON: " + e2.getMessage(), e2);
            } catch (IOException e3) {
                throw new NetworkIOException(e3);
            }
        } else if (i == 422) {
            try {
                C8543a deserialize2 = new C8543a.C8544a(C8692b.C8694a.f30813a).deserialize(c8584b.f30567b);
                String str2 = null;
                if (deserialize2.f30449b != null) {
                    str2 = deserialize2.f30449b.toString();
                }
                retryException = new PathRootErrorException(m25262b, str2, (C8692b) deserialize2.f30448a);
            } catch (JsonProcessingException e4) {
                throw new BadResponseException(m25262b, "Bad JSON: " + e4.getMessage(), e4);
            } catch (IOException e5) {
                throw new NetworkIOException(e5);
            }
        } else if (i == 429) {
            try {
                List<String> list = c8584b.f30568c.get("Retry-After");
                if (list == null || list.isEmpty()) {
                    throw new BadResponseException(m25262b(c8584b, "X-Dropbox-Request-Id"), "missing HTTP header \"Retry-After\"");
                }
                retryException = new RateLimitException(m25262b, null, Integer.parseInt(list.get(0)), TimeUnit.SECONDS);
            } catch (NumberFormatException e6) {
                retryException = new BadResponseException(m25262b, "Invalid value for HTTP header: \"Retry-After\"");
            }
        } else if (i == 500) {
            retryException = new ServerException(m25262b, null);
        } else if (i != 503) {
            retryException = new BadResponseCodeException(m25262b, "unexpected HTTP status code: " + c8584b.f30566a + ": " + ((String) null), c8584b.f30566a);
        } else {
            String m25262b2 = m25262b(c8584b, "Retry-After");
            if (m25262b2 != null) {
                try {
                    if (!m25262b2.trim().isEmpty()) {
                        retryException = new RetryException(m25262b, null, Integer.parseInt(m25262b2), TimeUnit.SECONDS);
                    }
                } catch (NumberFormatException e7) {
                    retryException = new BadResponseException(m25262b, "Invalid value for HTTP header: \"Retry-After\"");
                }
            }
            retryException = new RetryException(m25262b, null);
        }
        return retryException;
    }

    /* renamed from: b */
    private static String m25262b(AbstractC8582a.C8584b c8584b, String str) {
        List<String> list = c8584b.f30568c.get(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: b */
    private static List<AbstractC8582a.C8583a> m25261b(List<AbstractC8582a.C8583a> list) {
        return list == null ? new ArrayList() : new ArrayList(list);
    }

    /* renamed from: c */
    public static String m25260c(AbstractC8582a.C8584b c8584b) {
        return m25262b(c8584b, "X-Dropbox-Request-Id");
    }

    /* renamed from: d */
    private static byte[] m25259d(AbstractC8582a.C8584b c8584b) throws NetworkIOException {
        if (c8584b.f30567b == null) {
            return new byte[0];
        }
        try {
            return IOUtil.m25246a(c8584b.f30567b);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }
}
