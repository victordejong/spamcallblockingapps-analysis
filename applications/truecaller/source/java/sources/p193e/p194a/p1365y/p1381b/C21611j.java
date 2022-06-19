package p193e.p194a.p1365y.p1381b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.MediaFormat;
import com.truecaller.flashsdk.assist.FlashBitmapConverter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.inject.Inject;
import p1727n3.p1857q.p1858a.C26901a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.y.b.j */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/j.class */
public final class C21611j implements FlashBitmapConverter {

    /* renamed from: a */
    public final Context f60266a;

    /* renamed from: b */
    public final AbstractC21607h f60267b;

    @Inject
    public C21611j(Context context, AbstractC21607h abstractC21607h) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC21607h, "fileUtils");
        this.f60266a = context;
        this.f60267b = abstractC21607h;
        Resources resources = context.getResources();
        l.d(resources, "context.resources");
        resources.getDisplayMetrics();
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x01d6, code lost:
        if (r0 > r0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
        if (r9 != null) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
    @Override // com.truecaller.flashsdk.assist.FlashBitmapConverter
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.net.Uri mo9365a(android.net.Uri r9) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1381b.C21611j.mo9365a(android.net.Uri):android.net.Uri");
    }

    /* renamed from: b */
    public final Bitmap.CompressFormat m9364b(BitmapFactory.Options options) {
        String str = options.outMimeType;
        if (str == null) {
            return Bitmap.CompressFormat.JPEG;
        }
        l.d(str, "outMimeType");
        return r.m(str, MediaFormat.PNG, false, 2) ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    /* renamed from: c */
    public final Uri m9363c(Bitmap bitmap, File file, int i, BitmapFactory.Options options) {
        Uri uri;
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(m9364b(options), i, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            uri = this.f60267b.mo9367c(file);
        } catch (IOException e) {
            uri = null;
        } catch (Throwable th) {
            bitmap.recycle();
            fileOutputStream.close();
            throw th;
        }
        bitmap.recycle();
        fileOutputStream.close();
        return uri;
    }

    /* renamed from: d */
    public final int m9362d(String str) {
        int m1217e = new C26901a(str).m1217e("Orientation", 1);
        return m1217e != 3 ? m1217e != 6 ? m1217e != 8 ? 0 : 270 : 90 : 180;
    }

    /* renamed from: e */
    public final BitmapFactory.Options m9361e(Uri uri) {
        InputStream openInputStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        int ordinal = m9360f(uri).ordinal();
        if (ordinal == 0) {
            BitmapFactory.decodeFile(uri.getPath(), options);
        } else if (ordinal == 1) {
            try {
                BitmapFactory.decodeStream(this.f60266a.getContentResolver().openInputStream(uri), null, options);
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return options;
    }

    /* renamed from: f */
    public final FlashBitmapConverter.Scheme m9360f(Uri uri) {
        FlashBitmapConverter.Scheme scheme;
        String scheme2 = uri.getScheme();
        FlashBitmapConverter.Scheme scheme3 = FlashBitmapConverter.Scheme.FILE;
        if (l.a(scheme2, scheme3.getValue())) {
            scheme = scheme3;
        } else {
            FlashBitmapConverter.Scheme scheme4 = FlashBitmapConverter.Scheme.CONTENT;
            if (!l.a(scheme2, scheme4.getValue())) {
                StringBuilder m8728C = C22128a.m8728C("Uri scheme: ");
                m8728C.append(uri.getScheme());
                m8728C.append(" is not supported");
                throw new IllegalArgumentException(m8728C.toString());
            }
            scheme = scheme4;
        }
        return scheme;
    }
}
