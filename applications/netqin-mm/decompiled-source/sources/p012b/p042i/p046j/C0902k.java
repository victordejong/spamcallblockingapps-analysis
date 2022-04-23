package p012b.p042i.p046j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import com.google.logging.type.LogSeverity;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import p012b.p042i.p044i.p045c.C0874c;
import p012b.p042i.p051m.C0924b;
/* renamed from: b.i.j.k */
/* loaded from: classes-dex2jar.jar:b/i/j/k.class */
public class C0902k {

    /* renamed from: a */
    public ConcurrentHashMap<Long, C0874c.C0876b> f4111a = new ConcurrentHashMap<>();

    /* renamed from: b.i.j.k$a */
    /* loaded from: classes-dex2jar.jar:b/i/j/k$a.class */
    public class C0903a implements AbstractC0905c<C0924b.C0930f> {
        public C0903a(C0902k kVar) {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public int mo35539a(C0924b.C0930f fVar) {
            return fVar.m35470d();
        }

        /* renamed from: b  reason: avoid collision after fix types in other method */
        public boolean mo35538b(C0924b.C0930f fVar) {
            return fVar.m35469e();
        }
    }

    /* renamed from: b.i.j.k$b */
    /* loaded from: classes-dex2jar.jar:b/i/j/k$b.class */
    public class C0904b implements AbstractC0905c<C0874c.C0877c> {
        public C0904b(C0902k kVar) {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public int mo35539a(C0874c.C0877c cVar) {
            return cVar.m35649e();
        }

        /* renamed from: b  reason: avoid collision after fix types in other method */
        public boolean mo35538b(C0874c.C0877c cVar) {
            return cVar.m35648f();
        }
    }

    /* renamed from: b.i.j.k$c */
    /* loaded from: classes-dex2jar.jar:b/i/j/k$c.class */
    public interface AbstractC0905c<T> {
        /* renamed from: a */
        int mo35539a(T t);

        /* renamed from: b */
        boolean mo35538b(T t);
    }

    /* renamed from: a */
    public static <T> T m35545a(T[] tArr, int i, AbstractC0905c<T> cVar) {
        int i2 = (i & 1) == 0 ? LogSeverity.WARNING_VALUE : LogSeverity.ALERT_VALUE;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        for (T t2 : tArr) {
            int abs = (Math.abs(cVar.mo35539a(t2) - i2) * 2) + (cVar.mo35538b(t2) == z ? 0 : 1);
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

    /* renamed from: b */
    public static long m35544b(Typeface typeface) {
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

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface mo35553a(Context context, Resources resources, int i, String str, int i2) {
        File a = C0906l.m35537a(context);
        if (a == null) {
            return null;
        }
        try {
            if (!C0906l.m35532a(a, resources, i)) {
                a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a.getPath());
            a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            a.delete();
            return null;
        } catch (Throwable th) {
            a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public Typeface mo35552a(Context context, CancellationSignal cancellationSignal, C0924b.C0930f[] fVarArr, int i) {
        Throwable th;
        InputStream inputStream = null;
        if (fVarArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(mo35546a(fVarArr, i).m35471c());
            try {
                Typeface a = mo35550a(context, inputStream);
                C0906l.m35534a(inputStream);
                return a;
            } catch (IOException e) {
                C0906l.m35534a(inputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                C0906l.m35534a(inputStream);
                throw th;
            }
        } catch (IOException e2) {
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public Typeface mo35551a(Context context, C0874c.C0876b bVar, Resources resources, int i) {
        C0874c.C0877c a = m35547a(bVar, i);
        if (a == null) {
            return null;
        }
        Typeface a2 = C0896e.m35583a(context, resources, a.m35652b(), a.m35653a(), i);
        m35548a(a2, bVar);
        return a2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface mo35550a(Context context, InputStream inputStream) {
        File a = C0906l.m35537a(context);
        if (a == null) {
            return null;
        }
        try {
            if (!C0906l.m35531a(a, inputStream)) {
                a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(a.getPath());
            a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            a.delete();
            return null;
        } catch (Throwable th) {
            a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public C0874c.C0876b m35549a(Typeface typeface) {
        long b = m35544b(typeface);
        if (b == 0) {
            return null;
        }
        return this.f4111a.get(Long.valueOf(b));
    }

    /* renamed from: a */
    public final C0874c.C0877c m35547a(C0874c.C0876b bVar, int i) {
        return (C0874c.C0877c) m35545a(bVar.m35654a(), i, new C0904b(this));
    }

    /* renamed from: a */
    public C0924b.C0930f mo35546a(C0924b.C0930f[] fVarArr, int i) {
        return (C0924b.C0930f) m35545a(fVarArr, i, new C0903a(this));
    }

    /* renamed from: a */
    public final void m35548a(Typeface typeface, C0874c.C0876b bVar) {
        long b = m35544b(typeface);
        if (b != 0) {
            this.f4111a.put(Long.valueOf(b), bVar);
        }
    }
}
