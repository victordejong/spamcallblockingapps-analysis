package com.google.android.exoplayer2.upstream;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p201f1.C2819c;
import p131c.p161d.p170b.p188c.p201f1.C2829k;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource.class */
public interface HttpDataSource extends AbstractC2827j {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final C2829k dataSpec;
        public final int type;

        public HttpDataSourceException(C2829k kVar, int i) {
            this.dataSpec = kVar;
            this.type = i;
        }

        public HttpDataSourceException(IOException iOException, C2829k kVar, int i) {
            super(iOException);
            this.dataSpec = kVar;
            this.type = i;
        }

        public HttpDataSourceException(String str, C2829k kVar, int i) {
            super(str);
            this.dataSpec = kVar;
            this.type = i;
        }

        public HttpDataSourceException(String str, IOException iOException, C2829k kVar, int i) {
            super(str, iOException);
            this.dataSpec = kVar;
            this.type = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, C2829k kVar) {
            super("Invalid content type: " + str, kVar, 1);
            this.contentType = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;
        public final String responseMessage;

        public InvalidResponseCodeException(int i, String str, Map<String, List<String>> map, C2829k kVar) {
            super("Response code: " + i, kVar, 1);
            this.responseCode = i;
            this.responseMessage = str;
            this.headerFields = map;
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, C2829k kVar) {
            this(i, null, map, kVar);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.HttpDataSource$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$a.class */
    public static final class C7199a {

        /* renamed from: a */
        public final Map<String, String> f22536a = new HashMap();

        /* renamed from: b */
        public Map<String, String> f22537b;

        /* renamed from: a */
        public Map<String, String> m18286a() {
            Map<String, String> map;
            synchronized (this) {
                if (this.f22537b == null) {
                    this.f22537b = Collections.unmodifiableMap(new HashMap(this.f22536a));
                }
                map = this.f22537b;
            }
            return map;
        }
    }

    static {
        C2819c cVar = C2819c.f10258a;
    }
}
