package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.AbstractC11567h;
import com.google.android.exoplayer2.util.C11599af;
import com.google.common.base.AbstractC15392n;
import com.mopub.common.AdType;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource.class */
public interface HttpDataSource extends AbstractC11567h {

    /* renamed from: a */
    public static final AbstractC15392n<String> f38342a = _$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k.INSTANCE;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$CleartextNotPermittedException.class */
    public static final class CleartextNotPermittedException extends HttpDataSourceException {
        public CleartextNotPermittedException(IOException iOException, C11570j c11570j) {
            super("Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted", iOException, c11570j, 1);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {

        /* renamed from: a */
        public final int f38343a;

        /* renamed from: b */
        public final C11570j f38344b;

        public HttpDataSourceException(C11570j c11570j, int i) {
            this.f38344b = c11570j;
            this.f38343a = i;
        }

        public HttpDataSourceException(IOException iOException, C11570j c11570j, int i) {
            super(iOException);
            this.f38344b = c11570j;
            this.f38343a = i;
        }

        public HttpDataSourceException(String str, C11570j c11570j, int i) {
            super(str);
            this.f38344b = c11570j;
            this.f38343a = i;
        }

        public HttpDataSourceException(String str, IOException iOException, C11570j c11570j, int i) {
            super(str, iOException);
            this.f38344b = c11570j;
            this.f38343a = i;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {

        /* renamed from: c */
        public final String f38345c;

        public InvalidContentTypeException(String str, C11570j c11570j) {
            super("Invalid content type: ".concat(String.valueOf(str)), c11570j, 1);
            this.f38345c = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {

        /* renamed from: c */
        public final int f38346c;

        /* renamed from: d */
        public final String f38347d;

        /* renamed from: e */
        public final Map<String, List<String>> f38348e;

        /* renamed from: f */
        public final byte[] f38349f;

        @Deprecated
        public InvalidResponseCodeException(int i, String str, Map<String, List<String>> map, C11570j c11570j) {
            this(i, str, map, c11570j, C11599af.f38653f);
        }

        public InvalidResponseCodeException(int i, String str, Map<String, List<String>> map, C11570j c11570j, byte[] bArr) {
            super("Response code: ".concat(String.valueOf(i)), c11570j, 1);
            this.f38346c = i;
            this.f38347d = str;
            this.f38348e = map;
            this.f38349f = bArr;
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, C11570j c11570j) {
            this(i, null, map, c11570j, C11599af.f38653f);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$_CC.class */
    public final /* synthetic */ class _CC {
        /* renamed from: a */
        public static /* synthetic */ boolean m20211a(String str) {
            String m19927d = C11599af.m19927d(str);
            if (!TextUtils.isEmpty(m19927d)) {
                return (!m19927d.contains("text") || m19927d.contains("text/vtt")) && !m19927d.contains(AdType.HTML) && !m19927d.contains("xml");
            }
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.HttpDataSource$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$a.class */
    public static abstract class AbstractC11522a implements AbstractC11523b {

        /* renamed from: a */
        private final C11524c f38350a = new C11524c();

        /* renamed from: a */
        protected abstract HttpDataSource mo20210a(C11524c c11524c);

        @Override // com.google.android.exoplayer2.upstream.HttpDataSource.AbstractC11523b
        /* renamed from: b */
        public final HttpDataSource createDataSource() {
            return mo20210a(this.f38350a);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.HttpDataSource$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$b.class */
    public interface AbstractC11523b extends AbstractC11567h.AbstractC11568a {

        /* renamed from: com.google.android.exoplayer2.upstream.HttpDataSource$b$_CC */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$b$_CC.class */
        public final /* synthetic */ class _CC {
        }

        /* renamed from: b */
        HttpDataSource mo20040b();

        @Override // com.google.android.exoplayer2.upstream.AbstractC11567h.AbstractC11568a
        /* synthetic */ AbstractC11567h createDataSource();
    }

    /* renamed from: com.google.android.exoplayer2.upstream.HttpDataSource$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$c.class */
    public static final class C11524c {

        /* renamed from: a */
        private final Map<String, String> f38351a = new HashMap();

        /* renamed from: b */
        private Map<String, String> f38352b;

        /* renamed from: a */
        public final Map<String, String> m20209a() {
            Map<String, String> map;
            synchronized (this) {
                if (this.f38352b == null) {
                    this.f38352b = Collections.unmodifiableMap(new HashMap(this.f38351a));
                }
                map = this.f38352b;
            }
            return map;
        }
    }
}
