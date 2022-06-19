package p1727n3.p1807k.p1809b.p1811d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1807k.p1812c.C26496d;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.b.d.h */
/* loaded from: classes-dex2jar.jar:n3/k/b/d/h.class */
public final class C26488h {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f74265a = new ThreadLocal<>();

    /* renamed from: b */
    public static final WeakHashMap<Object, SparseArray<Object>> f74266b = new WeakHashMap<>(0);

    /* renamed from: c */
    public static final Object f74267c = new Object();

    /* renamed from: n3.k.b.d.h$a */
    /* loaded from: classes-dex2jar.jar:n3/k/b/d/h$a.class */
    public static abstract class AbstractC26489a {

        /* renamed from: n3.k.b.d.h$a$a */
        /* loaded from: classes-dex2jar.jar:n3/k/b/d/h$a$a.class */
        public class RunnableC26490a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Typeface f74268a;

            public RunnableC26490a(Typeface typeface) {
                AbstractC26489a.this = r4;
                this.f74268a = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC26489a.this.mo1759e(this.f74268a);
            }
        }

        /* renamed from: n3.k.b.d.h$a$b */
        /* loaded from: classes-dex2jar.jar:n3/k/b/d/h$a$b.class */
        public class RunnableC26491b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f74270a;

            public RunnableC26491b(int i) {
                AbstractC26489a.this = r4;
                this.f74270a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC26489a.this.mo1760d(this.f74270a);
            }
        }

        /* renamed from: c */
        public static Handler m1761c(Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            return handler2;
        }

        /* renamed from: a */
        public final void m1763a(int i, Handler handler) {
            m1761c(handler).post(new RunnableC26491b(i));
        }

        /* renamed from: b */
        public final void m1762b(Typeface typeface, Handler handler) {
            m1761c(handler).post(new RunnableC26490a(typeface));
        }

        /* renamed from: d */
        public abstract void mo1760d(int i);

        /* renamed from: e */
        public abstract void mo1759e(Typeface typeface);
    }

    /* renamed from: a */
    public static Typeface m1765a(Context context, int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m1764b(context, i, new TypedValue(), 0, null, null, false, false);
    }

    /* renamed from: b */
    public static Typeface m1764b(Context context, int i, TypedValue typedValue, int i2, AbstractC26489a abstractC26489a, Handler handler, boolean z, boolean z2) {
        Typeface typeface;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            StringBuilder m8728C = C22128a.m8728C("Resource \"");
            m8728C.append(resources.getResourceName(i));
            m8728C.append("\" (");
            m8728C.append(Integer.toHexString(i));
            m8728C.append(") is not a Font: ");
            m8728C.append(typedValue);
            throw new Resources.NotFoundException(m8728C.toString());
        }
        String charSequence2 = charSequence.toString();
        if (!charSequence2.startsWith("res/")) {
            typeface = null;
            if (abstractC26489a != null) {
                abstractC26489a.m1763a(-3, handler);
                typeface = null;
            }
        } else {
            Typeface typeface2 = C26496d.f74284b.get(C26496d.m1738c(resources, i, i2));
            if (typeface2 != null) {
                if (abstractC26489a != null) {
                    abstractC26489a.m1762b(typeface2, handler);
                }
                typeface = typeface2;
            } else if (z2) {
                typeface = null;
            } else {
                try {
                    if (charSequence2.toLowerCase().endsWith(".xml")) {
                        AbstractC26483c m43239f1 = MediaSessionCompat.m43239f1(resources.getXml(i), resources);
                        if (m43239f1 == null) {
                            typeface = null;
                            if (abstractC26489a != null) {
                                abstractC26489a.m1763a(-3, handler);
                                typeface = null;
                            }
                        } else {
                            typeface = C26496d.m1740a(context, m43239f1, resources, i, i2, abstractC26489a, handler, z);
                        }
                    } else {
                        typeface = C26496d.m1739b(context, resources, i, charSequence2, i2);
                        if (abstractC26489a != null) {
                            if (typeface != null) {
                                abstractC26489a.m1762b(typeface, handler);
                            } else {
                                abstractC26489a.m1763a(-3, handler);
                            }
                        }
                    }
                } catch (IOException | XmlPullParserException e) {
                    typeface = null;
                    if (abstractC26489a != null) {
                        abstractC26489a.m1763a(-3, handler);
                        typeface = null;
                    }
                }
            }
        }
        if (typeface != null || abstractC26489a != null || z2) {
            return typeface;
        }
        StringBuilder m8728C2 = C22128a.m8728C("Font resource ID #0x");
        m8728C2.append(Integer.toHexString(i));
        m8728C2.append(" could not be retrieved.");
        throw new Resources.NotFoundException(m8728C2.toString());
    }
}
