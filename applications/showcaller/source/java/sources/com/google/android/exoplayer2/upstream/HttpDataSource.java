package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.util.AbstractC5538x;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource.class */
public interface HttpDataSource extends AbstractC5478j {

    /* renamed from: a */
    public static final AbstractC5538x<String> f17684a = C5470c.f17729a;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {
        public final C5481l dataSpec;
        public final int type;

        public HttpDataSourceException(C5481l c5481l, int i) {
            this.dataSpec = c5481l;
            this.type = i;
        }

        public HttpDataSourceException(IOException iOException, C5481l c5481l, int i) {
            super(iOException);
            this.dataSpec = c5481l;
            this.type = i;
        }

        public HttpDataSourceException(String str, C5481l c5481l, int i) {
            super(str);
            this.dataSpec = c5481l;
            this.type = i;
        }

        public HttpDataSourceException(String str, IOException iOException, C5481l c5481l, int i) {
            super(str, iOException);
            this.dataSpec = c5481l;
            this.type = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        public InvalidContentTypeException(String str, C5481l c5481l) {
            super("Invalid content type: " + str, c5481l, 1);
            this.contentType = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;
        public final String responseMessage;

        public InvalidResponseCodeException(int i, String str, Map<String, List<String>> map, C5481l c5481l) {
            super("Response code: " + i, c5481l, 1);
            this.responseCode = i;
            this.responseMessage = str;
            this.headerFields = map;
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, C5481l c5481l) {
            this(i, null, map, c5481l);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.HttpDataSource$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$a.class */
    public static abstract class AbstractC5459a implements AbstractC5478j.AbstractC5479a {

        /* renamed from: a */
        private final C5460b f17685a = new C5460b();

        /* renamed from: b */
        public final HttpDataSource mo18976a() {
            return mo18963c(this.f17685a);
        }

        /* renamed from: c */
        protected abstract HttpDataSource mo18963c(C5460b c5460b);
    }

    /* renamed from: com.google.android.exoplayer2.upstream.HttpDataSource$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$b.class */
    public static final class C5460b {

        /* renamed from: a */
        private final Map<String, String> f17686a = new HashMap();

        /* renamed from: b */
        private Map<String, String> f17687b;

        /* renamed from: a */
        public Map<String, String> m19055a() {
            Map<String, String> map;
            synchronized (this) {
                if (this.f17687b == null) {
                    this.f17687b = Collections.unmodifiableMap(new HashMap(this.f17686a));
                }
                map = this.f17687b;
            }
            return map;
        }
    }
}
