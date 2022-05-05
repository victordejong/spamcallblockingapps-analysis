package p459j.p460a.p582w0;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import java.io.File;
import java.io.FileOutputStream;
import p081h.p119d.p120a.C5764b;
import p081h.p119d.p120a.C5776l;
import p626l.p640y.C15103n;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.i2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/i2.class */
public final class C14028i2 {
    static {
        new C14028i2();
    }

    /* renamed from: a */
    public static final void m2754a(Context context, Uri uri, File file) throws Exception {
        C15149k.m377b(context, "context");
        C15149k.m377b(uri, "uri");
        C15149k.m377b(file, "file");
        C5764b<Uri, byte[]> a = C5776l.m24470c(context).m24457a(uri).m24524l().m24533a(Bitmap.CompressFormat.JPEG, 90);
        a.m24536i();
        a.m24534k();
        byte[] bArr = a.m24520a(1080, 1080).get();
        if (bArr != null) {
            FileOutputStream fileOutputStream = new FileOutputStream(file, false);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        }
    }

    /* renamed from: a */
    public static final void m2753a(Context context, String str) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "subFolder");
        File file = new File(context.getCacheDir(), str);
        if (!file.exists()) {
            file = null;
        }
        if (file != null) {
            C15103n.m427c(file);
        }
    }

    /* renamed from: b */
    public static final File m2752b(Context context, String str) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "subFolder");
        long currentTimeMillis = System.currentTimeMillis();
        File file = new File(context.getCacheDir(), str);
        file.mkdir();
        File createTempFile = File.createTempFile(String.valueOf(currentTimeMillis), ".jpg", file);
        C15149k.m383a((Object) createTempFile, "File.createTempFile(Syst…der).also { it.mkdir() })");
        return createTempFile;
    }
}
