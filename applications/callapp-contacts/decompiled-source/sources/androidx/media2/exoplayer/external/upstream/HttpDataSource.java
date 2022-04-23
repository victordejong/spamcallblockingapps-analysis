package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.r;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource.class */
public interface HttpDataSource extends f {

    /* renamed from: a  reason: collision with root package name */
    public static final r<String> f4022a = r.f4103a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f4023a;

        /* renamed from: b  reason: collision with root package name */
        public final h f4024b;

        public HttpDataSourceException(h hVar, int i) {
            this.f4024b = hVar;
            this.f4023a = i;
        }

        public HttpDataSourceException(IOException iOException, h hVar, int i) {
            super(iOException);
            this.f4024b = hVar;
            this.f4023a = i;
        }

        public HttpDataSourceException(String str, h hVar, int i) {
            super(str);
            this.f4024b = hVar;
            this.f4023a = i;
        }

        public HttpDataSourceException(String str, IOException iOException, h hVar, int i) {
            super(str, iOException);
            this.f4024b = hVar;
            this.f4023a = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {

        /* renamed from: c  reason: collision with root package name */
        public final String f4025c;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidContentTypeException(java.lang.String r6, androidx.media2.exoplayer.external.upstream.h r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r8 = r0
                r0 = r8
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "Invalid content type: "
                r1 = r8
                java.lang.String r0 = r0.concat(r1)
                r8 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Invalid content type: "
                r1.<init>(r2)
                r8 = r0
            L_0x0020:
                r0 = r5
                r1 = r8
                r2 = r7
                r3 = 1
                r0.<init>(r1, r2, r3)
                r0 = r5
                r1 = r6
                r0.f4025c = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidContentTypeException.<init>(java.lang.String, androidx.media2.exoplayer.external.upstream.h):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {

        /* renamed from: c  reason: collision with root package name */
        public final int f4026c;

        /* renamed from: d  reason: collision with root package name */
        public final String f4027d;
        public final Map<String, List<String>> e;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidResponseCodeException(int r6, java.lang.String r7, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r8, androidx.media2.exoplayer.external.upstream.h r9) {
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
                r0.f4026c = r1
                r0 = r5
                r1 = r7
                r0.f4027d = r1
                r0 = r5
                r1 = r8
                r0.e = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidResponseCodeException.<init>(int, java.lang.String, java.util.Map, androidx.media2.exoplayer.external.upstream.h):void");
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, h hVar) {
            this(i, null, map, hVar);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$a.class */
    public static abstract class a implements s {

        /* renamed from: a  reason: collision with root package name */
        private final b f4028a = new b();

        protected abstract HttpDataSource a(b bVar);

        @Override // androidx.media2.exoplayer.external.upstream.f.a
        public final /* bridge */ /* synthetic */ f a() {
            return a(this.f4028a);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f4029a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f4030b;

        public final Map<String, String> a() {
            Map<String, String> map;
            synchronized (this) {
                if (this.f4030b == null) {
                    this.f4030b = Collections.unmodifiableMap(new HashMap(this.f4029a));
                }
                map = this.f4030b;
            }
            return map;
        }
    }
}
