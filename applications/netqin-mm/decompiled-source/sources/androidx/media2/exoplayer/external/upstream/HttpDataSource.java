package androidx.media2.exoplayer.external.upstream;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1186r;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1684g;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
import p012b.p076s.p078b.p079a.p111z0.C1699t;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource.class */
public interface HttpDataSource extends AbstractC1684g {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final C1687i dataSpec;
        public final int type;

        public HttpDataSourceException(C1687i iVar, int i) {
            this.dataSpec = iVar;
            this.type = i;
        }

        public HttpDataSourceException(IOException iOException, C1687i iVar, int i) {
            super(iOException);
            this.dataSpec = iVar;
            this.type = i;
        }

        public HttpDataSourceException(String str, C1687i iVar, int i) {
            super(str);
            this.dataSpec = iVar;
            this.type = i;
        }

        public HttpDataSourceException(String str, IOException iOException, C1687i iVar, int i) {
            super(str, iOException);
            this.dataSpec = iVar;
            this.type = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidContentTypeException(java.lang.String r6, p012b.p076s.p078b.p079a.p111z0.C1687i r7) {
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
                r0.contentType = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidContentTypeException.<init>(java.lang.String, b.s.b.a.z0.i):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;
        public final String responseMessage;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidResponseCodeException(int r6, java.lang.String r7, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r8, p012b.p076s.p078b.p079a.p111z0.C1687i r9) {
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
                r0.responseCode = r1
                r0 = r5
                r1 = r7
                r0.responseMessage = r1
                r0 = r5
                r1 = r8
                r0.headerFields = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidResponseCodeException.<init>(int, java.lang.String, java.util.Map, b.s.b.a.z0.i):void");
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, C1687i iVar) {
            this(i, null, map, iVar);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.HttpDataSource$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$a.class */
    public static abstract class AbstractC0344a implements AbstractC0345b {

        /* renamed from: a */
        public final C0346c f1982a = new C0346c();

        /* renamed from: a */
        public abstract HttpDataSource mo32340a(C0346c cVar);

        @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g.AbstractC1685a
        public final HttpDataSource createDataSource() {
            return mo32340a(this.f1982a);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.HttpDataSource$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$b.class */
    public interface AbstractC0345b extends AbstractC1684g.AbstractC1685a {
    }

    /* renamed from: androidx.media2.exoplayer.external.upstream.HttpDataSource$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$c.class */
    public static final class C0346c {

        /* renamed from: a */
        public final Map<String, String> f1983a = new HashMap();

        /* renamed from: b */
        public Map<String, String> f1984b;

        /* renamed from: a */
        public Map<String, String> m37922a() {
            Map<String, String> map;
            synchronized (this) {
                if (this.f1984b == null) {
                    this.f1984b = Collections.unmodifiableMap(new HashMap(this.f1983a));
                }
                map = this.f1984b;
            }
            return map;
        }
    }

    static {
        AbstractC1186r rVar = C1699t.f6958a;
    }
}
