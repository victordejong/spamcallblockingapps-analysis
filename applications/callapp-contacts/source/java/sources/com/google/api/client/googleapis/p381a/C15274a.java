package com.google.api.client.googleapis.p381a;

import com.google.api.client.http.AbstractC15342s;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.http.C15330i;
import com.google.api.client.http.C15335n;
import com.google.api.client.http.C15340q;
import com.google.api.client.http.C15341r;
import com.google.api.client.http.C15343t;
import com.google.api.client.p379a.C15207aa;
import com.google.api.client.p379a.C15245o;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.api.client.googleapis.a.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/a.class */
public final class C15274a {

    /* renamed from: c */
    public long f55194c;

    /* renamed from: e */
    public long f55196e;

    /* renamed from: g */
    private final C15341r f55198g;

    /* renamed from: h */
    private final AbstractC15346w f55199h;

    /* renamed from: a */
    public boolean f55192a = false;

    /* renamed from: b */
    public int f55193b = 33554432;

    /* renamed from: d */
    public int f55195d = EnumC15275a.f55200a;

    /* renamed from: f */
    public long f55197f = -1;

    /* renamed from: com.google.api.client.googleapis.a.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/a$a.class */
    public static final class EnumC15275a extends Enum<EnumC15275a> {

        /* renamed from: a */
        public static final int f55200a = 1;

        /* renamed from: b */
        public static final int f55201b = 2;

        /* renamed from: c */
        public static final int f55202c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f55203d = {1, 2, 3};

        private EnumC15275a(String str, int i) {
            super(str, i);
        }
    }

    public C15274a(AbstractC15346w abstractC15346w, AbstractC15342s abstractC15342s) {
        this.f55199h = (AbstractC15346w) C15207aa.m9283a(abstractC15346w);
        this.f55198g = abstractC15342s == null ? abstractC15346w.createRequestFactory() : abstractC15346w.createRequestFactory(abstractC15342s);
    }

    /* renamed from: a */
    public final C15343t m9180a(long j, C15330i c15330i, C15335n c15335n, OutputStream outputStream) throws IOException {
        C15340q m9028a = this.f55198g.m9028a(c15330i);
        if (c15335n != null) {
            m9028a.m9039g().putAll(c15335n);
        }
        if (this.f55196e != 0 || j != -1) {
            StringBuilder sb = new StringBuilder();
            sb.append("bytes=");
            sb.append(this.f55196e);
            sb.append(VerificationLanguage.REGION_PREFIX);
            if (j != -1) {
                sb.append(j);
            }
            m9028a.m9039g().m9079e(sb.toString());
        }
        C15343t m9031o = m9028a.m9031o();
        try {
            C15245o.m9213a(m9031o.m9012h(), outputStream);
            return m9031o;
        } finally {
            m9031o.m9010j();
        }
    }
}
