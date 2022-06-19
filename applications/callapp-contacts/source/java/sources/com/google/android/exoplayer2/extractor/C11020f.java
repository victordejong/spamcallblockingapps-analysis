package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import com.google.android.exoplayer2.extractor.flv.C11051b;
import com.google.android.exoplayer2.extractor.p327a.C10984a;
import com.google.android.exoplayer2.extractor.p328b.C10989b;
import com.google.android.exoplayer2.extractor.p329c.C10991a;
import com.google.android.exoplayer2.extractor.p330d.C11004d;
import com.google.android.exoplayer2.extractor.p331e.C11015d;
import com.google.android.exoplayer2.extractor.p332f.C11035e;
import com.google.android.exoplayer2.extractor.p332f.C11039g;
import com.google.android.exoplayer2.extractor.p333g.C11060c;
import com.google.android.exoplayer2.extractor.p334h.C11072a;
import com.google.android.exoplayer2.extractor.p334h.C11076ac;
import com.google.android.exoplayer2.extractor.p334h.C11087c;
import com.google.android.exoplayer2.extractor.p334h.C11089e;
import com.google.android.exoplayer2.extractor.p334h.C11116w;
import com.google.android.exoplayer2.extractor.p335i.C11122a;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f.class */
public final class C11020f implements AbstractC11133l {

