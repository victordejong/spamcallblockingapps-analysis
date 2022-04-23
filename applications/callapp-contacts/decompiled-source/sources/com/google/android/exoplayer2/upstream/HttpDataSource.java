package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.util.af;
import com.google.common.base.n;
import com.mopub.common.AdType;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource.class */
public interface HttpDataSource extends h {

    /* renamed from: a  reason: collision with root package name */
    public static final n<String> f22101a = _$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k.INSTANCE;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException.class */
    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        public CleartextNotPermittedException(IOException iOException, j jVar) {
            super("Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted", iOException, jVar, 1);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f22102a;

        /* renamed from: b  reason: collision with root package name */
        public final j f22103b;

        public HttpDataSourceException(j jVar, int i) {
            this.f22103b = jVar;
            this.f22102a = i;
        }

        public HttpDataSourceException(IOException iOException, j jVar, int i) {
            super(iOException);
            this.f22103b = jVar;
            this.f22102a = i;
        }

        public HttpDataSourceException(String str, j jVar, int i) {
            super(str);
            this.f22103b = jVar;
            this.f22102a = i;
        }

        public HttpDataSourceException(String str, IOException iOException, j jVar, int i) {
            super(str, iOException);
            this.f22103b = jVar;
            this.f22102a = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {

        /* renamed from: c  reason: collision with root package name */
        public final String f22104c;

        public InvalidContentTypeException(String str, j jVar) {
            super("Invalid content type: ".concat(String.valueOf(str)), jVar, 1);
            this.f22104c = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {

        /* renamed from: c  reason: collision with root package name */
        public final int f22105c;

        /* renamed from: d  reason: collision with root package name */
        public final String f22106d;
        public final Map<String, List<String>> e;
        public final byte[] f;

        @Deprecated
        public InvalidResponseCodeException(int i, String str, Map<String, List<String>> map, j jVar) {
            this(i, str, map, jVar, af.f);
        }

        public InvalidResponseCodeException(int i, String str, Map<String, List<String>> map, j jVar, byte[] bArr) {
            super("Response code: ".concat(String.valueOf(i)), jVar, 1);
            this.f22105c = i;
            this.f22106d = str;
            this.e = map;
            this.f = bArr;
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, j jVar) {
            this(i, null, map, jVar, af.f);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$_CC.class */
    public final /* synthetic */ class _CC {
        public static /* synthetic */ boolean a(String str) {
            String d2 = af.d(str);
            if (!TextUtils.isEmpty(d2)) {
                return (!d2.contains("text") || d2.contains("text/vtt")) && !d2.contains(AdType.HTML) && !d2.contains("xml");
            }
            return false;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$a.class */
    public static abstract class a implements b {

        /* renamed from: a  reason: collision with root package name */
        private final c f22107a = new c();

        protected abstract HttpDataSource a(c cVar);

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.b
        /* renamed from: b */
        public final HttpDataSource createDataSource() {
            return a(this.f22107a);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$b.class */
    public interface b extends h.a {

        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$b$_CC.class */
        public final /* synthetic */ class _CC {
        }

        HttpDataSource b();

        @Override // com.google.android.exoplayer2.upstream.h.a
        /* synthetic */ h createDataSource();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f22108a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f22109b;

        public final Map<String, String> a() {
            Map<String, String> map;
            synchronized (this) {
                if (this.f22109b == null) {
                    this.f22109b = Collections.unmodifiableMap(new HashMap(this.f22108a));
                }
                map = this.f22109b;
            }
            return map;
        }
    }
}
