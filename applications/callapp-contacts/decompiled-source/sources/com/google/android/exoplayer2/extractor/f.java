package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.b.b;
import com.google.android.exoplayer2.extractor.d.d;
import com.google.android.exoplayer2.extractor.f.g;
import com.google.android.exoplayer2.extractor.h.a;
import com.google.android.exoplayer2.extractor.h.ac;
import com.google.android.exoplayer2.extractor.h.c;
import com.google.android.exoplayer2.extractor.h.e;
import com.google.android.exoplayer2.extractor.h.w;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f.class */
public final class f implements l {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f21010b = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};

    /* renamed from: c  reason: collision with root package name */
    private static final Constructor<? extends h> f21011c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f21012d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int m;
    private int l = 1;
    private int n = 112800;

    static {
        Constructor<? extends h> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(h.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f21011c = constructor;
    }

    private void a(int i, List<h> list) {
        switch (i) {
            case 0:
                list.add(new a());
                return;
            case 1:
                list.add(new c());
                return;
            case 2:
                list.add(new e(this.e | (this.f21012d ? 1 : 0)));
                return;
            case 3:
                list.add(new com.google.android.exoplayer2.extractor.a.a(this.f | (this.f21012d ? 1 : 0)));
                return;
            case 4:
                Constructor<? extends h> constructor = f21011c;
                if (constructor != null) {
                    try {
                        list.add((h) constructor.newInstance(Integer.valueOf(this.g)));
                        return;
                    } catch (Exception e) {
                        throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                    }
                } else {
                    list.add(new b(this.g));
                    return;
                }
            case 5:
                list.add(new com.google.android.exoplayer2.extractor.flv.b());
                return;
            case 6:
                list.add(new d(this.h));
                return;
            case 7:
                list.add(new com.google.android.exoplayer2.extractor.e.d(this.k | (this.f21012d ? 1 : 0)));
                return;
            case 8:
                list.add(new com.google.android.exoplayer2.extractor.f.e(this.j));
                list.add(new g(this.i));
                return;
            case 9:
                list.add(new com.google.android.exoplayer2.extractor.g.c());
                return;
            case 10:
                list.add(new w());
                return;
            case 11:
                list.add(new ac(this.l, this.m, this.n));
                return;
            case 12:
                list.add(new com.google.android.exoplayer2.extractor.i.a());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new com.google.android.exoplayer2.extractor.c.a());
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0375 A[Catch: all -> 0x05ab, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x001c, B:9:0x0028, B:13:0x0040, B:14:0x0049, B:16:0x0117, B:20:0x0127, B:24:0x0137, B:28:0x0147, B:32:0x0157, B:36:0x0166, B:40:0x0175, B:44:0x0185, B:48:0x0195, B:52:0x01a5, B:56:0x01b5, B:60:0x01c4, B:64:0x01d3, B:68:0x01e2, B:72:0x01f2, B:76:0x0202, B:80:0x0212, B:84:0x0222, B:88:0x0233, B:92:0x0244, B:96:0x0255, B:100:0x0266, B:104:0x0277, B:108:0x0288, B:132:0x0375, B:134:0x037d, B:136:0x0385, B:138:0x038f, B:141:0x039c, B:145:0x03ac, B:147:0x03b6, B:150:0x03c3, B:154:0x03d3, B:158:0x03e3, B:162:0x03f3, B:164:0x0403, B:167:0x0410, B:171:0x0421, B:173:0x042b, B:175:0x043b, B:177:0x044b, B:180:0x045e, B:182:0x046e, B:185:0x047b, B:187:0x0485, B:189:0x048f, B:191:0x0499, B:194:0x04a6, B:196:0x04b0, B:199:0x04c3, B:201:0x04cd, B:205:0x04de, B:207:0x04e8, B:211:0x04f9, B:213:0x0503, B:230:0x055a, B:231:0x0561, B:231:0x0561, B:232:0x0564, B:240:0x0587, B:241:0x058e, B:242:0x0594), top: B:250:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0385 A[Catch: all -> 0x05ab, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x001c, B:9:0x0028, B:13:0x0040, B:14:0x0049, B:16:0x0117, B:20:0x0127, B:24:0x0137, B:28:0x0147, B:32:0x0157, B:36:0x0166, B:40:0x0175, B:44:0x0185, B:48:0x0195, B:52:0x01a5, B:56:0x01b5, B:60:0x01c4, B:64:0x01d3, B:68:0x01e2, B:72:0x01f2, B:76:0x0202, B:80:0x0212, B:84:0x0222, B:88:0x0233, B:92:0x0244, B:96:0x0255, B:100:0x0266, B:104:0x0277, B:108:0x0288, B:132:0x0375, B:134:0x037d, B:136:0x0385, B:138:0x038f, B:141:0x039c, B:145:0x03ac, B:147:0x03b6, B:150:0x03c3, B:154:0x03d3, B:158:0x03e3, B:162:0x03f3, B:164:0x0403, B:167:0x0410, B:171:0x0421, B:173:0x042b, B:175:0x043b, B:177:0x044b, B:180:0x045e, B:182:0x046e, B:185:0x047b, B:187:0x0485, B:189:0x048f, B:191:0x0499, B:194:0x04a6, B:196:0x04b0, B:199:0x04c3, B:201:0x04cd, B:205:0x04de, B:207:0x04e8, B:211:0x04f9, B:213:0x0503, B:230:0x055a, B:231:0x0561, B:231:0x0561, B:232:0x0564, B:240:0x0587, B:241:0x058e, B:242:0x0594), top: B:250:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040 A[Catch: all -> 0x05ab, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x001c, B:9:0x0028, B:13:0x0040, B:14:0x0049, B:16:0x0117, B:20:0x0127, B:24:0x0137, B:28:0x0147, B:32:0x0157, B:36:0x0166, B:40:0x0175, B:44:0x0185, B:48:0x0195, B:52:0x01a5, B:56:0x01b5, B:60:0x01c4, B:64:0x01d3, B:68:0x01e2, B:72:0x01f2, B:76:0x0202, B:80:0x0212, B:84:0x0222, B:88:0x0233, B:92:0x0244, B:96:0x0255, B:100:0x0266, B:104:0x0277, B:108:0x0288, B:132:0x0375, B:134:0x037d, B:136:0x0385, B:138:0x038f, B:141:0x039c, B:145:0x03ac, B:147:0x03b6, B:150:0x03c3, B:154:0x03d3, B:158:0x03e3, B:162:0x03f3, B:164:0x0403, B:167:0x0410, B:171:0x0421, B:173:0x042b, B:175:0x043b, B:177:0x044b, B:180:0x045e, B:182:0x046e, B:185:0x047b, B:187:0x0485, B:189:0x048f, B:191:0x0499, B:194:0x04a6, B:196:0x04b0, B:199:0x04c3, B:201:0x04cd, B:205:0x04de, B:207:0x04e8, B:211:0x04f9, B:213:0x0503, B:230:0x055a, B:231:0x0561, B:231:0x0561, B:232:0x0564, B:240:0x0587, B:241:0x058e, B:242:0x0594), top: B:250:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0573  */
    @Override // com.google.android.exoplayer2.extractor.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.extractor.h[] a(android.net.Uri r6, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7) {
        /*
            Method dump skipped, instructions count: 1456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.a(android.net.Uri, java.util.Map):com.google.android.exoplayer2.extractor.h[]");
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public final h[] createExtractors() {
        h[] a2;
        synchronized (this) {
            a2 = a(Uri.EMPTY, new HashMap());
        }
        return a2;
    }
}
