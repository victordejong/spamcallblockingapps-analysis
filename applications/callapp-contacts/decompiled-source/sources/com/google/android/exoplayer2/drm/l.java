package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.i;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.t;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/l.class */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final HttpDataSource.b f20901a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20902b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f20903c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f20904d;

    public l(String str, HttpDataSource.b bVar) {
        this(str, false, bVar);
    }

    public l(String str, boolean z, HttpDataSource.b bVar) {
        a.a(!z || !TextUtils.isEmpty(str));
        this.f20901a = bVar;
        this.f20902b = str;
        this.f20903c = z;
        this.f20904d = new HashMap();
    }

    private static byte[] a(HttpDataSource.b bVar, String str, byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        Map<String, List<String>> map2;
        List<String> list;
        t tVar = new t(bVar.b());
        j.a a2 = new j.a().a(str);
        a2.e = map;
        a2.f22210c = 2;
        a2.f22211d = bArr;
        a2.i = 1;
        j a3 = a2.a();
        j jVar = a3;
        int i = 0;
        while (true) {
            try {
                i iVar = new i(tVar, jVar);
                try {
                    byte[] a4 = af.a((InputStream) iVar);
                    af.a((Closeable) iVar);
                    return a4;
                } catch (HttpDataSource.InvalidResponseCodeException e) {
                    String str2 = (!((e.f22105c == 307 || e.f22105c == 308) && i < 5) || (map2 = e.e) == null || (list = map2.get("Location")) == null || list.isEmpty()) ? null : list.get(0);
                    if (str2 != null) {
                        i++;
                        jVar = jVar.a().a(str2).a();
                        af.a((Closeable) iVar);
                    } else {
                        throw e;
                    }
                }
            } catch (Exception e2) {
                throw new MediaDrmCallbackException(a3, (Uri) a.b(tVar.f22252b), tVar.b(), tVar.f22251a, e2);
            }
        }
    }

    public final void a(String str, String str2) {
        a.b(str);
        a.b(str2);
        synchronized (this.f20904d) {
            this.f20904d.put(str, str2);
        }
    }

    @Override // com.google.android.exoplayer2.drm.m
    public final byte[] a(i.e eVar) throws MediaDrmCallbackException {
        return a(this.f20901a, eVar.f20892b + "&signedRequest=" + af.a(eVar.f20891a), null, Collections.emptyMap());
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L_0x0016;
     */
    @Override // com.google.android.exoplayer2.drm.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] a(java.util.UUID r12, com.google.android.exoplayer2.drm.i.b r13) throws com.google.android.exoplayer2.drm.MediaDrmCallbackException {
        /*
            r11 = this;
            r0 = r13
            java.lang.String r0 = r0.f20889b
            r14 = r0
            r0 = r11
            boolean r0 = r0.f20903c
            if (r0 != 0) goto L_0x0016
            r0 = r14
            r15 = r0
            r0 = r14
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x001c
        L_0x0016:
            r0 = r11
            java.lang.String r0 = r0.f20902b
            r15 = r0
        L_0x001c:
            r0 = r15
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x009a
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r16 = r0
            java.util.UUID r0 = com.google.android.exoplayer2.f.e
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003d
            java.lang.String r0 = "text/xml"
            r14 = r0
            goto L_0x0050
        L_0x003d:
            java.util.UUID r0 = com.google.android.exoplayer2.f.f21361c
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004d
            java.lang.String r0 = "application/json"
            r14 = r0
            goto L_0x0050
        L_0x004d:
            java.lang.String r0 = "application/octet-stream"
            r14 = r0
        L_0x0050:
            r0 = r16
            java.lang.String r1 = "Content-Type"
            r2 = r14
            java.lang.Object r0 = r0.put(r1, r2)
            java.util.UUID r0 = com.google.android.exoplayer2.f.e
            r1 = r12
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0071
            r0 = r16
            java.lang.String r1 = "SOAPAction"
            java.lang.String r2 = "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x0071:
            r0 = r11
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f20904d
            r12 = r0
            r0 = r12
            monitor-enter(r0)
            r0 = r16
            r1 = r11
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.f20904d     // Catch: all -> 0x0095
            r0.putAll(r1)     // Catch: all -> 0x0095
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x0095
            r0 = r11
            com.google.android.exoplayer2.upstream.HttpDataSource$b r0 = r0.f20901a
            r1 = r15
            r2 = r13
            byte[] r2 = r2.f20888a
            r3 = r16
            byte[] r0 = a(r0, r1, r2, r3)
            return r0
        L_0x0095:
            r13 = move-exception
            r0 = r12
            monitor-exit(r0)     // Catch: all -> 0x0095
            r0 = r13
            throw r0
        L_0x009a:
            com.google.android.exoplayer2.upstream.j$a r0 = new com.google.android.exoplayer2.upstream.j$a
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            android.net.Uri r1 = android.net.Uri.EMPTY
            r0.f22208a = r1
            com.google.android.exoplayer2.drm.MediaDrmCallbackException r0 = new com.google.android.exoplayer2.drm.MediaDrmCallbackException
            r1 = r0
            r2 = r12
            com.google.android.exoplayer2.upstream.j r2 = r2.a()
            android.net.Uri r3 = android.net.Uri.EMPTY
            com.google.common.collect.x r4 = com.google.common.collect.x.a()
            r5 = 0
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            r7 = r6
            java.lang.String r8 = "No license URL"
            r7.<init>(r8)
            r1.<init>(r2, r3, r4, r5, r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.l.a(java.util.UUID, com.google.android.exoplayer2.drm.i$b):byte[]");
    }
}
