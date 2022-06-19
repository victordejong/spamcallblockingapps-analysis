package p193e.p194a.p1129p5;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import e.m.e.g0.a;
import e.m.e.k;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.b;
import s1.z.c.l;
/* renamed from: e.a.p5.o */
/* loaded from: classes15-dex2jar.jar:e/a/p5/o.class */
public final class C19250o {
    /* renamed from: b */
    public static Object m13744b(C19250o c19250o, Context context, String str, Type type, File file, int i) {
        File file2;
        Object obj;
        Object obj2;
        if ((i & 8) != 0) {
            file2 = context.getFilesDir();
            l.d(file2, "context.filesDir");
        } else {
            file2 = null;
        }
        Objects.requireNonNull(c19250o);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "fileName");
        l.e(type, "typeOfT");
        l.e(file2, "dir");
        try {
            obj = c19250o.m13745a(new FileReader(new File(file2, str)), type);
        } catch (Exception e) {
            obj = null;
        }
        if (obj != null) {
            obj2 = obj;
        } else {
            try {
                InputStream open = context.getAssets().open(str);
                l.d(open, "context.assets.open(fileName)");
                obj2 = c19250o.m13745a(new InputStreamReader(open, b.a), type);
            } catch (Exception e2) {
                obj2 = null;
            }
        }
        return obj2;
    }

    /* renamed from: a */
    public final <T> T m13745a(Reader reader, Type type) throws IOException {
        l.e(reader, "reader");
        l.e(type, "typeOfT");
        try {
            k kVar = new k();
            a k = kVar.k(reader);
            T t = (T) kVar.c(k, type);
            k.a(t, k);
            C25225a.m4016G(reader, null);
            return t;
        } catch (Exception e) {
            throw new IOException("Could not read or parse the file", e);
        }
    }
}
