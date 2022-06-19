package com.mopub.volley.toolbox;

import android.support.annotation.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Header;
import com.mopub.volley.VolleyLog;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
@VisibleForTesting
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$a.class */
public class DiskBasedCache$a {

    /* renamed from: a */
    public long f9314a;

    /* renamed from: b */
    public final String f9315b;

    /* renamed from: c */
    public final String f9316c;

    /* renamed from: d */
    public final long f9317d;

    /* renamed from: e */
    public final long f9318e;

    /* renamed from: f */
    public final long f9319f;

    /* renamed from: g */
    public final long f9320g;

    /* renamed from: h */
    public final List<Header> f9321h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DiskBasedCache$a(java.lang.String r14, com.mopub.volley.Cache.Entry r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.etag
            r16 = r0
            r0 = r15
            long r0 = r0.serverDate
            r17 = r0
            r0 = r15
            long r0 = r0.lastModified
            r19 = r0
            r0 = r15
            long r0 = r0.ttl
            r21 = r0
            r0 = r15
            long r0 = r0.softTtl
            r23 = r0
            r0 = r15
            java.util.List<com.mopub.volley.Header> r0 = r0.allResponseHeaders
            r25 = r0
            r0 = r25
            if (r0 == 0) goto L2e
            r0 = r25
            r15 = r0
        L2b:
            goto L89
        L2e:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.responseHeaders
            r15 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r15
            int r2 = r2.size()
            r1.<init>(r2)
            r25 = r0
            r0 = r15
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r26 = r0
        L4f:
            r0 = r25
            r15 = r0
            r0 = r26
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L2b
            r0 = r26
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r15 = r0
            r0 = r25
            com.mopub.volley.Header r1 = new com.mopub.volley.Header
            r2 = r1
            r3 = r15
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r15
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L4f
        L89:
            r0 = r13
            r1 = r14
            r2 = r16
            r3 = r17
            r4 = r19
            r5 = r21
            r6 = r23
            r7 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.DiskBasedCache$a.<init>(java.lang.String, com.mopub.volley.Cache$Entry):void");
    }

    public DiskBasedCache$a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
        this.f9315b = str;
        this.f9316c = "".equals(str2) ? null : str2;
        this.f9317d = j;
        this.f9318e = j2;
        this.f9319f = j3;
        this.f9320g = j4;
        this.f9321h = list;
    }

    /* renamed from: a */
    public static DiskBasedCache$a m36155a(DiskBasedCache$b diskBasedCache$b) throws IOException {
        if (DiskBasedCache.e(diskBasedCache$b) == 538247942) {
            String g = DiskBasedCache.g(diskBasedCache$b);
            String g2 = DiskBasedCache.g(diskBasedCache$b);
            long f = DiskBasedCache.f(diskBasedCache$b);
            long f2 = DiskBasedCache.f(diskBasedCache$b);
            long f3 = DiskBasedCache.f(diskBasedCache$b);
            long f4 = DiskBasedCache.f(diskBasedCache$b);
            int e = DiskBasedCache.e(diskBasedCache$b);
            if (e < 0) {
                throw new IOException(C22128a.m8611i2("readHeaderList size=", e));
            }
            ArrayList emptyList = e == 0 ? Collections.emptyList() : new ArrayList();
            for (int i = 0; i < e; i++) {
                emptyList.add(new Header(DiskBasedCache.g(diskBasedCache$b).intern(), DiskBasedCache.g(diskBasedCache$b).intern()));
            }
            return new DiskBasedCache$a(g, g2, f, f2, f3, f4, emptyList);
        }
        throw new IOException();
    }

    /* renamed from: b */
    public Cache.Entry m36154b(byte[] bArr) {
        Cache.Entry entry = new Cache.Entry();
        entry.data = bArr;
        entry.etag = this.f9316c;
        entry.serverDate = this.f9317d;
        entry.lastModified = this.f9318e;
        entry.ttl = this.f9319f;
        entry.softTtl = this.f9320g;
        List<Header> list = this.f9321h;
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        entry.responseHeaders = treeMap;
        entry.allResponseHeaders = Collections.unmodifiableList(this.f9321h);
        return entry;
    }

    /* renamed from: c */
    public boolean m36153c(OutputStream outputStream) {
        try {
            DiskBasedCache.i(outputStream, 538247942);
            DiskBasedCache.k(outputStream, this.f9315b);
            String str = this.f9316c;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            DiskBasedCache.k(outputStream, str2);
            DiskBasedCache.j(outputStream, this.f9317d);
            DiskBasedCache.j(outputStream, this.f9318e);
            DiskBasedCache.j(outputStream, this.f9319f);
            DiskBasedCache.j(outputStream, this.f9320g);
            List<Header> list = this.f9321h;
            if (list != null) {
                DiskBasedCache.i(outputStream, list.size());
                for (Header header : list) {
                    DiskBasedCache.k(outputStream, header.getName());
                    DiskBasedCache.k(outputStream, header.getValue());
                }
            } else {
                DiskBasedCache.i(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            VolleyLog.m36159d("%s", e.toString());
            return false;
        }
    }
}
