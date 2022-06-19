package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.drm.AbstractC10964i;
import com.google.android.exoplayer2.upstream.C11569i;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.C11588t;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.drm.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/l.class */
public final class C10972l implements AbstractC10973m {

    /* renamed from: a */
    private final HttpDataSource.AbstractC11523b f35488a;

    /* renamed from: b */
    private final String f35489b;

    /* renamed from: c */
    private final boolean f35490c;

    /* renamed from: d */
    private final Map<String, String> f35491d;

    public C10972l(String str, HttpDataSource.AbstractC11523b abstractC11523b) {
        this(str, false, abstractC11523b);
    }

    public C10972l(String str, boolean z, HttpDataSource.AbstractC11523b abstractC11523b) {
        C11593a.m20022a(!z || !TextUtils.isEmpty(str));
        this.f35488a = abstractC11523b;
        this.f35489b = str;
        this.f35490c = z;
        this.f35491d = new HashMap();
    }

    /* renamed from: a */
    private static byte[] m21819a(HttpDataSource.AbstractC11523b abstractC11523b, String str, byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        Map<String, List<String>> map2;
        List<String> list;
        C11588t c11588t = new C11588t(abstractC11523b.mo20040b());
        C11570j.C11572a m20072a = new C11570j.C11572a().m20072a(str);
        m20072a.f38527e = map;
        m20072a.f38525c = 2;
        m20072a.f38526d = bArr;
        m20072a.f38531i = 1;
        C11570j m20073a = m20072a.m20073a();
        C11570j c11570j = m20073a;
        int i = 0;
        while (true) {
            try {
                C11569i c11569i = new C11569i(c11588t, c11570j);
                try {
                    byte[] m19976a = C11599af.m19976a((InputStream) c11569i);
                    C11599af.m19977a((Closeable) c11569i);
                    return m19976a;
                } catch (HttpDataSource.InvalidResponseCodeException e) {
                    String str2 = (!((e.f38346c == 307 || e.f38346c == 308) && i < 5) || (map2 = e.f38348e) == null || (list = map2.get("Location")) == null || list.isEmpty()) ? null : list.get(0);
                    if (str2 == null) {
                        throw e;
                    }
                    i++;
                    c11570j = c11570j.m20076a().m20072a(str2).m20073a();
                    C11599af.m19977a((Closeable) c11569i);
                }
            } catch (Exception e2) {
                throw new MediaDrmCallbackException(m20073a, (Uri) C11593a.m20020b(c11588t.f38621b), c11588t.mo20032b(), c11588t.f38620a, e2);
            }
        }
    }

    /* renamed from: a */
    public final void m21818a(String str, String str2) {
        C11593a.m20020b(str);
        C11593a.m20020b(str2);
        synchronized (this.f35491d) {
            this.f35491d.put(str, str2);
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10973m
    /* renamed from: a */
    public final byte[] mo21817a(AbstractC10964i.C10969e c10969e) throws MediaDrmCallbackException {
        return m21819a(this.f35488a, c10969e.f35479b + "&signedRequest=" + C11599af.m19961a(c10969e.f35478a), null, Collections.emptyMap());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L6;
     */
    @Override // com.google.android.exoplayer2.drm.AbstractC10973m
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] mo21816a(java.util.UUID r12, com.google.android.exoplayer2.drm.AbstractC10964i.C10966b r13) throws com.google.android.exoplayer2.drm.MediaDrmCallbackException {
        /*
            r11 = this;
            r0 = r13
            java.lang.String r0 = r0.f35476b
            r14 = r0
            r0 = r11
            boolean r0 = r0.f35490c
            if (r0 != 0) goto L16
            r0 = r14
            r15 = r0
            r0 = r14
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L1c
        L16:
            r0 = r11
            java.lang.String r0 = r0.f35489b
            r15 = r0
        L1c:
            r0 = r15
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L9a
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r16 = r0
            java.util.UUID r0 = com.google.android.exoplayer2.C11158f.f36543e
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3d
            java.lang.String r0 = "text/xml"
            r14 = r0
            goto L50
        L3d:
            java.util.UUID r0 = com.google.android.exoplayer2.C11158f.f36541c
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4d
            java.lang.String r0 = "application/json"
            r14 = r0
            goto L50
        L4d:
            java.lang.String r0 = "application/octet-stream"
            r14 = r0
        L50:
            r0 = r16
            java.lang.String r1 = "Content-Type"
            r2 = r14
            java.lang.Object r0 = r0.put(r1, r2)
            java.util.UUID r0 = com.google.android.exoplayer2.C11158f.f36543e
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L71
            r0 = r16
            java.lang.String r1 = "SOAPAction"
            java.lang.String r2 = "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"
            java.lang.Object r0 = r0.put(r1, r2)
        L71:
            r0 = r11
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f35491d
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r16
            r1 = r11
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.f35491d     // Catch: java.lang.Throwable -> L95
            r0.putAll(r1)     // Catch: java.lang.Throwable -> L95
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L95
            r0 = r11
            com.google.android.exoplayer2.upstream.HttpDataSource$b r0 = r0.f35488a
            r1 = r15
            r2 = r13
            byte[] r2 = r2.f35475a
            r3 = r16
            byte[] r0 = m21819a(r0, r1, r2, r3)
            return r0
        L95:
            r13 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L95
            r0 = r13
            throw r0
        L9a:
            com.google.android.exoplayer2.upstream.j$a r0 = new com.google.android.exoplayer2.upstream.j$a
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            android.net.Uri r1 = android.net.Uri.EMPTY
            r0.f38523a = r1
            com.google.android.exoplayer2.drm.MediaDrmCallbackException r0 = new com.google.android.exoplayer2.drm.MediaDrmCallbackException
            r1 = r0
            r2 = r12
            com.google.android.exoplayer2.upstream.j r2 = r2.m20073a()
            android.net.Uri r3 = android.net.Uri.EMPTY
            com.google.common.collect.x r4 = com.google.common.collect.AbstractC15556x.m8704a()
            r5 = 0
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            r7 = r6
            java.lang.String r8 = "No license URL"
            r7.<init>(r8)
            r1.<init>(r2, r3, r4, r5, r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.C10972l.mo21816a(java.util.UUID, com.google.android.exoplayer2.drm.i$b):byte[]");
    }
}
