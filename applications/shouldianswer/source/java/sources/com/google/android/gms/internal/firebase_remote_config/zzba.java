package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzbc;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzba.class */
public abstract class zzba {
    private static WeakHashMap<Class<?>, Field> zzdd = new WeakHashMap<>();
    private static final Lock zzde = new ReentrantLock();

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0177, code lost:
        if (r11.getAnnotation(com.google.android.gms.internal.firebase_remote_config.zzbe.class) != null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01a9, code lost:
        if (r11.getAnnotation(com.google.android.gms.internal.firebase_remote_config.zzbe.class) == null) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02e6 A[Catch: IllegalArgumentException -> 0x072e, TRY_ENTER, TryCatch #0 {IllegalArgumentException -> 0x072e, blocks: (B:14:0x0049, B:17:0x00a0, B:20:0x00ac, B:28:0x00c1, B:30:0x00cd, B:32:0x00d7, B:35:0x00e5, B:37:0x00ed, B:40:0x00fa, B:42:0x0103, B:42:0x0103, B:43:0x0106, B:44:0x010e, B:46:0x0110, B:51:0x012c, B:56:0x013b, B:58:0x0144, B:60:0x014d, B:64:0x015b, B:70:0x0171, B:76:0x0185, B:77:0x0190, B:79:0x0193, B:84:0x01a3, B:92:0x01b9, B:97:0x01cd, B:102:0x01d9, B:107:0x01eb, B:112:0x01fd, B:117:0x020f, B:122:0x0221, B:127:0x0233, B:130:0x023e, B:131:0x0277, B:133:0x0279, B:136:0x0281, B:139:0x0289, B:142:0x0291, B:145:0x0299, B:148:0x02a1, B:151:0x02a9, B:153:0x02ad, B:153:0x02ad, B:154:0x02b0, B:155:0x02b8, B:158:0x02be, B:162:0x02cb, B:169:0x02e6, B:171:0x02ed, B:173:0x02f1, B:173:0x02f1, B:175:0x02f5, B:175:0x02f5, B:176:0x02f8, B:177:0x030d, B:179:0x0310, B:185:0x0324, B:196:0x034b, B:197:0x0354, B:199:0x0357, B:201:0x0361, B:205:0x0375, B:207:0x0380, B:209:0x0387, B:211:0x0393, B:213:0x0399, B:216:0x03bb, B:220:0x03ca, B:221:0x03e2, B:223:0x03e5, B:232:0x03fe, B:238:0x0418, B:239:0x0421, B:242:0x0427, B:249:0x043f, B:254:0x0457, B:255:0x0460, B:257:0x0467, B:259:0x0471, B:262:0x047d, B:264:0x0488, B:266:0x0492, B:270:0x04a4, B:272:0x04b4, B:274:0x04bb, B:276:0x04c7, B:280:0x04f8, B:282:0x0502, B:283:0x0516, B:285:0x051e, B:287:0x052e, B:289:0x053c, B:291:0x0544, B:294:0x054f, B:295:0x055b, B:297:0x055e, B:300:0x059c, B:303:0x05b9, B:305:0x05bf, B:306:0x05c7, B:307:0x05d0, B:308:0x05d1, B:308:0x05d1, B:309:0x05d4, B:310:0x05da, B:313:0x05e0, B:318:0x05ee, B:324:0x060f, B:329:0x063e, B:331:0x064d, B:338:0x0671, B:340:0x0680, B:341:0x068d, B:344:0x069e, B:346:0x06c1, B:346:0x06c1, B:347:0x06c4, B:348:0x06cf, B:349:0x06d0, B:349:0x06d0, B:350:0x06d3, B:351:0x06dc, B:352:0x06dd, B:352:0x06dd, B:353:0x06e0, B:354:0x06f5, B:356:0x06f7, B:357:0x072d), top: B:370:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02f5 A[Catch: IllegalArgumentException -> 0x072e, IllegalArgumentException -> 0x072e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x072e, blocks: (B:14:0x0049, B:17:0x00a0, B:20:0x00ac, B:28:0x00c1, B:30:0x00cd, B:32:0x00d7, B:35:0x00e5, B:37:0x00ed, B:40:0x00fa, B:42:0x0103, B:42:0x0103, B:43:0x0106, B:44:0x010e, B:46:0x0110, B:51:0x012c, B:56:0x013b, B:58:0x0144, B:60:0x014d, B:64:0x015b, B:70:0x0171, B:76:0x0185, B:77:0x0190, B:79:0x0193, B:84:0x01a3, B:92:0x01b9, B:97:0x01cd, B:102:0x01d9, B:107:0x01eb, B:112:0x01fd, B:117:0x020f, B:122:0x0221, B:127:0x0233, B:130:0x023e, B:131:0x0277, B:133:0x0279, B:136:0x0281, B:139:0x0289, B:142:0x0291, B:145:0x0299, B:148:0x02a1, B:151:0x02a9, B:153:0x02ad, B:153:0x02ad, B:154:0x02b0, B:155:0x02b8, B:158:0x02be, B:162:0x02cb, B:169:0x02e6, B:171:0x02ed, B:173:0x02f1, B:173:0x02f1, B:175:0x02f5, B:175:0x02f5, B:176:0x02f8, B:177:0x030d, B:179:0x0310, B:185:0x0324, B:196:0x034b, B:197:0x0354, B:199:0x0357, B:201:0x0361, B:205:0x0375, B:207:0x0380, B:209:0x0387, B:211:0x0393, B:213:0x0399, B:216:0x03bb, B:220:0x03ca, B:221:0x03e2, B:223:0x03e5, B:232:0x03fe, B:238:0x0418, B:239:0x0421, B:242:0x0427, B:249:0x043f, B:254:0x0457, B:255:0x0460, B:257:0x0467, B:259:0x0471, B:262:0x047d, B:264:0x0488, B:266:0x0492, B:270:0x04a4, B:272:0x04b4, B:274:0x04bb, B:276:0x04c7, B:280:0x04f8, B:282:0x0502, B:283:0x0516, B:285:0x051e, B:287:0x052e, B:289:0x053c, B:291:0x0544, B:294:0x054f, B:295:0x055b, B:297:0x055e, B:300:0x059c, B:303:0x05b9, B:305:0x05bf, B:306:0x05c7, B:307:0x05d0, B:308:0x05d1, B:308:0x05d1, B:309:0x05d4, B:310:0x05da, B:313:0x05e0, B:318:0x05ee, B:324:0x060f, B:329:0x063e, B:331:0x064d, B:338:0x0671, B:340:0x0680, B:341:0x068d, B:344:0x069e, B:346:0x06c1, B:346:0x06c1, B:347:0x06c4, B:348:0x06cf, B:349:0x06d0, B:349:0x06d0, B:350:0x06d3, B:351:0x06dc, B:352:0x06dd, B:352:0x06dd, B:353:0x06e0, B:354:0x06f5, B:356:0x06f7, B:357:0x072d), top: B:370:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03ca A[Catch: IllegalArgumentException -> 0x072e, TRY_ENTER, TryCatch #0 {IllegalArgumentException -> 0x072e, blocks: (B:14:0x0049, B:17:0x00a0, B:20:0x00ac, B:28:0x00c1, B:30:0x00cd, B:32:0x00d7, B:35:0x00e5, B:37:0x00ed, B:40:0x00fa, B:42:0x0103, B:42:0x0103, B:43:0x0106, B:44:0x010e, B:46:0x0110, B:51:0x012c, B:56:0x013b, B:58:0x0144, B:60:0x014d, B:64:0x015b, B:70:0x0171, B:76:0x0185, B:77:0x0190, B:79:0x0193, B:84:0x01a3, B:92:0x01b9, B:97:0x01cd, B:102:0x01d9, B:107:0x01eb, B:112:0x01fd, B:117:0x020f, B:122:0x0221, B:127:0x0233, B:130:0x023e, B:131:0x0277, B:133:0x0279, B:136:0x0281, B:139:0x0289, B:142:0x0291, B:145:0x0299, B:148:0x02a1, B:151:0x02a9, B:153:0x02ad, B:153:0x02ad, B:154:0x02b0, B:155:0x02b8, B:158:0x02be, B:162:0x02cb, B:169:0x02e6, B:171:0x02ed, B:173:0x02f1, B:173:0x02f1, B:175:0x02f5, B:175:0x02f5, B:176:0x02f8, B:177:0x030d, B:179:0x0310, B:185:0x0324, B:196:0x034b, B:197:0x0354, B:199:0x0357, B:201:0x0361, B:205:0x0375, B:207:0x0380, B:209:0x0387, B:211:0x0393, B:213:0x0399, B:216:0x03bb, B:220:0x03ca, B:221:0x03e2, B:223:0x03e5, B:232:0x03fe, B:238:0x0418, B:239:0x0421, B:242:0x0427, B:249:0x043f, B:254:0x0457, B:255:0x0460, B:257:0x0467, B:259:0x0471, B:262:0x047d, B:264:0x0488, B:266:0x0492, B:270:0x04a4, B:272:0x04b4, B:274:0x04bb, B:276:0x04c7, B:280:0x04f8, B:282:0x0502, B:283:0x0516, B:285:0x051e, B:287:0x052e, B:289:0x053c, B:291:0x0544, B:294:0x054f, B:295:0x055b, B:297:0x055e, B:300:0x059c, B:303:0x05b9, B:305:0x05bf, B:306:0x05c7, B:307:0x05d0, B:308:0x05d1, B:308:0x05d1, B:309:0x05d4, B:310:0x05da, B:313:0x05e0, B:318:0x05ee, B:324:0x060f, B:329:0x063e, B:331:0x064d, B:338:0x0671, B:340:0x0680, B:341:0x068d, B:344:0x069e, B:346:0x06c1, B:346:0x06c1, B:347:0x06c4, B:348:0x06cf, B:349:0x06d0, B:349:0x06d0, B:350:0x06d3, B:351:0x06dc, B:352:0x06dd, B:352:0x06dd, B:353:0x06e0, B:354:0x06f5, B:356:0x06f7, B:357:0x072d), top: B:370:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x05e0 A[Catch: IllegalArgumentException -> 0x072e, TRY_ENTER, TryCatch #0 {IllegalArgumentException -> 0x072e, blocks: (B:14:0x0049, B:17:0x00a0, B:20:0x00ac, B:28:0x00c1, B:30:0x00cd, B:32:0x00d7, B:35:0x00e5, B:37:0x00ed, B:40:0x00fa, B:42:0x0103, B:42:0x0103, B:43:0x0106, B:44:0x010e, B:46:0x0110, B:51:0x012c, B:56:0x013b, B:58:0x0144, B:60:0x014d, B:64:0x015b, B:70:0x0171, B:76:0x0185, B:77:0x0190, B:79:0x0193, B:84:0x01a3, B:92:0x01b9, B:97:0x01cd, B:102:0x01d9, B:107:0x01eb, B:112:0x01fd, B:117:0x020f, B:122:0x0221, B:127:0x0233, B:130:0x023e, B:131:0x0277, B:133:0x0279, B:136:0x0281, B:139:0x0289, B:142:0x0291, B:145:0x0299, B:148:0x02a1, B:151:0x02a9, B:153:0x02ad, B:153:0x02ad, B:154:0x02b0, B:155:0x02b8, B:158:0x02be, B:162:0x02cb, B:169:0x02e6, B:171:0x02ed, B:173:0x02f1, B:173:0x02f1, B:175:0x02f5, B:175:0x02f5, B:176:0x02f8, B:177:0x030d, B:179:0x0310, B:185:0x0324, B:196:0x034b, B:197:0x0354, B:199:0x0357, B:201:0x0361, B:205:0x0375, B:207:0x0380, B:209:0x0387, B:211:0x0393, B:213:0x0399, B:216:0x03bb, B:220:0x03ca, B:221:0x03e2, B:223:0x03e5, B:232:0x03fe, B:238:0x0418, B:239:0x0421, B:242:0x0427, B:249:0x043f, B:254:0x0457, B:255:0x0460, B:257:0x0467, B:259:0x0471, B:262:0x047d, B:264:0x0488, B:266:0x0492, B:270:0x04a4, B:272:0x04b4, B:274:0x04bb, B:276:0x04c7, B:280:0x04f8, B:282:0x0502, B:283:0x0516, B:285:0x051e, B:287:0x052e, B:289:0x053c, B:291:0x0544, B:294:0x054f, B:295:0x055b, B:297:0x055e, B:300:0x059c, B:303:0x05b9, B:305:0x05bf, B:306:0x05c7, B:307:0x05d0, B:308:0x05d1, B:308:0x05d1, B:309:0x05d4, B:310:0x05da, B:313:0x05e0, B:318:0x05ee, B:324:0x060f, B:329:0x063e, B:331:0x064d, B:338:0x0671, B:340:0x0680, B:341:0x068d, B:344:0x069e, B:346:0x06c1, B:346:0x06c1, B:347:0x06c4, B:348:0x06cf, B:349:0x06d0, B:349:0x06d0, B:350:0x06d3, B:351:0x06dc, B:352:0x06dd, B:352:0x06dd, B:353:0x06e0, B:354:0x06f5, B:356:0x06f7, B:357:0x072d), top: B:370:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x05ee A[Catch: IllegalArgumentException -> 0x072e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x072e, blocks: (B:14:0x0049, B:17:0x00a0, B:20:0x00ac, B:28:0x00c1, B:30:0x00cd, B:32:0x00d7, B:35:0x00e5, B:37:0x00ed, B:40:0x00fa, B:42:0x0103, B:42:0x0103, B:43:0x0106, B:44:0x010e, B:46:0x0110, B:51:0x012c, B:56:0x013b, B:58:0x0144, B:60:0x014d, B:64:0x015b, B:70:0x0171, B:76:0x0185, B:77:0x0190, B:79:0x0193, B:84:0x01a3, B:92:0x01b9, B:97:0x01cd, B:102:0x01d9, B:107:0x01eb, B:112:0x01fd, B:117:0x020f, B:122:0x0221, B:127:0x0233, B:130:0x023e, B:131:0x0277, B:133:0x0279, B:136:0x0281, B:139:0x0289, B:142:0x0291, B:145:0x0299, B:148:0x02a1, B:151:0x02a9, B:153:0x02ad, B:153:0x02ad, B:154:0x02b0, B:155:0x02b8, B:158:0x02be, B:162:0x02cb, B:169:0x02e6, B:171:0x02ed, B:173:0x02f1, B:173:0x02f1, B:175:0x02f5, B:175:0x02f5, B:176:0x02f8, B:177:0x030d, B:179:0x0310, B:185:0x0324, B:196:0x034b, B:197:0x0354, B:199:0x0357, B:201:0x0361, B:205:0x0375, B:207:0x0380, B:209:0x0387, B:211:0x0393, B:213:0x0399, B:216:0x03bb, B:220:0x03ca, B:221:0x03e2, B:223:0x03e5, B:232:0x03fe, B:238:0x0418, B:239:0x0421, B:242:0x0427, B:249:0x043f, B:254:0x0457, B:255:0x0460, B:257:0x0467, B:259:0x0471, B:262:0x047d, B:264:0x0488, B:266:0x0492, B:270:0x04a4, B:272:0x04b4, B:274:0x04bb, B:276:0x04c7, B:280:0x04f8, B:282:0x0502, B:283:0x0516, B:285:0x051e, B:287:0x052e, B:289:0x053c, B:291:0x0544, B:294:0x054f, B:295:0x055b, B:297:0x055e, B:300:0x059c, B:303:0x05b9, B:305:0x05bf, B:306:0x05c7, B:307:0x05d0, B:308:0x05d1, B:308:0x05d1, B:309:0x05d4, B:310:0x05da, B:313:0x05e0, B:318:0x05ee, B:324:0x060f, B:329:0x063e, B:331:0x064d, B:338:0x0671, B:340:0x0680, B:341:0x068d, B:344:0x069e, B:346:0x06c1, B:346:0x06c1, B:347:0x06c4, B:348:0x06cf, B:349:0x06d0, B:349:0x06d0, B:350:0x06d3, B:351:0x06dc, B:352:0x06dd, B:352:0x06dd, B:353:0x06e0, B:354:0x06f5, B:356:0x06f7, B:357:0x072d), top: B:370:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0185 A[Catch: IllegalArgumentException -> 0x072e, TRY_ENTER, TryCatch #0 {IllegalArgumentException -> 0x072e, blocks: (B:14:0x0049, B:17:0x00a0, B:20:0x00ac, B:28:0x00c1, B:30:0x00cd, B:32:0x00d7, B:35:0x00e5, B:37:0x00ed, B:40:0x00fa, B:42:0x0103, B:42:0x0103, B:43:0x0106, B:44:0x010e, B:46:0x0110, B:51:0x012c, B:56:0x013b, B:58:0x0144, B:60:0x014d, B:64:0x015b, B:70:0x0171, B:76:0x0185, B:77:0x0190, B:79:0x0193, B:84:0x01a3, B:92:0x01b9, B:97:0x01cd, B:102:0x01d9, B:107:0x01eb, B:112:0x01fd, B:117:0x020f, B:122:0x0221, B:127:0x0233, B:130:0x023e, B:131:0x0277, B:133:0x0279, B:136:0x0281, B:139:0x0289, B:142:0x0291, B:145:0x0299, B:148:0x02a1, B:151:0x02a9, B:153:0x02ad, B:153:0x02ad, B:154:0x02b0, B:155:0x02b8, B:158:0x02be, B:162:0x02cb, B:169:0x02e6, B:171:0x02ed, B:173:0x02f1, B:173:0x02f1, B:175:0x02f5, B:175:0x02f5, B:176:0x02f8, B:177:0x030d, B:179:0x0310, B:185:0x0324, B:196:0x034b, B:197:0x0354, B:199:0x0357, B:201:0x0361, B:205:0x0375, B:207:0x0380, B:209:0x0387, B:211:0x0393, B:213:0x0399, B:216:0x03bb, B:220:0x03ca, B:221:0x03e2, B:223:0x03e5, B:232:0x03fe, B:238:0x0418, B:239:0x0421, B:242:0x0427, B:249:0x043f, B:254:0x0457, B:255:0x0460, B:257:0x0467, B:259:0x0471, B:262:0x047d, B:264:0x0488, B:266:0x0492, B:270:0x04a4, B:272:0x04b4, B:274:0x04bb, B:276:0x04c7, B:280:0x04f8, B:282:0x0502, B:283:0x0516, B:285:0x051e, B:287:0x052e, B:289:0x053c, B:291:0x0544, B:294:0x054f, B:295:0x055b, B:297:0x055e, B:300:0x059c, B:303:0x05b9, B:305:0x05bf, B:306:0x05c7, B:307:0x05d0, B:308:0x05d1, B:308:0x05d1, B:309:0x05d4, B:310:0x05da, B:313:0x05e0, B:318:0x05ee, B:324:0x060f, B:329:0x063e, B:331:0x064d, B:338:0x0671, B:340:0x0680, B:341:0x068d, B:344:0x069e, B:346:0x06c1, B:346:0x06c1, B:347:0x06c4, B:348:0x06cf, B:349:0x06d0, B:349:0x06d0, B:350:0x06d3, B:351:0x06dc, B:352:0x06dd, B:352:0x06dd, B:353:0x06e0, B:354:0x06f5, B:356:0x06f7, B:357:0x072d), top: B:370:0x0049 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object zza(java.lang.reflect.Field r11, java.lang.reflect.Type r12, java.util.ArrayList<java.lang.reflect.Type> r13, java.lang.Object r14, com.google.android.gms.internal.firebase_remote_config.zzau r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 1915
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzba.zza(java.lang.reflect.Field, java.lang.reflect.Type, java.util.ArrayList, java.lang.Object, com.google.android.gms.internal.firebase_remote_config.zzau, boolean):java.lang.Object");
    }

    private final void zza(Field field, Map<String, Object> map, Type type, ArrayList<Type> arrayList, zzau zzauVar) {
        zzbg zzbl = zzbl();
        while (zzbl == zzbg.FIELD_NAME) {
            String text = getText();
            zzaz();
            if (zzauVar != null) {
                throw new NoSuchMethodError();
            }
            map.put(text, zza(field, type, arrayList, map, zzauVar, true));
            zzbl = zzaz();
        }
    }

    private static Field zzb(Class<?> cls) {
        Field field = null;
        if (cls == null) {
            return null;
        }
        zzde.lock();
        try {
            if (zzdd.containsKey(cls)) {
                Field field2 = zzdd.get(cls);
                zzde.unlock();
                return field2;
            }
            for (zzbz zzbzVar : zzbr.zzc(cls).zzbw()) {
                Field zzbz = zzbzVar.zzbz();
                zzbc zzbcVar = (zzbc) zzbz.getAnnotation(zzbc.class);
                if (zzbcVar != null) {
                    if (!(field == null)) {
                        throw new IllegalArgumentException(zzdy.zza("Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", cls));
                    }
                    boolean zza = zzbt.zza(zzbz.getType());
                    Class<?> type = zzbz.getType();
                    if (!zza) {
                        throw new IllegalArgumentException(zzdy.zza("Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", cls, type));
                    }
                    zzbc.zza[] zzbn = zzbcVar.zzbn();
                    HashSet hashSet = new HashSet();
                    if (!(zzbn.length > 0)) {
                        throw new IllegalArgumentException("@JsonPolymorphicTypeMap must have at least one @TypeDef");
                    }
                    for (zzbc.zza zzaVar : zzbn) {
                        boolean add = hashSet.add(zzaVar.zzbo());
                        String zzbo = zzaVar.zzbo();
                        if (!add) {
                            throw new IllegalArgumentException(zzdy.zza("Class contains two @TypeDef annotations with identical key: %s", zzbo));
                        }
                    }
                    field = zzbz;
                }
            }
            zzdd.put(cls, field);
            zzde.unlock();
            return field;
        } catch (Throwable th) {
            zzde.unlock();
            throw th;
        }
    }

    private final zzbg zzbk() {
        zzbg zzba = zzba();
        zzbg zzbgVar = zzba;
        if (zzba == null) {
            zzbgVar = zzaz();
        }
        if (zzbgVar != null) {
            return zzbgVar;
        }
        throw new IllegalArgumentException("no JSON input found");
    }

    private final zzbg zzbl() {
        zzbg zzbk = zzbk();
        int i = zzbd.zzdg[zzbk.ordinal()];
        if (i == 1) {
            zzbk = zzaz();
            boolean z = true;
            if (zzbk != zzbg.FIELD_NAME) {
                z = zzbk == zzbg.END_OBJECT;
            }
            if (!z) {
                throw new IllegalArgumentException(String.valueOf(zzbk));
            }
        } else if (i == 2) {
            zzbk = zzaz();
        }
        return zzbk;
    }

    public abstract void close();

    public abstract int getIntValue();

    public abstract String getText();

    public final <T> T zza(Class<T> cls, zzau zzauVar) {
        try {
            return (T) zza(cls, false, null);
        } finally {
            close();
        }
    }

    public final Object zza(Type type, boolean z, zzau zzauVar) {
        try {
            if (!Void.class.equals(type)) {
                zzbk();
            }
            Object zza = zza(null, type, new ArrayList<>(), null, null, true);
            if (z) {
                close();
            }
            return zza;
        } catch (Throwable th) {
            if (z) {
                close();
            }
            throw th;
        }
    }

    public final String zza(Set<String> set) {
        zzbg zzbl = zzbl();
        while (zzbl == zzbg.FIELD_NAME) {
            String text = getText();
            zzaz();
            if (set.contains(text)) {
                return text;
            }
            zzbc();
            zzbl = zzaz();
        }
        return null;
    }

    public abstract zzaw zzay();

    public abstract zzbg zzaz();

    public abstract zzbg zzba();

    public abstract String zzbb();

    public abstract zzba zzbc();

    public abstract byte zzbd();

    public abstract short zzbe();

    public abstract float zzbf();

    public abstract long zzbg();

    public abstract double zzbh();

    public abstract BigInteger zzbi();

    public abstract BigDecimal zzbj();
}
