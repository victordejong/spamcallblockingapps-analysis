package com.b.a.a.a;

import com.b.a.p;
import com.b.a.u;
import com.b.a.w;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final u f3190a;

    /* renamed from: b  reason: collision with root package name */
    public final w f3191b;

    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f3192a;

        /* renamed from: b  reason: collision with root package name */
        public final u f3193b;
        public final w c;
        public Date d;
        public String e;
        public Date f;
        public String g;
        public Date h;
        public long i;
        public long j;
        public String k;
        public int l;

        public a(long j, u uVar, w wVar) {
            this.l = -1;
            this.f3192a = j;
            this.f3193b = uVar;
            this.c = wVar;
            if (wVar != null) {
                p pVar = wVar.f;
                int length = pVar.f3336a.length / 2;
                for (int i = 0; i < length; i++) {
                    String a2 = pVar.a(i);
                    String b2 = pVar.b(i);
                    if ("Date".equalsIgnoreCase(a2)) {
                        this.d = f.a(b2);
                        this.e = b2;
                    } else if ("Expires".equalsIgnoreCase(a2)) {
                        this.h = f.a(b2);
                    } else if ("Last-Modified".equalsIgnoreCase(a2)) {
                        this.f = f.a(b2);
                        this.g = b2;
                    } else if ("ETag".equalsIgnoreCase(a2)) {
                        this.k = b2;
                    } else if ("Age".equalsIgnoreCase(a2)) {
                        this.l = d.b(b2, -1);
                    } else if (j.f3213b.equalsIgnoreCase(a2)) {
                        this.i = Long.parseLong(b2);
                    } else if (j.c.equalsIgnoreCase(a2)) {
                        this.j = Long.parseLong(b2);
                    }
                }
            }
        }

        public static boolean a(u uVar) {
            return (uVar.a("If-Modified-Since") == null && uVar.a("If-None-Match") == null) ? false : true;
        }
    }

    private c(u uVar, w wVar) {
        this.f3190a = uVar;
        this.f3191b = wVar;
    }

    public /* synthetic */ c(u uVar, w wVar, byte b2) {
        this(uVar, wVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a3, code lost:
        if (r3.c().f != false) goto L_0x00a6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.b.a.w r3, com.b.a.u r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r3
            int r0 = r0.c
            switch(r0) {
                case 200: goto L_0x00a6;
                case 203: goto L_0x00a6;
                case 204: goto L_0x00a6;
                case 300: goto L_0x00a6;
                case 301: goto L_0x00a6;
                case 302: goto L_0x007c;
                case 307: goto L_0x007c;
                case 308: goto L_0x00a6;
                case 404: goto L_0x00a6;
                case 405: goto L_0x00a6;
                case 410: goto L_0x00a6;
                case 414: goto L_0x00a6;
                case 501: goto L_0x00a6;
                default: goto L_0x0078;
            }
        L_0x0078:
            r0 = r5
            r6 = r0
        L_0x007a:
            r0 = r6
            return r0
        L_0x007c:
            r0 = r3
            java.lang.String r1 = "Expires"
            java.lang.String r0 = r0.a(r1)
            if (r0 != 0) goto L_0x00a6
            r0 = r3
            com.b.a.d r0 = r0.c()
            int r0 = r0.e
            r1 = -1
            if (r0 != r1) goto L_0x00a6
            r0 = r3
            com.b.a.d r0 = r0.c()
            boolean r0 = r0.g
            if (r0 != 0) goto L_0x00a6
            r0 = r5
            r6 = r0
            r0 = r3
            com.b.a.d r0 = r0.c()
            boolean r0 = r0.f
            if (r0 == 0) goto L_0x007a
        L_0x00a6:
            r0 = r5
            r6 = r0
            r0 = r3
            com.b.a.d r0 = r0.c()
            boolean r0 = r0.d
            if (r0 != 0) goto L_0x007a
            r0 = r5
            r6 = r0
            r0 = r4
            com.b.a.d r0 = r0.d()
            boolean r0 = r0.d
            if (r0 != 0) goto L_0x007a
            r0 = 1
            r6 = r0
            goto L_0x007a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.c.a(com.b.a.w, com.b.a.u):boolean");
    }
}
