package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.c.b;
import androidx.core.content.res.c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/j.class */
public class j {
    ConcurrentHashMap<Long, c.b> h = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/j$a.class */
    public interface a<T> {
        boolean a(T t);

        int b(T t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    private static <T> T a(T[] tArr, int i, a<T> aVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int abs = (Math.abs(aVar.b(t2) - i2) * 2) + (aVar.a(t2) == z ? 0 : 1);
            if (t != null) {
                i3 = i3;
                if (i3 <= abs) {
                }
            }
            t = t2;
            i3 = abs;
        }
        return t;
    }

    /* JADX WARN: Finally extract failed */
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        File a2 = k.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (!k.a(a2, resources, i)) {
                a2.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a2.getPath());
            a2.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            a2.delete();
            return null;
        } catch (Throwable th) {
            a2.delete();
            throw th;
        }
    }

    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0043b[] bVarArr, int i) {
        Throwable th;
        InputStream inputStream = null;
        if (bVarArr.length <= 0) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(a(bVarArr, i).f1802a);
        } catch (IOException e) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            Typeface a2 = a(context, inputStream);
            k.a(inputStream);
            return a2;
        } catch (IOException e2) {
            k.a(inputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            k.a(inputStream);
            throw th;
        }
    }

    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0045c cVar = (c.C0045c) a(bVar.f1836a, i, new a<c.C0045c>() { // from class: androidx.core.graphics.j.2
            @Override // androidx.core.graphics.j.a
            public final /* bridge */ /* synthetic */ boolean a(c.C0045c cVar2) {
                return cVar2.f1839c;
            }

            @Override // androidx.core.graphics.j.a
            public final /* bridge */ /* synthetic */ int b(c.C0045c cVar2) {
                return cVar2.f1838b;
            }
        });
        if (cVar == null) {
            return null;
        }
        Typeface a2 = d.a(context, resources, cVar.f, cVar.f1837a, i);
        long a3 = a(a2);
        if (a3 != 0) {
            this.h.put(Long.valueOf(a3), bVar);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    public Typeface a(Context context, InputStream inputStream) {
        File a2 = k.a(context);
        if (a2 == null) {
            return null;
        }
        try {
            if (!k.a(a2, inputStream)) {
                a2.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a2.getPath());
            a2.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            a2.delete();
            return null;
        } catch (Throwable th) {
            a2.delete();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b.C0043b a(b.C0043b[] bVarArr, int i) {
        return (b.C0043b) a(bVarArr, i, new a<b.C0043b>() { // from class: androidx.core.graphics.j.1
            @Override // androidx.core.graphics.j.a
            public final /* bridge */ /* synthetic */ boolean a(b.C0043b bVar) {
                return bVar.f1805d;
            }

            @Override // androidx.core.graphics.j.a
            public final /* bridge */ /* synthetic */ int b(b.C0043b bVar) {
                return bVar.f1804c;
            }
        });
    }
}
