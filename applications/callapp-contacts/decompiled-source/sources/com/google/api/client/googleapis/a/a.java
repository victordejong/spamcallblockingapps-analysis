package com.google.api.client.googleapis.a;

import com.google.api.client.a.aa;
import com.google.api.client.a.o;
import com.google.api.client.http.i;
import com.google.api.client.http.n;
import com.google.api.client.http.q;
import com.google.api.client.http.r;
import com.google.api.client.http.s;
import com.google.api.client.http.t;
import com.google.api.client.http.w;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/a.class */
public final class a {

    /* renamed from: c  reason: collision with root package name */
    public long f31712c;
    public long e;
    private final r g;
    private final w h;

    /* renamed from: a  reason: collision with root package name */
    public boolean f31710a = false;

    /* renamed from: b  reason: collision with root package name */
    public int f31711b = 33554432;

    /* renamed from: d  reason: collision with root package name */
    public int f31713d = EnumC0501a.f31714a;
    public long f = -1;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.google.api.client.googleapis.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/a/a$a.class */
    public static final class EnumC0501a extends Enum<EnumC0501a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f31714a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f31715b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f31716c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f31717d = {1, 2, 3};

        private EnumC0501a(String str, int i) {
        }
    }

    public a(w wVar, s sVar) {
        this.h = (w) aa.a(wVar);
        this.g = sVar == null ? wVar.createRequestFactory() : wVar.createRequestFactory(sVar);
    }

    public final t a(long j, i iVar, n nVar, OutputStream outputStream) throws IOException {
        q a2 = this.g.a(iVar);
        if (nVar != null) {
            a2.g().putAll(nVar);
        }
        if (!(this.e == 0 && j == -1)) {
            StringBuilder sb = new StringBuilder();
            sb.append("bytes=");
            sb.append(this.e);
            sb.append(VerificationLanguage.REGION_PREFIX);
            if (j != -1) {
                sb.append(j);
            }
            a2.g().e(sb.toString());
        }
        t o = a2.o();
        try {
            o.a(o.h(), outputStream);
            return o;
        } finally {
            o.j();
        }
    }
}
