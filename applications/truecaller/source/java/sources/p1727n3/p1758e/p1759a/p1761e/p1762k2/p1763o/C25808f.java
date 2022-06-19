package p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.Size;
import android.view.Surface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25806b;
import p1727n3.p1758e.p1767b.C26103y0;
/* renamed from: n3.e.a.e.k2.o.f */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/f.class */
public class C25808f implements C25806b.AbstractC25807a {

    /* renamed from: a */
    public final Object f72247a;

    /* renamed from: n3.e.a.e.k2.o.f$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/f$a.class */
    public static final class C25809a {

        /* renamed from: a */
        public final List<Surface> f72248a;

        /* renamed from: b */
        public final Size f72249b;

        /* renamed from: c */
        public final int f72250c;

        /* renamed from: d */
        public final int f72251d;

        public C25809a(Surface surface) {
            Size size;
            int i;
            int i2;
            MediaSessionCompat.m43196u(surface, "Surface must not be null");
            this.f72248a = Collections.singletonList(surface);
            try {
                Method declaredMethod = Class.forName("android.hardware.camera2.legacy.LegacyCameraDevice").getDeclaredMethod("getSurfaceSize", Surface.class);
                declaredMethod.setAccessible(true);
                size = (Size) declaredMethod.invoke(null, surface);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                C26103y0.m2723b("OutputConfigCompat", "Unable to retrieve surface size.", e);
                size = null;
            }
            this.f72249b = size;
            try {
                i = ((Integer) Class.forName("android.hardware.camera2.legacy.LegacyCameraDevice").getDeclaredMethod("detectSurfaceType", Surface.class).invoke(null, surface)).intValue();
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
                C26103y0.m2723b("OutputConfigCompat", "Unable to retrieve surface format.", e2);
                i = 0;
            }
            this.f72250c = i;
            try {
                i2 = ((Integer) Surface.class.getDeclaredMethod("getGenerationId", new Class[0]).invoke(surface, new Object[0])).intValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e3) {
                C26103y0.m2723b("OutputConfigCompat", "Unable to retrieve surface generation id.", e3);
                i2 = -1;
            }
            this.f72251d = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C25809a)) {
                return false;
            }
            C25809a c25809a = (C25809a) obj;
            if (!this.f72249b.equals(c25809a.f72249b) || this.f72250c != c25809a.f72250c || this.f72251d != c25809a.f72251d || !Objects.equals(null, null)) {
                return false;
            }
            int min = Math.min(this.f72248a.size(), c25809a.f72248a.size());
            for (int i = 0; i < min; i++) {
                if (this.f72248a.get(i) != c25809a.f72248a.get(i)) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            int hashCode = this.f72248a.hashCode() ^ 31;
            int i = this.f72251d ^ ((hashCode << 5) - hashCode);
            int hashCode2 = this.f72249b.hashCode() ^ ((i << 5) - i);
            int i2 = this.f72250c ^ ((hashCode2 << 5) - hashCode2);
            int i3 = ((i2 << 5) - i2) ^ 0;
            return ((i3 << 5) - i3) ^ 0;
        }
    }

    public C25808f(Surface surface) {
        this.f72247a = new C25809a(surface);
    }

    public C25808f(Object obj) {
        this.f72247a = obj;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25806b.AbstractC25807a
    /* renamed from: a */
    public String mo2983a() {
        Objects.requireNonNull((C25809a) this.f72247a);
        return null;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25806b.AbstractC25807a
    /* renamed from: b */
    public Object mo2982b() {
        return null;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C25808f)) {
            return false;
        }
        return Objects.equals(this.f72247a, ((C25808f) obj).f72247a);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25806b.AbstractC25807a
    public Surface getSurface() {
        List<Surface> list = ((C25809a) this.f72247a).f72248a;
        if (list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

    public int hashCode() {
        return this.f72247a.hashCode();
    }
}
