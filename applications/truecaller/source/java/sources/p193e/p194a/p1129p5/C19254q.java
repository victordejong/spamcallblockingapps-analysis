package p193e.p194a.p1129p5;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import java.io.File;
import java.io.FileInputStream;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.utils.MediaStoreUtil$moveToDownload$2", f = "MediaStoreUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.p5.q */
/* loaded from: classes15-dex2jar.jar:e/a/p5/q.class */
public final class C19254q extends i implements p<i0, d<? super Uri>, Object> {

    /* renamed from: e */
    public final /* synthetic */ String f53620e;

    /* renamed from: f */
    public final /* synthetic */ Context f53621f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19254q(String str, Context context, d dVar) {
        super(2, dVar);
        this.f53620e = str;
        this.f53621f = context;
    }

    /* renamed from: i */
    public final d<s> m13742i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19254q(this.f53620e, this.f53621f, dVar);
    }

    /* renamed from: k */
    public final Object m13741k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        String str = this.f53620e;
        Context context = this.f53621f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        File file = new File(str);
        Uri uri = null;
        if (file.exists()) {
            C19315t c19315t = C19315t.f53757a;
            String name = file.getName();
            l.d(name, "sourceFile.name");
            ContentValues m13474b = C19315t.m13474b(c19315t, name, null, 2);
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                Uri contentUri = Build.VERSION.SDK_INT >= 29 ? MediaStore.Downloads.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external");
                l.d(contentUri, "getExternalUri()");
                uri = c19315t.m13475a(context, fileInputStream, contentUri, m13474b);
                if (uri != null) {
                    file.delete();
                } else {
                    uri = null;
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return uri;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final Object m13740s(Object obj) {
        C25225a.m3932a3(obj);
        File file = new File(this.f53620e);
        if (file.exists()) {
            C19315t c19315t = C19315t.f53757a;
            String name = file.getName();
            l.d(name, "sourceFile.name");
            ContentValues m13474b = C19315t.m13474b(c19315t, name, null, 2);
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                Context context = this.f53621f;
                Uri contentUri = Build.VERSION.SDK_INT >= 29 ? MediaStore.Downloads.EXTERNAL_CONTENT_URI : MediaStore.Files.getContentUri("external");
                l.d(contentUri, "getExternalUri()");
                Uri m13475a = c19315t.m13475a(context, fileInputStream, contentUri, m13474b);
                if (m13475a != null) {
                    file.delete();
                } else {
                    m13475a = null;
                }
                C25225a.m4016G(fileInputStream, null);
                return m13475a;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        return null;
    }
}
