package p087f0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;
import p076e0.C2505d;
import p130j0.C3158l;
/* renamed from: f0.k */
/* loaded from: classes-dex2jar.jar:f0/k.class */
public class C2706k {
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: a */
    public ConcurrentHashMap<Long, C2505d.C2507b> f9298a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public Typeface mo3227a(Context context, C2505d.C2507b c2507b, Resources resources, int i) {
        throw null;
    }

    /* renamed from: b */
    public Typeface mo3226b(Context context, CancellationSignal cancellationSignal, C3158l[] c3158lArr, int i) {
        throw null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public Typeface mo3225c(Context context, InputStream inputStream) {
        File m3220c = C2707l.m3220c(context);
        if (m3220c == null) {
            return null;
        }
        try {
            if (!C2707l.m3221b(m3220c, inputStream)) {
                m3220c.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m3220c.getPath());
            m3220c.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m3220c.delete();
            return null;
        } catch (Throwable th) {
            m3220c.delete();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public Typeface mo3224d(Context context, Resources resources, int i, String str, int i2) {
        File m3220c = C2707l.m3220c(context);
        if (m3220c == null) {
            return null;
        }
        try {
            if (!C2707l.m3222a(m3220c, resources, i)) {
                m3220c.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m3220c.getPath());
            m3220c.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m3220c.delete();
            return null;
        } catch (Throwable th) {
            m3220c.delete();
            throw th;
        }
    }

    /* renamed from: e */
    public C3158l mo3223e(C3158l[] c3158lArr, int i) {
        int i2;
        int i3 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        C3158l c3158l = null;
        int i4 = Integer.MAX_VALUE;
        int length = c3158lArr.length;
        int i5 = 0;
        while (i5 < length) {
            C3158l c3158l2 = c3158lArr[i5];
            int abs = (Math.abs(c3158l2.f10623c - i3) * 2) + (c3158l2.f10624d == z ? 0 : 1);
            if (c3158l != null) {
                i2 = i4;
                if (i4 <= abs) {
                    i5++;
                    i4 = i2;
                }
            }
            c3158l = c3158l2;
            i2 = abs;
            i5++;
            i4 = i2;
        }
        return c3158l;
    }
}
