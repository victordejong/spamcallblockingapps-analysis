package p193e.p1451f.p1452a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import e.f.a.r.c;
import e.f.a.r.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import p193e.p1451f.p1452a.p1457n.AbstractC22263f;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1473o.C22569n;
import p193e.p1451f.p1452a.p1476r.AbstractC22585a;
import p193e.p1451f.p1452a.p1476r.AbstractC22587d;
import p193e.p1451f.p1452a.p1476r.AbstractC22588e;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.C22586b;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.C22593j;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1451f.p1452a.p1479s.C22607a;
import p193e.p1451f.p1452a.p1479s.C22608b;
import p193e.p1451f.p1452a.p1479s.C22610d;
import p193e.p1451f.p1452a.p1480t.C22616e;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.h */
/* loaded from: classes-dex2jar.jar:e/f/a/h.class */
public class C22234h<TranscodeType> extends AbstractC22585a<C22234h<TranscodeType>> implements Cloneable {

    /* renamed from: A */
    public final Context f61762A;

    /* renamed from: B */
    public final ComponentCallbacks2C22236i f61763B;

    /* renamed from: C */
    public final Class<TranscodeType> f61764C;

    /* renamed from: D */
    public final C22226e f61765D;

    /* renamed from: E */
    public AbstractC22239j<?, ? super TranscodeType> f61766E;

    /* renamed from: J */
    public Object f61767J;

    /* renamed from: K */
    public List<AbstractC22590g<TranscodeType>> f61768K;

    /* renamed from: L */
    public C22234h<TranscodeType> f61769L;

    /* renamed from: M */
    public boolean f61770M = true;

    /* renamed from: N */
    public boolean f61771N;