    /* renamed from: b */
    private static final int[] f35781b = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 14};

    /* renamed from: c */
    private static final Constructor<? extends AbstractC11071h> f35782c;

    /* renamed from: d */
    private boolean f35783d;

    /* renamed from: e */
    private int f35784e;

    /* renamed from: f */
    private int f35785f;

    /* renamed from: g */
    private int f35786g;

    /* renamed from: h */
    private int f35787h;

    /* renamed from: i */
    private int f35788i;

    /* renamed from: j */
    private int f35789j;

    /* renamed from: k */
    private int f35790k;

    /* renamed from: m */
    private int f35792m;

    /* renamed from: l */
    private int f35791l = 1;

    /* renamed from: n */
    private int f35793n = 112800;

    static {
        Constructor<? extends AbstractC11071h> constructor = null;
        try {
            if (Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
                constructor = Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(AbstractC11071h.class).getConstructor(Integer.TYPE);
            }
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f35782c = constructor;
    }

    /* renamed from: a */
    private void m21686a(int i, List<AbstractC11071h> list) {
        switch (i) {
            case 0:
                list.add(new C11072a());
                return;
            case 1:
                list.add(new C11087c());
                return;
            case 2:
                list.add(new C11089e(this.f35784e | (this.f35783d ? 1 : 0)));
                return;
            case 3:
                list.add(new C10984a(this.f35785f | (this.f35783d ? 1 : 0)));
                return;
            case 4:
                Constructor<? extends AbstractC11071h> constructor = f35782c;
                if (constructor == null) {
                    list.add(new C10989b(this.f35786g));
                    return;
                }
                try {
                    list.add(constructor.newInstance(Integer.valueOf(this.f35786g)));
                    return;
                } catch (Exception e) {
                    throw new IllegalStateException("Unexpected error creating FLAC extractor", e);
                }
            case 5:
                list.add(new C11051b());
                return;
            case 6:
                list.add(new C11004d(this.f35787h));
                return;
            case 7:
                list.add(new C11015d(this.f35790k | (this.f35783d ? 1 : 0)));
                return;
            case 8:
                list.add(new C11035e(this.f35789j));
                list.add(new C11039g(this.f35788i));
                return;
            case 9:
                list.add(new C11060c());
                return;
            case 10:
                list.add(new C11116w());
                return;
            case 11:
                list.add(new C11076ac(this.f35791l, this.f35792m, this.f35793n));
                return;
            case 12:
                list.add(new C11122a());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new C10991a());
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0375 A[Catch: all -> 0x05ab, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x001c, B:9:0x0028, B:13:0x0040, B:14:0x0049, B:16:0x0117, B:20:0x0127, B:24:0x0137, B:28:0x0147, B:32:0x0157, B:36:0x0166, B:40:0x0175, B:44:0x0185, B:48:0x0195, B:52:0x01a5, B:56:0x01b5, B:60:0x01c4, B:64:0x01d3, B:68:0x01e2, B:72:0x01f2, B:76:0x0202, B:80:0x0212, B:84:0x0222, B:88:0x0233, B:92:0x0244, B:96:0x0255, B:100:0x0266, B:104:0x0277, B:108:0x0288, B:132:0x0375, B:134:0x037d, B:136:0x0385, B:138:0x038f, B:141:0x039c, B:145:0x03ac, B:147:0x03b6, B:150:0x03c3, B:154:0x03d3, B:158:0x03e3, B:162:0x03f3, B:164:0x0403, B:167:0x0410, B:171:0x0421, B:173:0x042b, B:175:0x043b, B:177:0x044b, B:180:0x045e, B:182:0x046e, B:185:0x047b, B:187:0x0485, B:189:0x048f, B:191:0x0499, B:194:0x04a6, B:196:0x04b0, B:199:0x04c3, B:201:0x04cd, B:205:0x04de, B:207:0x04e8, B:211:0x04f9, B:213:0x0503, B:230:0x055a, B:231:0x0561, B:231:0x0561, B:232:0x0564, B:240:0x0587, B:241:0x058e, B:242:0x0594), top: B:250:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0385 A[Catch: all -> 0x05ab, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x001c, B:9:0x0028, B:13:0x0040, B:14:0x0049, B:16:0x0117, B:20:0x0127, B:24:0x0137, B:28:0x0147, B:32:0x0157, B:36:0x0166, B:40:0x0175, B:44:0x0185, B:48:0x0195, B:52:0x01a5, B:56:0x01b5, B:60:0x01c4, B:64:0x01d3, B:68:0x01e2, B:72:0x01f2, B:76:0x0202, B:80:0x0212, B:84:0x0222, B:88:0x0233, B:92:0x0244, B:96:0x0255, B:100:0x0266, B:104:0x0277, B:108:0x0288, B:132:0x0375, B:134:0x037d, B:136:0x0385, B:138:0x038f, B:141:0x039c, B:145:0x03ac, B:147:0x03b6, B:150:0x03c3, B:154:0x03d3, B:158:0x03e3, B:162:0x03f3, B:164:0x0403, B:167:0x0410, B:171:0x0421, B:173:0x042b, B:175:0x043b, B:177:0x044b, B:180:0x045e, B:182:0x046e, B:185:0x047b, B:187:0x0485, B:189:0x048f, B:191:0x0499, B:194:0x04a6, B:196:0x04b0, B:199:0x04c3, B:201:0x04cd, B:205:0x04de, B:207:0x04e8, B:211:0x04f9, B:213:0x0503, B:230:0x055a, B:231:0x0561, B:231:0x0561, B:232:0x0564, B:240:0x0587, B:241:0x058e, B:242:0x0594), top: B:250:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040 A[Catch: all -> 0x05ab, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x001c, B:9:0x0028, B:13:0x0040, B:14:0x0049, B:16:0x0117, B:20:0x0127, B:24:0x0137, B:28:0x0147, B:32:0x0157, B:36:0x0166, B:40:0x0175, B:44:0x0185, B:48:0x0195, B:52:0x01a5, B:56:0x01b5, B:60:0x01c4, B:64:0x01d3, B:68:0x01e2, B:72:0x01f2, B:76:0x0202, B:80:0x0212, B:84:0x0222, B:88:0x0233, B:92:0x0244, B:96:0x0255, B:100:0x0266, B:104:0x0277, B:108:0x0288, B:132:0x0375, B:134:0x037d, B:136:0x0385, B:138:0x038f, B:141:0x039c, B:145:0x03ac, B:147:0x03b6, B:150:0x03c3, B:154:0x03d3, B:158:0x03e3, B:162:0x03f3, B:164:0x0403, B:167:0x0410, B:171:0x0421, B:173:0x042b, B:175:0x043b, B:177:0x044b, B:180:0x045e, B:182:0x046e, B:185:0x047b, B:187:0x0485, B:189:0x048f, B:191:0x0499, B:194:0x04a6, B:196:0x04b0, B:199:0x04c3, B:201:0x04cd, B:205:0x04de, B:207:0x04e8, B:211:0x04f9, B:213:0x0503, B:230:0x055a, B:231:0x0561, B:231:0x0561, B:232:0x0564, B:240:0x0587, B:241:0x058e, B:242:0x0594), top: B:250:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0553  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0573  */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11133l
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.extractor.AbstractC11071h[] mo21424a(android.net.Uri r6, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7) {
        /*
            Method dump skipped, instructions count: 1456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.C11020f.mo21424a(android.net.Uri, java.util.Map):com.google.android.exoplayer2.extractor.h[]");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11133l
    public final AbstractC11071h[] createExtractors() {
        AbstractC11071h[] mo21424a;
        synchronized (this) {
            mo21424a = mo21424a(Uri.EMPTY, new HashMap());
        }
        return mo21424a;
    }
}
