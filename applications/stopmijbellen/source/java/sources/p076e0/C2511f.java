package p076e0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.support.p012v4.media.C0082b;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.util.Objects;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import p076e0.C2505d;
import p087f0.C2699e;
/* renamed from: e0.f */
/* loaded from: classes-dex2jar.jar:e0/f.class */
public final class C2511f {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f8775a = new ThreadLocal<>();

    /* renamed from: b */
    public static final WeakHashMap<C2513b, SparseArray<C2512a>> f8776b = new WeakHashMap<>(0);

    /* renamed from: c */
    public static final Object f8777c = new Object();

    /* renamed from: e0.f$a */
    /* loaded from: classes-dex2jar.jar:e0/f$a.class */
    public static class C2512a {

        /* renamed from: a */
        public final ColorStateList f8778a;

        /* renamed from: b */
        public final Configuration f8779b;

        public C2512a(ColorStateList colorStateList, Configuration configuration) {
            this.f8778a = colorStateList;
            this.f8779b = configuration;
        }
    }

    /* renamed from: e0.f$b */
    /* loaded from: classes-dex2jar.jar:e0/f$b.class */
    public static final class C2513b {

        /* renamed from: a */
        public final Resources f8780a;

        /* renamed from: b */
        public final Resources.Theme f8781b;

        public C2513b(Resources resources, Resources.Theme theme) {
            this.f8780a = resources;
            this.f8781b = theme;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C2513b.class != obj.getClass()) {
                return false;
            }
            C2513b c2513b = (C2513b) obj;
            if (!this.f8780a.equals(c2513b.f8780a) || !Objects.equals(this.f8781b, c2513b.f8781b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return Objects.hash(this.f8780a, this.f8781b);
        }
    }

    /* renamed from: e0.f$c */
    /* loaded from: classes-dex2jar.jar:e0/f$c.class */
    public static abstract class AbstractC2514c {

        /* renamed from: e0.f$c$a */
        /* loaded from: classes-dex2jar.jar:e0/f$c$a.class */
        public class RunnableC2515a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Typeface f8782a;

            public RunnableC2515a(Typeface typeface) {
                AbstractC2514c.this = r4;
                this.f8782a = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC2514c.this.mo59e(this.f8782a);
            }
        }

        /* renamed from: e0.f$c$b */
        /* loaded from: classes-dex2jar.jar:e0/f$c$b.class */
        public class RunnableC2516b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f8784a;

            public RunnableC2516b(int i) {
                AbstractC2514c.this = r4;
                this.f8784a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC2514c.this.mo60d(this.f8784a);
            }
        }

        /* renamed from: c */
        public static Handler m3491c(Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            return handler2;
        }

        /* renamed from: a */
        public final void m3493a(int i, Handler handler) {
            m3491c(handler).post(new RunnableC2516b(i));
        }

        /* renamed from: b */
        public final void m3492b(Typeface typeface, Handler handler) {
            m3491c(handler).post(new RunnableC2515a(typeface));
        }

        /* renamed from: d */
        public abstract void mo60d(int i);

        /* renamed from: e */
        public abstract void mo59e(Typeface typeface);
    }

    /* renamed from: a */
    public static Typeface m3495a(Context context, int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m3494b(context, i, new TypedValue(), 0, null, null, false, false);
    }

    /* renamed from: b */
    public static Typeface m3494b(Context context, int i, TypedValue typedValue, int i2, AbstractC2514c abstractC2514c, Handler handler, boolean z, boolean z2) {
        Typeface typeface;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            StringBuilder m8752j = C0082b.m8752j("Resource \"");
            m8752j.append(resources.getResourceName(i));
            m8752j.append("\" (");
            m8752j.append(Integer.toHexString(i));
            m8752j.append(") is not a Font: ");
            m8752j.append(typedValue);
            throw new Resources.NotFoundException(m8752j.toString());
        }
        String charSequence2 = charSequence.toString();
        if (!charSequence2.startsWith("res/")) {
            typeface = null;
            if (abstractC2514c != null) {
                abstractC2514c.m3493a(-3, handler);
                typeface = null;
            }
        } else {
            Typeface typeface2 = C2699e.f9280b.get(C2699e.m3241c(resources, i, i2));
            if (typeface2 != null) {
                if (abstractC2514c != null) {
                    abstractC2514c.m3492b(typeface2, handler);
                }
                typeface = typeface2;
            } else if (z2) {
                typeface = null;
            } else {
                try {
                    if (charSequence2.toLowerCase().endsWith(".xml")) {
                        C2505d.AbstractC2506a m3499a = C2505d.m3499a(resources.getXml(i), resources);
                        if (m3499a == null) {
                            typeface = null;
                            if (abstractC2514c != null) {
                                abstractC2514c.m3493a(-3, handler);
                                typeface = null;
                            }
                        } else {
                            typeface = C2699e.m3243a(context, m3499a, resources, i, i2, abstractC2514c, handler, z);
                        }
                    } else {
                        typeface = C2699e.m3242b(context, resources, i, charSequence2, i2);
                        if (abstractC2514c != null) {
                            if (typeface != null) {
                                abstractC2514c.m3492b(typeface, handler);
                            } else {
                                abstractC2514c.m3493a(-3, handler);
                            }
                        }
                    }
                } catch (IOException | XmlPullParserException e) {
                    typeface = null;
                    if (abstractC2514c != null) {
                        abstractC2514c.m3493a(-3, handler);
                        typeface = null;
                    }
                }
            }
        }
        if (typeface != null || abstractC2514c != null || z2) {
            return typeface;
        }
        StringBuilder m8752j2 = C0082b.m8752j("Font resource ID #0x");
        m8752j2.append(Integer.toHexString(i));
        m8752j2.append(" could not be retrieved.");
        throw new Resources.NotFoundException(m8752j2.toString());
    }
}