    /* renamed from: e.f.a.h$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/h$a.class */
    public static /* synthetic */ class C22235a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f61772a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f61773b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0087 -> B:47:0x0016). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008b -> B:41:0x001c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008f -> B:8:0x0022). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0093 -> B:51:0x0036). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0097 -> B:45:0x0041). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009b -> B:39:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x009f -> B:55:0x0057). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a3 -> B:49:0x0062). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00a7 -> B:43:0x006e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ab -> B:37:0x007a). Please submit an issue!!! */
        static {
            EnumC22227f.values();
            int[] iArr = new int[4];
            f61773b = iArr;
            iArr[3] = 1;
            try {
                f61773b[2] = 2;
            } catch (NoSuchFieldError e) {
            }
            try {
                f61773b[1] = 3;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f61773b[0] = 4;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f61772a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f61772a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f61772a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f61772a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f61772a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f61772a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f61772a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f61772a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    static {
        new C22591h().mo8099i(AbstractC22364k.f62126c).mo8085w(EnumC22227f.LOW).mo8113A(true);
    }

    public C22234h(ComponentCallbacks2C22222c componentCallbacks2C22222c, ComponentCallbacks2C22236i componentCallbacks2C22236i, Class<TranscodeType> cls, Context context) {
        C22591h c22591h;
        this.f61763B = componentCallbacks2C22236i;
        this.f61764C = cls;
        this.f61762A = context;
        C22226e c22226e = componentCallbacks2C22236i.f61776a.f61715d;
        AbstractC22239j<?, ?> abstractC22239j = c22226e.f61742f.get(cls);
        AbstractC22239j<?, ?> abstractC22239j2 = abstractC22239j;
        if (abstractC22239j == null) {
            Iterator<Map.Entry<Class<?>, AbstractC22239j<?, ?>>> it = c22226e.f61742f.entrySet().iterator();
            while (true) {
                abstractC22239j2 = abstractC22239j;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC22239j<?, ?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC22239j = next.getValue();
                }
            }
        }
        this.f61766E = (AbstractC22239j<?, ? super TranscodeType>) (abstractC22239j2 == null ? C22226e.f61736k : abstractC22239j2);
        this.f61765D = componentCallbacks2C22222c.f61715d;
        for (AbstractC22590g<Object> abstractC22590g : componentCallbacks2C22236i.f61785j) {
            mo8433H(abstractC22590g);
        }
        synchronized (componentCallbacks2C22236i) {
            c22591h = componentCallbacks2C22236i.f61786k;
        }
        mo8106a(c22591h);
    }

    /* renamed from: H */
    public C22234h<TranscodeType> mo8433H(AbstractC22590g<TranscodeType> abstractC22590g) {
        if (abstractC22590g != null) {
            if (this.f61768K == null) {
                this.f61768K = new ArrayList();
            }
            this.f61768K.add(abstractC22590g);
        }
        return this;
    }

    /* renamed from: J */
    public C22234h<TranscodeType> mo8106a(AbstractC22585a<?> abstractC22585a) {
        Objects.requireNonNull(abstractC22585a, "Argument must not be null");
        return (C22234h) super.mo8106a(abstractC22585a);
    }

    /* renamed from: K */
    public final AbstractC22587d m8431K(Object obj, AbstractC22598k<TranscodeType> abstractC22598k, AbstractC22590g<TranscodeType> abstractC22590g, AbstractC22588e abstractC22588e, AbstractC22239j<?, ? super TranscodeType> abstractC22239j, EnumC22227f enumC22227f, int i, int i2, AbstractC22585a<?> abstractC22585a, Executor executor) {
        C22586b c22586b;
        C22586b c22586b2;
        int i3;
        int i4;
        if (this.f61769L != null) {
            C22586b c22586b3 = new C22586b(obj, abstractC22588e);
            c22586b2 = c22586b3;
            c22586b = c22586b3;
        } else {
            c22586b = abstractC22588e;
            c22586b2 = null;
        }
        AbstractC22587d m8419W = m8419W(obj, abstractC22598k, abstractC22590g, abstractC22585a, c22586b, abstractC22239j, enumC22227f, i, i2, executor);
        if (c22586b2 == null) {
            return m8419W;
        }
        C22234h<TranscodeType> c22234h = this.f61769L;
        int i5 = c22234h.f62535k;
        int i6 = c22234h.f62534j;
        if (C22623j.m8014j(i, i2)) {
            C22234h<TranscodeType> c22234h2 = this.f61769L;
            if (!C22623j.m8014j(c22234h2.f62535k, c22234h2.f62534j)) {
                i4 = abstractC22585a.f62535k;
                i3 = abstractC22585a.f62534j;
                C22234h<TranscodeType> c22234h3 = this.f61769L;
                AbstractC22587d m8431K = c22234h3.m8431K(obj, abstractC22598k, abstractC22590g, c22586b2, c22234h3.f61766E, c22234h3.f62528d, i4, i3, c22234h3, executor);
                c22586b2.f62553c = m8419W;
                c22586b2.f62554d = m8431K;
                return c22586b2;
            }
        }
        i3 = i6;
        i4 = i5;
        C22234h<TranscodeType> c22234h32 = this.f61769L;
        AbstractC22587d m8431K2 = c22234h32.m8431K(obj, abstractC22598k, abstractC22590g, c22586b2, c22234h32.f61766E, c22234h32.f62528d, i4, i3, c22234h32, executor);
        c22586b2.f62553c = m8419W;
        c22586b2.f62554d = m8431K2;
        return c22586b2;
    }

    /* renamed from: L */
    public C22234h<TranscodeType> mo8101g() {
        C22234h<TranscodeType> c22234h = (C22234h) super.clone();
        c22234h.f61766E = (AbstractC22239j<?, ? super TranscodeType>) c22234h.f61766E.m8402a();
        return c22234h;
    }

    /* renamed from: M */
    public <Y extends AbstractC22598k<TranscodeType>> Y m8429M(Y y) {
        m8428N(y, null, this, C22616e.f62636a);
        return y;
    }

    /* renamed from: N */
    public final <Y extends AbstractC22598k<TranscodeType>> Y m8428N(Y y, AbstractC22590g<TranscodeType> abstractC22590g, AbstractC22585a<?> abstractC22585a, Executor executor) {
        Objects.requireNonNull(y, "Argument must not be null");
        if (this.f61771N) {
            AbstractC22587d m8431K = m8431K(new Object(), y, abstractC22590g, null, this.f61766E, abstractC22585a.f62528d, abstractC22585a.f62535k, abstractC22585a.f62534j, abstractC22585a, executor);
            AbstractC22587d mo8053b = y.mo8053b();
            if (m8431K.mo8071c(mo8053b)) {
                if (!(!abstractC22585a.f62533i && mo8053b.isComplete())) {
                    Objects.requireNonNull(mo8053b, "Argument must not be null");
                    if (!mo8053b.isRunning()) {
                        mo8053b.mo8066h();
                    }
                    return y;
                }
            }
            this.f61763B.m8411n(y);
            y.mo8048h(m8431K);
            ComponentCallbacks2C22236i componentCallbacks2C22236i = this.f61763B;
            synchronized (componentCallbacks2C22236i) {
                componentCallbacks2C22236i.f61781f.f62507a.add(y);
                C22569n c22569n = componentCallbacks2C22236i.f61779d;
                c22569n.f62503a.add(m8431K);
                if (!c22569n.f62505c) {
                    m8431K.mo8066h();
                } else {
                    m8431K.clear();
                    Log.isLoggable("RequestTracker", 2);
                    c22569n.f62504b.add(m8431K);
                }
            }
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b3  */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e.f.a.r.k.l<android.widget.ImageView, TranscodeType> m8427O(android.widget.ImageView r7) {
        /*
            r6 = this;
            p193e.p1451f.p1452a.p1480t.C22623j.m8023a()
            r0 = r7
            java.lang.String r1 = "Argument must not be null"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r6
            int r0 = r0.f62525a
            r1 = 2048(0x800, float:2.87E-42)
            boolean r0 = p193e.p1451f.p1452a.p1476r.AbstractC22585a.m8094n(r0, r1)
            if (r0 != 0) goto L87
            r0 = r6
            boolean r0 = r0.f62538n
            if (r0 == 0) goto L87
            r0 = r7
            android.widget.ImageView$ScaleType r0 = r0.getScaleType()
            if (r0 == 0) goto L87
            int[] r0 = p193e.p1451f.p1452a.C22234h.C22235a.f61772a
            r1 = r7
            android.widget.ImageView$ScaleType r1 = r1.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L7c;
                case 2: goto L71;
                case 3: goto L66;
                case 4: goto L66;
                case 5: goto L66;
                case 6: goto L5b;
                default: goto L58;
            }
        L58:
            goto L87
        L5b:
            r0 = r6
            e.f.a.r.a r0 = r0.mo8101g()
            e.f.a.r.a r0 = r0.mo8091q()
            r8 = r0
            goto L89
        L66:
            r0 = r6
            e.f.a.r.a r0 = r0.mo8101g()
            e.f.a.r.a r0 = r0.mo8090r()
            r8 = r0
            goto L89
        L71:
            r0 = r6
            e.f.a.r.a r0 = r0.mo8101g()
            e.f.a.r.a r0 = r0.mo8091q()
            r8 = r0
            goto L89
        L7c:
            r0 = r6
            e.f.a.r.a r0 = r0.mo8101g()
            e.f.a.r.a r0 = r0.mo8092p()
            r8 = r0
            goto L89
        L87:
            r0 = r6
            r8 = r0
        L89:
            r0 = r6
            e.f.a.e r0 = r0.f61765D
            r9 = r0
            r0 = r6
            java.lang.Class<TranscodeType> r0 = r0.f61764C
            r10 = r0
            r0 = r9
            e.f.a.r.k.g r0 = r0.f61739c
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            java.lang.Class<android.graphics.Bitmap> r0 = android.graphics.Bitmap.class
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb3
            e.f.a.r.k.b r0 = new e.f.a.r.k.b
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
            goto Lc7
        Lb3:
            java.lang.Class<android.graphics.drawable.Drawable> r0 = android.graphics.drawable.Drawable.class
            r1 = r10
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto Ld4
            e.f.a.r.k.e r0 = new e.f.a.r.k.e
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
        Lc7:
            r0 = r6
            r1 = r7
            r2 = 0
            r3 = r8
            java.util.concurrent.Executor r4 = p193e.p1451f.p1452a.p1480t.C22616e.f62636a
            e.f.a.r.k.k r0 = r0.m8428N(r1, r2, r3, r4)
            r0 = r7
            return r0
        Ld4:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Unhandled class: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = ", try .as*(Class).transcode(ResourceTranscoder)"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.C22234h.m8427O(android.widget.ImageView):e.f.a.r.k.l");
    }

    /* renamed from: P */
    public C22234h<TranscodeType> mo8426P(AbstractC22590g<TranscodeType> abstractC22590g) {
        this.f61768K = null;
        return mo8433H(abstractC22590g);
    }

    /* renamed from: Q */
    public C22234h<TranscodeType> mo8425Q(Bitmap bitmap) {
        this.f61767J = bitmap;
        this.f61771N = true;
        return mo8106a(C22591h.m8073J(AbstractC22364k.f62125b));
    }

    /* renamed from: R */
    public C22234h<TranscodeType> mo8424R(Drawable drawable) {
        this.f61767J = drawable;
        this.f61771N = true;
        return mo8106a(C22591h.m8073J(AbstractC22364k.f62125b));
    }

    /* renamed from: S */
    public C22234h<TranscodeType> mo8423S(Uri uri) {
        this.f61767J = uri;
        this.f61771N = true;
        return this;
    }

    /* renamed from: T */
    public C22234h<TranscodeType> mo8422T(Integer num) {
        PackageInfo packageInfo;
        this.f61767J = num;
        this.f61771N = true;
        Context context = this.f61762A;
        int i = C22607a.f62619d;
        ConcurrentMap<String, AbstractC22263f> concurrentMap = C22608b.f62622a;
        String packageName = context.getPackageName();
        AbstractC22263f abstractC22263f = C22608b.f62622a.get(packageName);
        C22610d c22610d = abstractC22263f;
        if (abstractC22263f == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                context.getPackageName();
                packageInfo = null;
            }
            C22610d c22610d2 = new C22610d(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
            AbstractC22263f putIfAbsent = C22608b.f62622a.putIfAbsent(packageName, c22610d2);
            c22610d = putIfAbsent;
            if (putIfAbsent == null) {
                c22610d = c22610d2;
            }
        }
        return mo8106a(new C22591h().mo8082z(new C22607a(context.getResources().getConfiguration().uiMode & 48, c22610d)));
    }

    /* renamed from: U */
    public C22234h<TranscodeType> mo8421U(Object obj) {
        this.f61767J = obj;
        this.f61771N = true;
        return this;
    }

    /* renamed from: V */
    public C22234h<TranscodeType> mo8420V(String str) {
        this.f61767J = str;
        this.f61771N = true;
        return this;
    }

    /* renamed from: W */
    public final AbstractC22587d m8419W(Object obj, AbstractC22598k<TranscodeType> abstractC22598k, AbstractC22590g<TranscodeType> abstractC22590g, AbstractC22585a<?> abstractC22585a, AbstractC22588e abstractC22588e, AbstractC22239j<?, ? super TranscodeType> abstractC22239j, EnumC22227f enumC22227f, int i, int i2, Executor executor) {
        Context context = this.f61762A;
        C22226e c22226e = this.f61765D;
        return new C22593j(context, c22226e, obj, this.f61767J, this.f61764C, abstractC22585a, i, i2, enumC22227f, abstractC22598k, abstractC22590g, this.f61768K, abstractC22588e, c22226e.f61743g, abstractC22239j.f61790a, executor);
    }

    /* renamed from: X */
    public c<TranscodeType> m8418X() {
        return m8417Y(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    /* renamed from: Y */
    public c<TranscodeType> m8417Y(int i, int i2) {
        f fVar = new f(i, i2);
        m8428N(fVar, fVar, this, C22616e.f62637b);
        return fVar;
    }
}
