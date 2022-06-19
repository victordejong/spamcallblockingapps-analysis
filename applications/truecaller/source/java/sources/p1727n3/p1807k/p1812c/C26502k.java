package p1727n3.p1807k.p1812c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;
import p1727n3.p1807k.p1809b.p1811d.C26484d;
import p1727n3.p1807k.p1817f.C26530l;
/* renamed from: n3.k.c.k */
/* loaded from: classes-dex2jar.jar:n3/k/c/k.class */
public class C26502k {

    /* renamed from: a */
    public ConcurrentHashMap<Long, C26484d> f74295a = new ConcurrentHashMap<>();

    /* renamed from: n3.k.c.k$a */
    /* loaded from: classes-dex2jar.jar:n3/k/c/k$a.class */
    public interface AbstractC26503a<T> {
        /* renamed from: a */
        int mo1728a(T t);

        /* renamed from: b */
        boolean mo1727b(T t);
    }

    /* renamed from: e */
    public static <T> T m1729e(T[] tArr, int i, AbstractC26503a<T> abstractC26503a) {
        int i2;
        int i3 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i4 = Integer.MAX_VALUE;
        int length = tArr.length;
        int i5 = 0;
        while (i5 < length) {
            T t2 = tArr[i5];
            int abs = (Math.abs(abstractC26503a.mo1728a(t2) - i3) * 2) + (abstractC26503a.mo1727b(t2) == z ? 0 : 1);
            if (t != null) {
                i2 = i4;
                if (i4 <= abs) {
                    i5++;
                    i4 = i2;
                }
            }
            t = t2;
            i2 = abs;
            i5++;
            i4 = i2;
        }
        return t;
    }

    /* renamed from: a */
    public Typeface mo1733a(Context context, C26484d c26484d, Resources resources, int i) {
        throw null;
    }

    /* renamed from: b */
    public Typeface mo1732b(Context context, CancellationSignal cancellationSignal, C26530l[] c26530lArr, int i) {
        throw null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public Typeface mo1731c(Context context, InputStream inputStream) {
        File m43186x0 = MediaSessionCompat.m43186x0(context);
        if (m43186x0 == null) {
            return null;
        }
        try {
            if (!MediaSessionCompat.m43292K(m43186x0, inputStream)) {
                m43186x0.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m43186x0.getPath());
            m43186x0.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m43186x0.delete();
            return null;
        } catch (Throwable th) {
            m43186x0.delete();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public Typeface mo1730d(Context context, Resources resources, int i, String str, int i2) {
        File m43186x0 = MediaSessionCompat.m43186x0(context);
        if (m43186x0 == null) {
            return null;
        }
        try {
            if (!MediaSessionCompat.m43295J(m43186x0, resources, i)) {
                m43186x0.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m43186x0.getPath());
            m43186x0.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m43186x0.delete();
            return null;
        } catch (Throwable th) {
            m43186x0.delete();
            throw th;
        }
    }
}
