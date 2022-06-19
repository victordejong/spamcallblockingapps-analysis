package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.C3819g;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3659b;
import com.bumptech.glide.load.EnumC3823i;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.AbstractC3887r;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.C3644k;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
/* renamed from: com.bumptech.glide.load.resource.bitmap.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l.class */
public final class C3878l {

    /* renamed from: g */
    final AbstractC3707b f14248g;

    /* renamed from: h */
    final List<ImageHeaderParser> f14249h;

    /* renamed from: l */
    private final AbstractC3712e f14250l;

    /* renamed from: m */
    private final DisplayMetrics f14251m;

    /* renamed from: n */
    private final C3886q f14252n = C3886q.m37262a();

    /* renamed from: a */
    public static final C3819g<EnumC3659b> f14239a = C3819g.m37324a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", EnumC3659b.DEFAULT);

    /* renamed from: b */
    public static final C3819g<EnumC3823i> f14240b = C3819g.m37324a("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", EnumC3823i.SRGB);
    @Deprecated

    /* renamed from: c */
    public static final C3819g<AbstractC3870k> f14241c = AbstractC3870k.f14234h;

    /* renamed from: d */
    public static final C3819g<Boolean> f14242d = C3819g.m37324a("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.FALSE);

    /* renamed from: e */
    public static final C3819g<Boolean> f14243e = C3819g.m37324a("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", Boolean.FALSE);

    /* renamed from: i */
    private static final Set<String> f14245i = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));

    /* renamed from: f */
    static final AbstractC3880a f14244f = new AbstractC3880a() { // from class: com.bumptech.glide.load.resource.bitmap.l.1
        @Override // com.bumptech.glide.load.resource.bitmap.C3878l.AbstractC3880a
        /* renamed from: a */
        public final void mo37247a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C3878l.AbstractC3880a
        /* renamed from: a */
        public final void mo37246a(AbstractC3712e abstractC3712e, Bitmap bitmap) {
        }
    };

    /* renamed from: j */
    private static final Set<ImageHeaderParser.ImageType> f14246j = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));

    /* renamed from: k */
    private static final Queue<BitmapFactory.Options> f14247k = C3644k.m37582a(0);

    /* renamed from: com.bumptech.glide.load.resource.bitmap.l$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/l$a.class */
    public interface AbstractC3880a {
        /* renamed from: a */
        void mo37247a();

        /* renamed from: a */
        void mo37246a(AbstractC3712e abstractC3712e, Bitmap bitmap) throws IOException;
    }

    public C3878l(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, AbstractC3712e abstractC3712e, AbstractC3707b abstractC3707b) {
        this.f14249h = list;
        this.f14251m = (DisplayMetrics) C3643j.m37588a(displayMetrics, "Argument must not be null");
        this.f14250l = (AbstractC3712e) C3643j.m37588a(abstractC3712e, "Argument must not be null");
        this.f14248g = (AbstractC3707b) C3643j.m37588a(abstractC3707b, "Argument must not be null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: a */
    private static int m37279a(double d) {
        int i = (d > 1.0d ? 1 : (d == 1.0d ? 0 : -1));
        ?? r5 = d;
        if (i > 0) {
            r5 = 1.0d / d;
        }
        return (int) Math.round(r5 * 0);
    }

    /* renamed from: a */
    private static String m37277a(Bitmap bitmap) {
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

    /* renamed from: a */
    public static boolean m37280a() {
        return ParcelFileDescriptorRewinder.m37537c();
    }

    /* renamed from: a */
    private static boolean m37278a(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: a */
    private static boolean m37276a(BitmapFactory.Options options) {
        return options.inTargetDensity > 0 && options.inDensity > 0 && options.inTargetDensity != options.inDensity;
    }

    /* renamed from: a */
    private static int[] m37274a(AbstractC3887r abstractC3887r, BitmapFactory.Options options, AbstractC3880a abstractC3880a, AbstractC3712e abstractC3712e) throws IOException {
        options.inJustDecodeBounds = true;
        m37270b(abstractC3887r, options, abstractC3880a, abstractC3712e);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    /* renamed from: b */
    private static Bitmap m37270b(AbstractC3887r abstractC3887r, BitmapFactory.Options options, AbstractC3880a abstractC3880a, AbstractC3712e abstractC3712e) throws IOException {
        if (!options.inJustDecodeBounds) {
            abstractC3880a.mo37247a();
            abstractC3887r.mo37254c();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        C3898y.m37245a().lock();
        try {
            try {
                Bitmap mo37256a = abstractC3887r.mo37256a(options);
                C3898y.m37245a().unlock();
                return mo37256a;
            } catch (IllegalArgumentException e) {
                IOException iOException = new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m37277a(options.inBitmap), e);
                Log.isLoggable("Downsampler", 3);
                if (options.inBitmap == null) {
                    throw iOException;
                }
                try {
                    abstractC3712e.mo37266a(options.inBitmap);
                    options.inBitmap = null;
                    Bitmap m37270b = m37270b(abstractC3887r, options, abstractC3880a, abstractC3712e);
                    C3898y.m37245a().unlock();
                    return m37270b;
                } catch (IOException e2) {
                    throw iOException;
                }
            }
        } catch (Throwable th) {
            C3898y.m37245a().unlock();
            throw th;
        }
    }

    /* renamed from: b */
    private static BitmapFactory.Options m37272b() {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        synchronized (C3878l.class) {
            try {
                Queue<BitmapFactory.Options> queue = f14247k;
                synchronized (queue) {
                    poll = queue.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    m37269c(options);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return options;
    }

    /* renamed from: b */
    private static void m37271b(BitmapFactory.Options options) {
        m37269c(options);
        Queue<BitmapFactory.Options> queue = f14247k;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    /* renamed from: c */
    private static void m37269c(BitmapFactory.Options options) {
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
    /* JADX WARN: Type inference failed for: r0v442, types: [double] */
    /* JADX WARN: Type inference failed for: r0v456, types: [double] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.load.engine.AbstractC3811u<android.graphics.Bitmap> m37275a(com.bumptech.glide.load.resource.bitmap.AbstractC3887r r7, int r8, int r9, com.bumptech.glide.load.C3822h r10, com.bumptech.glide.load.resource.bitmap.C3878l.AbstractC3880a r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.C3878l.m37275a(com.bumptech.glide.load.resource.bitmap.r, int, int, com.bumptech.glide.load.h, com.bumptech.glide.load.resource.bitmap.l$a):com.bumptech.glide.load.engine.u");
    }

    /* renamed from: a */
    public final AbstractC3811u<Bitmap> m37273a(InputStream inputStream, int i, int i2, C3822h c3822h, AbstractC3880a abstractC3880a) throws IOException {
        return m37275a(new AbstractC3887r.C3888a(inputStream, this.f14249h, this.f14248g), i, i2, c3822h, abstractC3880a);
    }
}
