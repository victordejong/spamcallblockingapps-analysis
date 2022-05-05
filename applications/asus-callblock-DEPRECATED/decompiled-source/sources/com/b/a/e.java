package com.b.a;

import com.b.a.a.a.g;
import com.b.a.a.c.b;
import com.b.a.a.d;
import com.b.a.q;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.ProxySelector;
import javax.net.SocketFactory;
/* loaded from: classes-dex2jar.jar:com/b/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final s f3310a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f3311b;
    u c;
    g d;
    private boolean e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/b/a/e$a.class */
    public final class a implements q.a {

        /* renamed from: b  reason: collision with root package name */
        private final int f3313b;
        private final u c;
        private final boolean d;

        a(int i, u uVar, boolean z) {
            this.f3313b = i;
            this.c = uVar;
            this.d = z;
        }

        @Override // com.b.a.q.a
        public final i a() {
            return null;
        }

        @Override // com.b.a.q.a
        public final w a(u uVar) {
            w a2;
            if (this.f3313b < e.this.f3310a.h.size()) {
                a2 = e.this.f3310a.h.get(this.f3313b).a(new a(this.f3313b + 1, uVar, this.d));
            } else {
                a2 = e.this.a(uVar, this.d);
            }
            return a2;
        }

        @Override // com.b.a.q.a
        public final u b() {
            return this.c;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(s sVar, u uVar) {
        s sVar2 = new s(sVar);
        if (sVar2.j == null) {
            sVar2.j = ProxySelector.getDefault();
        }
        if (sVar2.k == null) {
            sVar2.k = CookieHandler.getDefault();
        }
        if (sVar2.m == null) {
            sVar2.m = SocketFactory.getDefault();
        }
        if (sVar2.n == null) {
            sVar2.n = sVar.a();
        }
        if (sVar2.o == null) {
            sVar2.o = b.f3288a;
        }
        if (sVar2.p == null) {
            sVar2.p = f.f3314a;
        }
        if (sVar2.q == null) {
            sVar2.q = com.b.a.a.a.a.f3189a;
        }
        if (sVar2.r == null) {
            sVar2.r = j.a();
        }
        if (sVar2.f == null) {
            sVar2.f = s.f3340a;
        }
        if (sVar2.g == null) {
            sVar2.g = s.f3341b;
        }
        if (sVar2.s == null) {
            sVar2.s = d.f3290a;
        }
        this.f3310a = sVar2;
        this.c = uVar;
    }

    public final w a() {
        synchronized (this) {
            if (this.e) {
                throw new IllegalStateException("Already Executed");
            }
            this.e = true;
        }
        try {
            this.f3310a.d.a(this);
            w a2 = new a(0, this.c, false).a(this.c);
            if (a2 != null) {
                return a2;
            }
            throw new IOException("Canceled");
        } finally {
            this.f3310a.d.b(this);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0076, code lost:
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x0be1, code lost:
        if (r0.l.f3345b.equals("HEAD") == false) goto L_0x0b74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x011e, code lost:
        if ((r0.d() || r0.b() || r0.a() || r0.e()) != false) goto L_0x0121;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:282:0x07dd A[Catch: IOException -> 0x00aa, TryCatch #0 {IOException -> 0x00aa, blocks: (B:18:0x008a, B:20:0x0098, B:22:0x00a0, B:23:0x00a9, B:58:0x0141, B:60:0x0156, B:62:0x0167, B:64:0x016d, B:67:0x017c, B:69:0x0185, B:71:0x0191, B:73:0x019a, B:75:0x01ad, B:77:0x01ba, B:79:0x01d6, B:81:0x01df, B:83:0x01eb, B:85:0x0200, B:86:0x0207, B:86:0x0207, B:87:0x020a, B:89:0x0223, B:92:0x0235, B:96:0x023f, B:98:0x024d, B:100:0x025c, B:102:0x027f, B:104:0x0287, B:106:0x0290, B:108:0x0296, B:110:0x029e, B:112:0x02a6, B:113:0x02af, B:116:0x02b5, B:118:0x02c0, B:120:0x02cb, B:121:0x02dd, B:123:0x02ed, B:124:0x02ff, B:126:0x030f, B:128:0x031a, B:128:0x031a, B:129:0x031d, B:130:0x032c, B:132:0x0334, B:135:0x034c, B:137:0x0355, B:139:0x036a, B:141:0x0397, B:143:0x03a6, B:145:0x03ad, B:147:0x03c0, B:149:0x03c7, B:152:0x03d7, B:154:0x03e5, B:158:0x03f1, B:160:0x03f9, B:162:0x0408, B:167:0x041c, B:170:0x0430, B:174:0x0444, B:176:0x0453, B:182:0x0463, B:183:0x046e, B:183:0x046e, B:184:0x0471, B:186:0x0485, B:188:0x048d, B:190:0x0495, B:192:0x04a1, B:196:0x04bd, B:197:0x04c7, B:199:0x04cf, B:201:0x04e0, B:203:0x04e8, B:205:0x04f4, B:208:0x0506, B:209:0x0511, B:213:0x052d, B:215:0x053e, B:217:0x054c, B:219:0x0557, B:220:0x0569, B:222:0x0571, B:223:0x0581, B:225:0x0589, B:226:0x0599, B:227:0x05a7, B:229:0x05af, B:231:0x05ef, B:233:0x061b, B:235:0x0633, B:237:0x063b, B:239:0x0643, B:244:0x065b, B:245:0x0667, B:249:0x0671, B:251:0x0692, B:253:0x069f, B:255:0x06a7, B:257:0x06af, B:258:0x06bb, B:259:0x06bc, B:259:0x06bc, B:260:0x06bf, B:261:0x06cd, B:262:0x06f5, B:264:0x06fd, B:266:0x0718, B:268:0x071e, B:270:0x0751, B:271:0x0761, B:272:0x07a7, B:274:0x07af, B:276:0x07b7, B:278:0x07c8, B:280:0x07ce, B:282:0x07dd, B:284:0x07e9, B:290:0x0881, B:292:0x0889, B:293:0x08a6, B:295:0x08ae, B:297:0x08c0, B:299:0x08cd, B:301:0x08d7, B:303:0x08e6, B:305:0x08f1, B:307:0x091d, B:309:0x092c, B:311:0x0932, B:313:0x093a, B:315:0x0946, B:317:0x094f, B:318:0x0964, B:319:0x0971, B:321:0x097d, B:323:0x09bb, B:325:0x09cb, B:327:0x09db, B:329:0x09ee, B:331:0x09f8, B:333:0x0a02, B:335:0x0a0c, B:338:0x0a1e, B:339:0x0a2c, B:340:0x0a43, B:343:0x0a53), top: B:411:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:323:0x09bb A[Catch: IOException -> 0x00aa, TRY_LEAVE, TryCatch #0 {IOException -> 0x00aa, blocks: (B:18:0x008a, B:20:0x0098, B:22:0x00a0, B:23:0x00a9, B:58:0x0141, B:60:0x0156, B:62:0x0167, B:64:0x016d, B:67:0x017c, B:69:0x0185, B:71:0x0191, B:73:0x019a, B:75:0x01ad, B:77:0x01ba, B:79:0x01d6, B:81:0x01df, B:83:0x01eb, B:85:0x0200, B:86:0x0207, B:86:0x0207, B:87:0x020a, B:89:0x0223, B:92:0x0235, B:96:0x023f, B:98:0x024d, B:100:0x025c, B:102:0x027f, B:104:0x0287, B:106:0x0290, B:108:0x0296, B:110:0x029e, B:112:0x02a6, B:113:0x02af, B:116:0x02b5, B:118:0x02c0, B:120:0x02cb, B:121:0x02dd, B:123:0x02ed, B:124:0x02ff, B:126:0x030f, B:128:0x031a, B:128:0x031a, B:129:0x031d, B:130:0x032c, B:132:0x0334, B:135:0x034c, B:137:0x0355, B:139:0x036a, B:141:0x0397, B:143:0x03a6, B:145:0x03ad, B:147:0x03c0, B:149:0x03c7, B:152:0x03d7, B:154:0x03e5, B:158:0x03f1, B:160:0x03f9, B:162:0x0408, B:167:0x041c, B:170:0x0430, B:174:0x0444, B:176:0x0453, B:182:0x0463, B:183:0x046e, B:183:0x046e, B:184:0x0471, B:186:0x0485, B:188:0x048d, B:190:0x0495, B:192:0x04a1, B:196:0x04bd, B:197:0x04c7, B:199:0x04cf, B:201:0x04e0, B:203:0x04e8, B:205:0x04f4, B:208:0x0506, B:209:0x0511, B:213:0x052d, B:215:0x053e, B:217:0x054c, B:219:0x0557, B:220:0x0569, B:222:0x0571, B:223:0x0581, B:225:0x0589, B:226:0x0599, B:227:0x05a7, B:229:0x05af, B:231:0x05ef, B:233:0x061b, B:235:0x0633, B:237:0x063b, B:239:0x0643, B:244:0x065b, B:245:0x0667, B:249:0x0671, B:251:0x0692, B:253:0x069f, B:255:0x06a7, B:257:0x06af, B:258:0x06bb, B:259:0x06bc, B:259:0x06bc, B:260:0x06bf, B:261:0x06cd, B:262:0x06f5, B:264:0x06fd, B:266:0x0718, B:268:0x071e, B:270:0x0751, B:271:0x0761, B:272:0x07a7, B:274:0x07af, B:276:0x07b7, B:278:0x07c8, B:280:0x07ce, B:282:0x07dd, B:284:0x07e9, B:290:0x0881, B:292:0x0889, B:293:0x08a6, B:295:0x08ae, B:297:0x08c0, B:299:0x08cd, B:301:0x08d7, B:303:0x08e6, B:305:0x08f1, B:307:0x091d, B:309:0x092c, B:311:0x0932, B:313:0x093a, B:315:0x0946, B:317:0x094f, B:318:0x0964, B:319:0x0971, B:321:0x097d, B:323:0x09bb, B:325:0x09cb, B:327:0x09db, B:329:0x09ee, B:331:0x09f8, B:333:0x0a02, B:335:0x0a0c, B:338:0x0a1e, B:339:0x0a2c, B:340:0x0a43, B:343:0x0a53), top: B:411:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0c65  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0c8d  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0b0e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0139  */
    /* JADX WARN: Type inference failed for: r0v399, types: [long] */
    /* JADX WARN: Type inference failed for: r17v13 */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v16, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v21 */
    /* JADX WARN: Type inference failed for: r17v22 */
    /* JADX WARN: Type inference failed for: r17v23 */
    /* JADX WARN: Type inference failed for: r17v3, types: [long] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v1, types: [long] */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r30v4 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.b.a.w a(com.b.a.u r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 3338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.e.a(com.b.a.u, boolean):com.b.a.w");
    }
}
