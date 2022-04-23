package p459j.p460a.p471b1.p473b;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b1.b.a */
/* loaded from: classes3-dex2jar.jar:j/a/b1/b/a.class */
public final class C11510a {

    /* renamed from: a */
    public static final C11510a f25703a = new C11510a();

    /* renamed from: a */
    public static final File m9443a(Context context, String str) throws IllegalStateException {
        File file;
        if (context == null) {
            file = null;
        } else if (!m9440b()) {
            file = null;
        } else if (f25703a.m9445a()) {
            file = context.getExternalFilesDir(str);
        } else if (f25703a.m9439b(context)) {
            file = Environment.getExternalStorageDirectory();
        } else {
            throw new IllegalStateException("No write external permission");
        }
        return file;
    }

    /* renamed from: a */
    public static /* synthetic */ File m9442a(Context context, String str, int i, Object obj) throws IllegalStateException {
        if ((i & 2) != 0) {
            str = null;
        }
        return m9443a(context, str);
    }

    /* renamed from: b */
    public static final File m9438b(Context context, boolean z) {
        File file;
        C15149k.m377b(context, "context");
        if (!f25703a.m9445a()) {
            file = f25703a.m9441a(context, z);
        } else if (!z || !m9440b()) {
            File cacheDir = context.getCacheDir();
            if (cacheDir != null) {
                file = cacheDir;
            } else {
                file = new File("/data/data/" + context.getPackageName() + "/cache/");
            }
        } else {
            file = context.getExternalCacheDir();
        }
        return file;
    }

    /* renamed from: b */
    public static final boolean m9440b() {
        String str = "";
        try {
            str = Environment.getExternalStorageState();
        } catch (IncompatibleClassChangeError | NullPointerException e) {
        }
        return C15149k.m384a((Object) str, (Object) "mounted");
    }

    /* renamed from: c */
    public static final boolean m9437c(Context context) {
        C15149k.m377b(context, "context");
        return (f25703a.m9445a() || f25703a.m9439b(context)) && m9440b();
    }

    /* renamed from: d */
    public static final File m9436d(Context context) throws IllegalStateException {
        return m9442a(context, null, 2, null);
    }

    /* renamed from: a */
    public final File m9444a(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), context.getPackageName()), "cache");
        if (!file.exists()) {
            if (!file.mkdirs()) {
                return null;
            }
            try {
                new File(file, ".nomedia").createNewFile();
            } catch (IOException e) {
            }
        }
        return file;
    }

    /* renamed from: a */
    public final File m9441a(Context context, boolean z) {
        File a = (!z || !m9440b() || !m9439b(context)) ? null : m9444a(context);
        File file = a;
        if (a == null) {
            file = context.getCacheDir();
        }
        File file2 = file;
        if (file == null) {
            String str = "/data/data/" + context.getPackageName() + "/cache/";
            C15136c0 c0Var = C15136c0.f33133a;
            Object[] objArr = {str};
            C15149k.m383a((Object) String.format("Can't define system cache directory! '%s' will be used.", Arrays.copyOf(objArr, objArr.length)), "java.lang.String.format(format, *args)");
            file2 = new File(str);
        }
        return file2;
    }

    /* renamed from: a */
    public final boolean m9445a() {
        return Build.VERSION.SDK_INT >= 29;
    }

    /* renamed from: b */
    public final boolean m9439b(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
