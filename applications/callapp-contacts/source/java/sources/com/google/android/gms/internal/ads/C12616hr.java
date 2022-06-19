package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.common.util.C12103g;
import java.util.Collections;
import java.util.Map;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
/* renamed from: com.google.android.gms.internal.ads.hr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/hr.class */
public final class C12616hr implements AbstractC12607hi<adt> {

    /* renamed from: d */
    private static final Map<String, Integer> f49351d;

    /* renamed from: a */
    private final zza f49352a;

    /* renamed from: b */
    private final C12831pp f49353b;

    /* renamed from: c */
    private final AbstractC12841pz f49354c;

    static {
        Map m19042a = C12103g.m19042a(7);
        for (int i = 0; i < 7; i++) {
            m19042a.put(new String[]{"resize", "playVideo", MRAIDNativeFeature.STORE_PICTURE, "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}[i], new Integer[]{1, 2, 3, 4, 5, 6, 7}[i]);
        }
        f49351d = Collections.unmodifiableMap(m19042a);
    }

    public C12616hr(zza zzaVar, C12831pp c12831pp, AbstractC12841pz abstractC12841pz) {
        this.f49352a = zzaVar;
        this.f49353b = c12831pp;
        this.f49354c = abstractC12841pz;
    }

    /* JADX WARN: Code restructure failed: missing block: B:257:0x0740, code lost:
        if ((r12 + 50) <= r0[1]) goto L258;
     */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0726  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0763  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0768 A[Catch: all -> 0x0cc0, TRY_ENTER, TryCatch #0 {, blocks: (B:119:0x0317, B:121:0x031f, B:122:0x0328, B:124:0x032a, B:126:0x0337, B:127:0x0340, B:129:0x0342, B:131:0x0352, B:132:0x035b, B:134:0x035d, B:136:0x036a, B:137:0x0373, B:139:0x0375, B:141:0x0387, B:143:0x03a0, B:145:0x03b1, B:147:0x03ca, B:149:0x03db, B:151:0x03f4, B:153:0x0405, B:155:0x041e, B:157:0x042f, B:159:0x0444, B:161:0x0457, B:163:0x045f, B:165:0x0465, B:172:0x047b, B:173:0x0484, B:175:0x0486, B:177:0x0493, B:180:0x049d, B:182:0x04c4, B:184:0x04ce, B:187:0x04db, B:189:0x04e5, B:192:0x04f2, B:194:0x04fc, B:196:0x0506, B:197:0x050f, B:199:0x0517, B:200:0x0523, B:202:0x055f, B:206:0x0570, B:210:0x0581, B:214:0x0592, B:218:0x05a3, B:222:0x05b4, B:239:0x05eb, B:240:0x0611, B:241:0x063e, B:242:0x066d, B:245:0x069f, B:246:0x06d2, B:247:0x06fb, B:259:0x074c, B:260:0x0755, B:266:0x0768, B:268:0x0770, B:269:0x0793, B:271:0x07b4, B:275:0x07dd, B:277:0x07ea, B:283:0x0808, B:285:0x0816, B:287:0x0822, B:291:0x0833, B:292:0x083c, B:294:0x083e, B:296:0x0878, B:298:0x0880, B:300:0x089a, B:301:0x08f6, B:302:0x08fe, B:303:0x0901, B:308:0x0979, B:309:0x09e0, B:313:0x0a27, B:318:0x0a3c, B:323:0x0a51, B:328:0x0a66, B:333:0x0a7b, B:338:0x0a90, B:354:0x0ac1, B:355:0x0ad2, B:356:0x0ae3, B:357:0x0af4, B:358:0x0b05, B:359:0x0b0f, B:360:0x0b20, B:362:0x0b30, B:364:0x0b64, B:366:0x0b99, B:368:0x0b9f, B:370:0x0bab, B:372:0x0bc4, B:373:0x0be2, B:374:0x0be5, B:376:0x0c21, B:378:0x0c2a, B:379:0x0c31, B:382:0x0c34, B:384:0x0c43, B:385:0x0c4e, B:387:0x0c5b, B:389:0x0c79, B:391:0x0ca8, B:393:0x0caa, B:394:0x0cb3, B:396:0x0cb5, B:397:0x0cbe), top: B:404:0x0317, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0833 A[Catch: all -> 0x0cc0, TRY_ENTER, TryCatch #0 {, blocks: (B:119:0x0317, B:121:0x031f, B:122:0x0328, B:124:0x032a, B:126:0x0337, B:127:0x0340, B:129:0x0342, B:131:0x0352, B:132:0x035b, B:134:0x035d, B:136:0x036a, B:137:0x0373, B:139:0x0375, B:141:0x0387, B:143:0x03a0, B:145:0x03b1, B:147:0x03ca, B:149:0x03db, B:151:0x03f4, B:153:0x0405, B:155:0x041e, B:157:0x042f, B:159:0x0444, B:161:0x0457, B:163:0x045f, B:165:0x0465, B:172:0x047b, B:173:0x0484, B:175:0x0486, B:177:0x0493, B:180:0x049d, B:182:0x04c4, B:184:0x04ce, B:187:0x04db, B:189:0x04e5, B:192:0x04f2, B:194:0x04fc, B:196:0x0506, B:197:0x050f, B:199:0x0517, B:200:0x0523, B:202:0x055f, B:206:0x0570, B:210:0x0581, B:214:0x0592, B:218:0x05a3, B:222:0x05b4, B:239:0x05eb, B:240:0x0611, B:241:0x063e, B:242:0x066d, B:245:0x069f, B:246:0x06d2, B:247:0x06fb, B:259:0x074c, B:260:0x0755, B:266:0x0768, B:268:0x0770, B:269:0x0793, B:271:0x07b4, B:275:0x07dd, B:277:0x07ea, B:283:0x0808, B:285:0x0816, B:287:0x0822, B:291:0x0833, B:292:0x083c, B:294:0x083e, B:296:0x0878, B:298:0x0880, B:300:0x089a, B:301:0x08f6, B:302:0x08fe, B:303:0x0901, B:308:0x0979, B:309:0x09e0, B:313:0x0a27, B:318:0x0a3c, B:323:0x0a51, B:328:0x0a66, B:333:0x0a7b, B:338:0x0a90, B:354:0x0ac1, B:355:0x0ad2, B:356:0x0ae3, B:357:0x0af4, B:358:0x0b05, B:359:0x0b0f, B:360:0x0b20, B:362:0x0b30, B:364:0x0b64, B:366:0x0b99, B:368:0x0b9f, B:370:0x0bab, B:372:0x0bc4, B:373:0x0be2, B:374:0x0be5, B:376:0x0c21, B:378:0x0c2a, B:379:0x0c31, B:382:0x0c34, B:384:0x0c43, B:385:0x0c4e, B:387:0x0c5b, B:389:0x0c79, B:391:0x0ca8, B:393:0x0caa, B:394:0x0cb3, B:396:0x0cb5, B:397:0x0cbe), top: B:404:0x0317, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x083e A[Catch: all -> 0x0cc0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:119:0x0317, B:121:0x031f, B:122:0x0328, B:124:0x032a, B:126:0x0337, B:127:0x0340, B:129:0x0342, B:131:0x0352, B:132:0x035b, B:134:0x035d, B:136:0x036a, B:137:0x0373, B:139:0x0375, B:141:0x0387, B:143:0x03a0, B:145:0x03b1, B:147:0x03ca, B:149:0x03db, B:151:0x03f4, B:153:0x0405, B:155:0x041e, B:157:0x042f, B:159:0x0444, B:161:0x0457, B:163:0x045f, B:165:0x0465, B:172:0x047b, B:173:0x0484, B:175:0x0486, B:177:0x0493, B:180:0x049d, B:182:0x04c4, B:184:0x04ce, B:187:0x04db, B:189:0x04e5, B:192:0x04f2, B:194:0x04fc, B:196:0x0506, B:197:0x050f, B:199:0x0517, B:200:0x0523, B:202:0x055f, B:206:0x0570, B:210:0x0581, B:214:0x0592, B:218:0x05a3, B:222:0x05b4, B:239:0x05eb, B:240:0x0611, B:241:0x063e, B:242:0x066d, B:245:0x069f, B:246:0x06d2, B:247:0x06fb, B:259:0x074c, B:260:0x0755, B:266:0x0768, B:268:0x0770, B:269:0x0793, B:271:0x07b4, B:275:0x07dd, B:277:0x07ea, B:283:0x0808, B:285:0x0816, B:287:0x0822, B:291:0x0833, B:292:0x083c, B:294:0x083e, B:296:0x0878, B:298:0x0880, B:300:0x089a, B:301:0x08f6, B:302:0x08fe, B:303:0x0901, B:308:0x0979, B:309:0x09e0, B:313:0x0a27, B:318:0x0a3c, B:323:0x0a51, B:328:0x0a66, B:333:0x0a7b, B:338:0x0a90, B:354:0x0ac1, B:355:0x0ad2, B:356:0x0ae3, B:357:0x0af4, B:358:0x0b05, B:359:0x0b0f, B:360:0x0b20, B:362:0x0b30, B:364:0x0b64, B:366:0x0b99, B:368:0x0b9f, B:370:0x0bab, B:372:0x0bc4, B:373:0x0be2, B:374:0x0be5, B:376:0x0c21, B:378:0x0c2a, B:379:0x0c31, B:382:0x0c34, B:384:0x0c43, B:385:0x0c4e, B:387:0x0c5b, B:389:0x0c79, B:391:0x0ca8, B:393:0x0caa, B:394:0x0cb3, B:396:0x0cb5, B:397:0x0cbe), top: B:404:0x0317, inners: #1, #2 }] */
    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void mo14250a(com.google.android.gms.internal.ads.adt r9, java.util.Map r10) {
        /*
            Method dump skipped, instructions count: 3269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12616hr.mo14250a(java.lang.Object, java.util.Map):void");
    }
}
