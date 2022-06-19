package p193e.p194a.p1129p5;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import java.io.File;
import java.io.OutputStream;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.utils.MediaStoreUtil$saveToDownload$2", f = "MediaStoreUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.p5.s */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s.class */
public final class C19271s extends i implements p<i0, d<? super Uri>, Object> {

    /* renamed from: e */
    public final /* synthetic */ Context f53666e;

    /* renamed from: f */
    public final /* synthetic */ String f53667f;

    /* renamed from: g */
    public final /* synthetic */ byte[] f53668g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19271s(Context context, String str, byte[] bArr, d dVar) {
        super(2, dVar);
        this.f53666e = context;
        this.f53667f = str;
        this.f53668g = bArr;
    }

    /* renamed from: i */
    public final d<s> m13710i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19271s(this.f53666e, this.f53667f, this.f53668g, dVar);
    }

    /* renamed from: k */
    public final Object m13709k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19271s(this.f53666e, this.f53667f, this.f53668g, dVar).m13708s(s.a);
    }

    /* renamed from: s */
    public final Object m13708s(Object obj) {
        int i = Build.VERSION.SDK_INT;
        C25225a.m3932a3(obj);
        Context applicationContext = this.f53666e.getApplicationContext();
        l.d(applicationContext, "context.applicationContext");
        ContentResolver contentResolver = applicationContext.getContentResolver();
        String str = this.f53667f;
        String str2 = Environment.DIRECTORY_DOWNLOADS;
        l.d(str2, "Environment.DIRECTORY_DOWNLOADS");
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", str);
        if (i >= 29) {
            contentValues.put("relative_path", str2);
        } else {
            StringBuilder sb = new StringBuilder();
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(str2);
            sb.append(externalStoragePublicDirectory != null ? externalStoragePublicDirectory.getAbsolutePath() : null);
            sb.append(File.separator);
            sb.append(str);
            contentValues.put("_data", sb.toString());
        }
        Uri insert = this.f53666e.getContentResolver().insert(i >= 29 ? MediaStore.Downloads.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external"), contentValues);
        if (insert != null) {
            l.d(insert, "context.contentResolver.…: return@withContext null");
            OutputStream openOutputStream = contentResolver.openOutputStream(insert);
            if (openOutputStream != null) {
                try {
                    openOutputStream.write(this.f53668g);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            return insert;
        }
        return null;
    }
}
