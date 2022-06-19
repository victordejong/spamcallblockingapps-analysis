package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.AbstractC2020r;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource.class */
public interface HttpDataSource extends AbstractC1968f {

    /* renamed from: a */
    public static final AbstractC2020r<String> f7890a = C1984r.f8041a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {

        /* renamed from: a */
        public final int f7891a;

        /* renamed from: b */
        public final C1971h f7892b;

        public HttpDataSourceException(C1971h c1971h, int i) {
            this.f7892b = c1971h;
            this.f7891a = i;
        }

        public HttpDataSourceException(IOException iOException, C1971h c1971h, int i) {
            super(iOException);
            this.f7892b = c1971h;
            this.f7891a = i;
        }

        public HttpDataSourceException(String str, C1971h c1971h, int i) {
            super(str);
            this.f7892b = c1971h;
            this.f7891a = i;
        }

        public HttpDataSourceException(String str, IOException iOException, C1971h c1971h, int i) {
            super(str, iOException);
            this.f7892b = c1971h;
            this.f7891a = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {

        /* renamed from: c */
        public final String f7893c;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidContentTypeException(java.lang.String r6, androidx.media2.exoplayer.external.upstream.C1971h r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r8 = r0
                r0 = r8
                int r0 = r0.length()
                if (r0 == 0) goto L16
                java.lang.String r0 = "Invalid content type: "
                r1 = r8
                java.lang.String r0 = r0.concat(r1)
                r8 = r0
                goto L20
            L16:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Invalid content type: "
                r1.<init>(r2)
                r8 = r0
            L20:
                r0 = r5
                r1 = r8
                r2 = r7
                r3 = 1
                r0.<init>(r1, r2, r3)
                r0 = r5
                r1 = r6
                r0.f7893c = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidContentTypeException.<init>(java.lang.String, androidx.media2.exoplayer.external.upstream.h):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {

        /* renamed from: c */
        public final int f7894c;

        /* renamed from: d */
        public final String f7895d;

        /* renamed from: e */
        public final Map<String, List<String>> f7896e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidResponseCodeException(int r6, java.lang.String r7, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r8, androidx.media2.exoplayer.external.upstream.C1971h r9) {
            /*
                r5 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 26
                r1.<init>(r2)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "Response code: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r10
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r10
                java.lang.String r1 = r1.toString()
                r2 = r9
                r3 = 1
                r0.<init>(r1, r2, r3)
                r0 = r5
                r1 = r6
                r0.f7894c = r1
                r0 = r5
                r1 = r7
                r0.f7895d = r1
                r0 = r5
                r1 = r8
                r0.f7896e = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidResponseCodeException.<init>(int, java.lang.String, java.util.Map, androidx.media2.exoplayer.external.upstream.h):void");
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, C1971h c1971h) {
            this(i, null, map, c1971h);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.HttpDataSource$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$a.class */
    public static abstract class AbstractC1953a implements AbstractC1985s {

        /* renamed from: a */
        private final C1954b f7897a = new C1954b();

        /* renamed from: a */
        protected abstract HttpDataSource mo41704a(C1954b c1954b);

        @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f.AbstractC1969a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC1968f mo41195a() {
            return mo41704a(this.f7897a);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.HttpDataSource$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$b.class */
    public static final class C1954b {

        /* renamed from: a */
        private final Map<String, String> f7898a = new HashMap();

        /* renamed from: b */
        private Map<String, String> f7899b;

        /* renamed from: a */
        public final Map<String, String> m41765a() {
            Map<String, String> map;
            synchronized (this) {
                if (this.f7899b == null) {
                    this.f7899b = Collections.unmodifiableMap(new HashMap(this.f7898a));
                }
                map = this.f7899b;
            }
            return map;
        }
    }
}
