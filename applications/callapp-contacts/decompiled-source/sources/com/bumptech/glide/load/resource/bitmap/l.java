package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.g.j;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.i;
import com.bumptech.glide.load.resource.bitmap.r;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l.class */
public final class l {
    final b g;
    final List<ImageHeaderParser> h;
    private final e l;
    private final DisplayMetrics m;
    private final q n = q.a();

    /* renamed from: a  reason: collision with root package name */
    public static final g<com.bumptech.glide.load.b> f7671a = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", com.bumptech.glide.load.b.DEFAULT);

    /* renamed from: b  reason: collision with root package name */
    public static final g<i> f7672b = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", i.SRGB);
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final g<k> f7673c = k.h;

    /* renamed from: d  reason: collision with root package name */
    public static final g<Boolean> f7674d = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.FALSE);
    public static final g<Boolean> e = g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", Boolean.FALSE);
    private static final Set<String> i = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
    static final a f = new a() { // from class: com.bumptech.glide.load.resource.bitmap.l.1
        @Override // com.bumptech.glide.load.resource.bitmap.l.a
        public final void a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l.a
        public final void a(e eVar, Bitmap bitmap) {
        }
    };
    private static final Set<ImageHeaderParser.ImageType> j = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
    private static final Queue<BitmapFactory.Options> k = k.a(0);

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l$a.class */
    public interface a {
        void a();

        void a(e eVar, Bitmap bitmap) throws IOException;
    }

    public l(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, e eVar, b bVar) {
        this.h = list;
        this.m = (DisplayMetrics) j.a(displayMetrics, "Argument must not be null");
        this.l = (e) j.a(eVar, "Argument must not be null");
        this.g = (b) j.a(bVar, "Argument must not be null");
    }

    private static int a(double d2) {
        if (d2 > 1.0d) {
            d2 = 1.0d / d2;
        }
        return (int) Math.round(d2 * 2.147483647E9d);
    }

    private static String a(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    public static boolean a() {
        return ParcelFileDescriptorRewinder.c();
    }

    private static boolean a(int i2) {
        return i2 == 90 || i2 == 270;
    }

    private static boolean a(BitmapFactory.Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    private static int[] a(r rVar, BitmapFactory.Options options, a aVar, e eVar) throws IOException {
        options.inJustDecodeBounds = true;
        b(rVar, options, aVar, eVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static Bitmap b(r rVar, BitmapFactory.Options options, a aVar, e eVar) throws IOException {
        if (!options.inJustDecodeBounds) {
            aVar.a();
            rVar.c();
        }
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        String str = options.outMimeType;
        y.a().lock();
        try {
            try {
                Bitmap a2 = rVar.a(options);
                y.a().unlock();
                return a2;
            } catch (IllegalArgumentException e2) {
                IOException iOException = new IOException("Exception decoding bitmap, outWidth: " + i2 + ", outHeight: " + i3 + ", outMimeType: " + str + ", inBitmap: " + a(options.inBitmap), e2);
                Log.isLoggable("Downsampler", 3);
                if (options.inBitmap != null) {
                    try {
                        eVar.a(options.inBitmap);
                        options.inBitmap = null;
                        Bitmap b2 = b(rVar, options, aVar, eVar);
                        y.a().unlock();
                        return b2;
                    } catch (IOException e3) {
                        throw iOException;
                    }
                } else {
                    throw iOException;
                }
            }
        } catch (Throwable th) {
            y.a().unlock();
            throw th;
        }
    }

    private static BitmapFactory.Options b() {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        synchronized (l.class) {
            try {
                Queue<BitmapFactory.Options> queue = k;
                synchronized (queue) {
                    poll = queue.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    c(options);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return options;
    }

    private static void b(BitmapFactory.Options options) {
        c(options);
        Queue<BitmapFactory.Options> queue = k;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static void c(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0356 A[Catch: all -> 0x099d, TRY_LEAVE, TryCatch #4 {all -> 0x099d, blocks: (B:36:0x012d, B:41:0x0148, B:44:0x015e, B:47:0x0196, B:49:0x01ac, B:50:0x01b8, B:51:0x01c1, B:51:0x01c1, B:54:0x01c9, B:58:0x01df, B:60:0x01ee, B:66:0x020b, B:68:0x021a, B:71:0x0250, B:74:0x0265, B:76:0x026d, B:79:0x0278, B:81:0x0280, B:88:0x029e, B:90:0x02b3, B:92:0x02ce, B:96:0x02db, B:98:0x02f7, B:100:0x0316, B:105:0x033e, B:107:0x0356, B:109:0x036a, B:110:0x0390, B:112:0x0398, B:113:0x03a1, B:115:0x03b0, B:117:0x03b7, B:119:0x0467, B:122:0x04a5, B:123:0x04b1, B:124:0x04b2, B:124:0x04b2, B:125:0x04b5, B:126:0x0525, B:129:0x052b, B:131:0x0535), top: B:265:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0398 A[Catch: all -> 0x099d, TRY_LEAVE, TryCatch #4 {all -> 0x099d, blocks: (B:36:0x012d, B:41:0x0148, B:44:0x015e, B:47:0x0196, B:49:0x01ac, B:50:0x01b8, B:51:0x01c1, B:51:0x01c1, B:54:0x01c9, B:58:0x01df, B:60:0x01ee, B:66:0x020b, B:68:0x021a, B:71:0x0250, B:74:0x0265, B:76:0x026d, B:79:0x0278, B:81:0x0280, B:88:0x029e, B:90:0x02b3, B:92:0x02ce, B:96:0x02db, B:98:0x02f7, B:100:0x0316, B:105:0x033e, B:107:0x0356, B:109:0x036a, B:110:0x0390, B:112:0x0398, B:113:0x03a1, B:115:0x03b0, B:117:0x03b7, B:119:0x0467, B:122:0x04a5, B:123:0x04b1, B:124:0x04b2, B:124:0x04b2, B:125:0x04b5, B:126:0x0525, B:129:0x052b, B:131:0x0535), top: B:265:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03a1 A[Catch: all -> 0x099d, TRY_ENTER, TryCatch #4 {all -> 0x099d, blocks: (B:36:0x012d, B:41:0x0148, B:44:0x015e, B:47:0x0196, B:49:0x01ac, B:50:0x01b8, B:51:0x01c1, B:51:0x01c1, B:54:0x01c9, B:58:0x01df, B:60:0x01ee, B:66:0x020b, B:68:0x021a, B:71:0x0250, B:74:0x0265, B:76:0x026d, B:79:0x0278, B:81:0x0280, B:88:0x029e, B:90:0x02b3, B:92:0x02ce, B:96:0x02db, B:98:0x02f7, B:100:0x0316, B:105:0x033e, B:107:0x0356, B:109:0x036a, B:110:0x0390, B:112:0x0398, B:113:0x03a1, B:115:0x03b0, B:117:0x03b7, B:119:0x0467, B:122:0x04a5, B:123:0x04b1, B:124:0x04b2, B:124:0x04b2, B:125:0x04b5, B:126:0x0525, B:129:0x052b, B:131:0x0535), top: B:265:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03b7 A[Catch: all -> 0x099d, TRY_LEAVE, TryCatch #4 {all -> 0x099d, blocks: (B:36:0x012d, B:41:0x0148, B:44:0x015e, B:47:0x0196, B:49:0x01ac, B:50:0x01b8, B:51:0x01c1, B:51:0x01c1, B:54:0x01c9, B:58:0x01df, B:60:0x01ee, B:66:0x020b, B:68:0x021a, B:71:0x0250, B:74:0x0265, B:76:0x026d, B:79:0x0278, B:81:0x0280, B:88:0x029e, B:90:0x02b3, B:92:0x02ce, B:96:0x02db, B:98:0x02f7, B:100:0x0316, B:105:0x033e, B:107:0x0356, B:109:0x036a, B:110:0x0390, B:112:0x0398, B:113:0x03a1, B:115:0x03b0, B:117:0x03b7, B:119:0x0467, B:122:0x04a5, B:123:0x04b1, B:124:0x04b2, B:124:0x04b2, B:125:0x04b5, B:126:0x0525, B:129:0x052b, B:131:0x0535), top: B:265:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x05a5 A[Catch: all -> 0x0999, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0999, blocks: (B:135:0x058e, B:137:0x05a5, B:140:0x05bb, B:142:0x05c3, B:145:0x05d2, B:147:0x05e2, B:149:0x05ec, B:154:0x0609, B:155:0x0611, B:157:0x0618, B:159:0x0628, B:160:0x0631, B:161:0x0639, B:167:0x064a, B:171:0x0658, B:175:0x0666, B:187:0x0692, B:189:0x069a, B:191:0x06af, B:193:0x06c0, B:195:0x06f7, B:197:0x0701, B:203:0x07a3, B:205:0x07b2, B:207:0x07bd, B:211:0x07d3, B:213:0x07dc, B:214:0x07ec, B:217:0x07f4, B:219:0x07fc, B:221:0x0804, B:228:0x081d, B:229:0x0825, B:231:0x082c, B:232:0x0837, B:234:0x083f, B:236:0x084b, B:238:0x0871, B:241:0x0940, B:243:0x095e, B:245:0x0968, B:248:0x097c), top: B:261:0x058e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x05bb A[Catch: all -> 0x0999, TRY_ENTER, TryCatch #2 {all -> 0x0999, blocks: (B:135:0x058e, B:137:0x05a5, B:140:0x05bb, B:142:0x05c3, B:145:0x05d2, B:147:0x05e2, B:149:0x05ec, B:154:0x0609, B:155:0x0611, B:157:0x0618, B:159:0x0628, B:160:0x0631, B:161:0x0639, B:167:0x064a, B:171:0x0658, B:175:0x0666, B:187:0x0692, B:189:0x069a, B:191:0x06af, B:193:0x06c0, B:195:0x06f7, B:197:0x0701, B:203:0x07a3, B:205:0x07b2, B:207:0x07bd, B:211:0x07d3, B:213:0x07dc, B:214:0x07ec, B:217:0x07f4, B:219:0x07fc, B:221:0x0804, B:228:0x081d, B:229:0x0825, B:231:0x082c, B:232:0x0837, B:234:0x083f, B:236:0x084b, B:238:0x0871, B:241:0x0940, B:243:0x095e, B:245:0x0968, B:248:0x097c), top: B:261:0x058e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0641  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0666 A[Catch: all -> 0x0999, TRY_ENTER, TryCatch #2 {all -> 0x0999, blocks: (B:135:0x058e, B:137:0x05a5, B:140:0x05bb, B:142:0x05c3, B:145:0x05d2, B:147:0x05e2, B:149:0x05ec, B:154:0x0609, B:155:0x0611, B:157:0x0618, B:159:0x0628, B:160:0x0631, B:161:0x0639, B:167:0x064a, B:171:0x0658, B:175:0x0666, B:187:0x0692, B:189:0x069a, B:191:0x06af, B:193:0x06c0, B:195:0x06f7, B:197:0x0701, B:203:0x07a3, B:205:0x07b2, B:207:0x07bd, B:211:0x07d3, B:213:0x07dc, B:214:0x07ec, B:217:0x07f4, B:219:0x07fc, B:221:0x0804, B:228:0x081d, B:229:0x0825, B:231:0x082c, B:232:0x0837, B:234:0x083f, B:236:0x084b, B:238:0x0871, B:241:0x0940, B:243:0x095e, B:245:0x0968, B:248:0x097c), top: B:261:0x058e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x07f4 A[Catch: all -> 0x0999, TryCatch #2 {all -> 0x0999, blocks: (B:135:0x058e, B:137:0x05a5, B:140:0x05bb, B:142:0x05c3, B:145:0x05d2, B:147:0x05e2, B:149:0x05ec, B:154:0x0609, B:155:0x0611, B:157:0x0618, B:159:0x0628, B:160:0x0631, B:161:0x0639, B:167:0x064a, B:171:0x0658, B:175:0x0666, B:187:0x0692, B:189:0x069a, B:191:0x06af, B:193:0x06c0, B:195:0x06f7, B:197:0x0701, B:203:0x07a3, B:205:0x07b2, B:207:0x07bd, B:211:0x07d3, B:213:0x07dc, B:214:0x07ec, B:217:0x07f4, B:219:0x07fc, B:221:0x0804, B:228:0x081d, B:229:0x0825, B:231:0x082c, B:232:0x0837, B:234:0x083f, B:236:0x084b, B:238:0x0871, B:241:0x0940, B:243:0x095e, B:245:0x0968, B:248:0x097c), top: B:261:0x058e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0837 A[Catch: all -> 0x0999, TRY_ENTER, TryCatch #2 {all -> 0x0999, blocks: (B:135:0x058e, B:137:0x05a5, B:140:0x05bb, B:142:0x05c3, B:145:0x05d2, B:147:0x05e2, B:149:0x05ec, B:154:0x0609, B:155:0x0611, B:157:0x0618, B:159:0x0628, B:160:0x0631, B:161:0x0639, B:167:0x064a, B:171:0x0658, B:175:0x0666, B:187:0x0692, B:189:0x069a, B:191:0x06af, B:193:0x06c0, B:195:0x06f7, B:197:0x0701, B:203:0x07a3, B:205:0x07b2, B:207:0x07bd, B:211:0x07d3, B:213:0x07dc, B:214:0x07ec, B:217:0x07f4, B:219:0x07fc, B:221:0x0804, B:228:0x081d, B:229:0x0825, B:231:0x082c, B:232:0x0837, B:234:0x083f, B:236:0x084b, B:238:0x0871, B:241:0x0940, B:243:0x095e, B:245:0x0968, B:248:0x097c), top: B:261:0x058e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0871 A[Catch: all -> 0x0999, TryCatch #2 {all -> 0x0999, blocks: (B:135:0x058e, B:137:0x05a5, B:140:0x05bb, B:142:0x05c3, B:145:0x05d2, B:147:0x05e2, B:149:0x05ec, B:154:0x0609, B:155:0x0611, B:157:0x0618, B:159:0x0628, B:160:0x0631, B:161:0x0639, B:167:0x064a, B:171:0x0658, B:175:0x0666, B:187:0x0692, B:189:0x069a, B:191:0x06af, B:193:0x06c0, B:195:0x06f7, B:197:0x0701, B:203:0x07a3, B:205:0x07b2, B:207:0x07bd, B:211:0x07d3, B:213:0x07dc, B:214:0x07ec, B:217:0x07f4, B:219:0x07fc, B:221:0x0804, B:228:0x081d, B:229:0x0825, B:231:0x082c, B:232:0x0837, B:234:0x083f, B:236:0x084b, B:238:0x0871, B:241:0x0940, B:243:0x095e, B:245:0x0968, B:248:0x097c), top: B:261:0x058e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0940 A[Catch: all -> 0x0999, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0999, blocks: (B:135:0x058e, B:137:0x05a5, B:140:0x05bb, B:142:0x05c3, B:145:0x05d2, B:147:0x05e2, B:149:0x05ec, B:154:0x0609, B:155:0x0611, B:157:0x0618, B:159:0x0628, B:160:0x0631, B:161:0x0639, B:167:0x064a, B:171:0x0658, B:175:0x0666, B:187:0x0692, B:189:0x069a, B:191:0x06af, B:193:0x06c0, B:195:0x06f7, B:197:0x0701, B:203:0x07a3, B:205:0x07b2, B:207:0x07bd, B:211:0x07d3, B:213:0x07dc, B:214:0x07ec, B:217:0x07f4, B:219:0x07fc, B:221:0x0804, B:228:0x081d, B:229:0x0825, B:231:0x082c, B:232:0x0837, B:234:0x083f, B:236:0x084b, B:238:0x0871, B:241:0x0940, B:243:0x095e, B:245:0x0968, B:248:0x097c), top: B:261:0x058e, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x097a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.engine.u<android.graphics.Bitmap> a(com.bumptech.glide.load.resource.bitmap.r r7, int r8, int r9, com.bumptech.glide.load.h r10, com.bumptech.glide.load.resource.bitmap.l.a r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.l.a(com.bumptech.glide.load.resource.bitmap.r, int, int, com.bumptech.glide.load.h, com.bumptech.glide.load.resource.bitmap.l$a):com.bumptech.glide.load.engine.u");
    }

    public final u<Bitmap> a(InputStream inputStream, int i2, int i3, h hVar, a aVar) throws IOException {
        return a(new r.a(inputStream, this.h, this.g), i2, i3, hVar, aVar);
    }
}
