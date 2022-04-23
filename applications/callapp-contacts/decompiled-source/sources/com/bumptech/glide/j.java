package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.e.a;
import com.bumptech.glide.e.b;
import com.bumptech.glide.e.c;
import com.bumptech.glide.e.d;
import com.bumptech.glide.e.e;
import com.bumptech.glide.e.f;
import com.bumptech.glide.e.g;
import com.bumptech.glide.e.h;
import com.bumptech.glide.g.k;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/j.class */
public class j<TranscodeType> extends a<j<TranscodeType>> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    protected static final h f7366a = new h().a(com.bumptech.glide.load.engine.j.f7556c).a(h.LOW).b(true);

    /* renamed from: b  reason: collision with root package name */
    private final Context f7367b;

    /* renamed from: c  reason: collision with root package name */
    private final k f7368c;

    /* renamed from: d  reason: collision with root package name */
    private final Class<TranscodeType> f7369d;
    private final c e;
    private final e f;
    private l<?, ? super TranscodeType> g;
    private Object h;
    private List<g<TranscodeType>> i;
    private j<TranscodeType> j;
    private j<TranscodeType> k;
    private Float l;
    private boolean m;
    private boolean n;
    private boolean o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.j$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7370a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f7371b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x009a -> B:44:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009e -> B:62:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a2 -> B:56:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a6 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00aa -> B:42:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ae -> B:60:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b2 -> B:54:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b6 -> B:46:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00ba -> B:40:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00be -> B:58:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c2 -> B:52:0x008d). Please submit an issue!!! */
        static {
            int[] iArr = new int[h.values().length];
            f7371b = iArr;
            try {
                iArr[h.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f7371b[h.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f7371b[h.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f7371b[h.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f7370a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f7370a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f7370a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f7370a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f7370a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f7370a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f7370a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f7370a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    public j(c cVar, k kVar, Class<TranscodeType> cls, Context context) {
        this.m = true;
        this.e = cVar;
        this.f7368c = kVar;
        this.f7369d = cls;
        this.f7367b = context;
        this.g = kVar.b(cls);
        this.f = cVar.f7233b;
        for (g<Object> gVar : kVar.getDefaultRequestListeners()) {
            b((g) gVar);
        }
        a((a<?>) kVar.getDefaultRequestOptions());
    }

    public j(Class<TranscodeType> cls, j<?> jVar) {
        this(jVar.e, jVar.f7368c, cls, jVar.f7367b);
        this.h = jVar.h;
        this.n = jVar.n;
        a((a<?>) jVar);
    }

    private <Y extends com.bumptech.glide.e.a.j<TranscodeType>> Y a(Y y, g<TranscodeType> gVar, a<?> aVar, Executor executor) {
        com.bumptech.glide.g.j.a(y, "Argument must not be null");
        if (this.n) {
            d b2 = b(y, gVar, aVar, executor);
            d request = y.getRequest();
            if (!b2.a(request) || a(aVar, request)) {
                this.f7368c.a((com.bumptech.glide.e.a.j<?>) y);
                y.setRequest(b2);
                this.f7368c.a(y, b2);
                return y;
            }
            if (!((d) com.bumptech.glide.g.j.a(request, "Argument must not be null")).d()) {
                request.a();
            }
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    private <Y extends com.bumptech.glide.e.a.j<TranscodeType>> Y a(Y y, g<TranscodeType> gVar, Executor executor) {
        return (Y) a(y, gVar, this, executor);
    }

    private d a(Object obj, com.bumptech.glide.e.a.j<TranscodeType> jVar, g<TranscodeType> gVar, a<?> aVar, e eVar, l<?, ? super TranscodeType> lVar, h hVar, int i, int i2, Executor executor) {
        Context context = this.f7367b;
        e eVar2 = this.f;
        return com.bumptech.glide.e.j.a(context, eVar2, obj, this.h, this.f7369d, aVar, i, i2, hVar, jVar, gVar, this.i, eVar, eVar2.f, lVar.f7379a, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d a(Object obj, com.bumptech.glide.e.a.j<TranscodeType> jVar, g<TranscodeType> gVar, e eVar, l<?, ? super TranscodeType> lVar, h hVar, int i, int i2, a<?> aVar, Executor executor) {
        e eVar2;
        b bVar;
        if (this.k != null) {
            eVar2 = new b(obj, eVar);
            bVar = eVar2;
        } else {
            bVar = 0;
            eVar2 = eVar;
        }
        d b2 = b(obj, jVar, gVar, eVar2, lVar, hVar, i, i2, aVar, executor);
        if (bVar == 0) {
            return b2;
        }
        int overrideWidth = this.k.getOverrideWidth();
        int overrideHeight = this.k.getOverrideHeight();
        int i3 = overrideWidth;
        int i4 = overrideHeight;
        if (k.a(i, i2)) {
            i3 = overrideWidth;
            i4 = overrideHeight;
            if (!this.k.isValidOverride()) {
                i3 = aVar.getOverrideWidth();
                i4 = aVar.getOverrideHeight();
            }
        }
        j<TranscodeType> jVar2 = this.k;
        bVar.a(b2, jVar2.a(obj, jVar, gVar, bVar, jVar2.g, jVar2.getPriority(), i3, i4, this.k, executor));
        return bVar;
    }

    private static boolean a(a<?> aVar, d dVar) {
        return !aVar.isMemoryCacheable() && dVar.e();
    }

    private d b(com.bumptech.glide.e.a.j<TranscodeType> jVar, g<TranscodeType> gVar, a<?> aVar, Executor executor) {
        return a(new Object(), jVar, gVar, (e) null, this.g, aVar.getPriority(), aVar.getOverrideWidth(), aVar.getOverrideHeight(), aVar, executor);
    }

    private d b(Object obj, com.bumptech.glide.e.a.j<TranscodeType> jVar, g<TranscodeType> gVar, e eVar, l<?, ? super TranscodeType> lVar, h hVar, int i, int i2, a<?> aVar, Executor executor) {
        j<TranscodeType> jVar2 = this.j;
        if (jVar2 != null) {
            if (!this.o) {
                l<?, ? super TranscodeType> lVar2 = jVar2.g;
                if (jVar2.m) {
                    lVar2 = lVar;
                }
                h priority = jVar2.isPrioritySet() ? this.j.getPriority() : b(hVar);
                int overrideWidth = this.j.getOverrideWidth();
                int overrideHeight = this.j.getOverrideHeight();
                int i3 = overrideWidth;
                int i4 = overrideHeight;
                if (k.a(i, i2)) {
                    i3 = overrideWidth;
                    i4 = overrideHeight;
                    if (!this.j.isValidOverride()) {
                        i3 = aVar.getOverrideWidth();
                        i4 = aVar.getOverrideHeight();
                    }
                }
                com.bumptech.glide.e.k kVar = new com.bumptech.glide.e.k(obj, eVar);
                d a2 = a(obj, jVar, gVar, aVar, kVar, lVar, hVar, i, i2, executor);
                this.o = true;
                j<TranscodeType> jVar3 = this.j;
                d a3 = jVar3.a(obj, jVar, gVar, kVar, lVar2, priority, i3, i4, jVar3, executor);
                this.o = false;
                kVar.a(a2, a3);
                return kVar;
            }
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else if (this.l == null) {
            return a(obj, jVar, gVar, aVar, eVar, lVar, hVar, i, i2, executor);
        } else {
            com.bumptech.glide.e.k kVar2 = new com.bumptech.glide.e.k(obj, eVar);
            kVar2.a(a(obj, jVar, gVar, aVar, kVar2, lVar, hVar, i, i2, executor), a(obj, jVar, gVar, aVar.clone().a(this.l.floatValue()), kVar2, lVar, b(hVar), i, i2, executor));
            return kVar2;
        }
    }

    private h b(h hVar) {
        int i = AnonymousClass1.f7371b[hVar.ordinal()];
        if (i == 1) {
            return h.NORMAL;
        }
        if (i == 2) {
            return h.HIGH;
        }
        if (i == 3 || i == 4) {
            return h.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + getPriority());
    }

    private j<TranscodeType> b(Object obj) {
        j<TranscodeType> jVar = this;
        while (jVar.isAutoCloneEnabled()) {
            jVar = jVar.d();
        }
        jVar.h = obj;
        jVar.n = true;
        return jVar.l();
    }

    public final <Y extends com.bumptech.glide.e.a.j<TranscodeType>> Y a(Y y) {
        return (Y) a((j<TranscodeType>) y, (g) null, com.bumptech.glide.g.e.a());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.e.a.k<android.widget.ImageView, TranscodeType> a(android.widget.ImageView r7) {
        /*
            r6 = this;
            com.bumptech.glide.g.k.a()
            r0 = r7
            java.lang.String r1 = "Argument must not be null"
            java.lang.Object r0 = com.bumptech.glide.g.j.a(r0, r1)
            r0 = r6
            boolean r0 = r0.isTransformationSet()
            if (r0 != 0) goto L_0x007f
            r0 = r6
            boolean r0 = r0.isTransformationAllowed()
            if (r0 == 0) goto L_0x007f
            r0 = r7
            android.widget.ImageView$ScaleType r0 = r0.getScaleType()
            if (r0 == 0) goto L_0x007f
            int[] r0 = com.bumptech.glide.j.AnonymousClass1.f7370a
            r1 = r7
            android.widget.ImageView$ScaleType r1 = r1.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0074;
                case 2: goto L_0x0069;
                case 3: goto L_0x005e;
                case 4: goto L_0x005e;
                case 5: goto L_0x005e;
                case 6: goto L_0x0053;
                default: goto L_0x0050;
            }
        L_0x0050:
            goto L_0x007f
        L_0x0053:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.h()
            r8 = r0
            goto L_0x0081
        L_0x005e:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.f()
            r8 = r0
            goto L_0x0081
        L_0x0069:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.h()
            r8 = r0
            goto L_0x0081
        L_0x0074:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.e()
            r8 = r0
            goto L_0x0081
        L_0x007f:
            r0 = r6
            r8 = r0
        L_0x0081:
            r0 = r6
            java.lang.Class<TranscodeType> r0 = r0.f7369d
            r9 = r0
            java.lang.Class<android.graphics.Bitmap> r0 = android.graphics.Bitmap.class
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x009c
            com.bumptech.glide.e.a.b r0 = new com.bumptech.glide.e.a.b
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
            goto L_0x00af
        L_0x009c:
            java.lang.Class<android.graphics.drawable.Drawable> r0 = android.graphics.drawable.Drawable.class
            r1 = r9
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L_0x00bd
            com.bumptech.glide.e.a.e r0 = new com.bumptech.glide.e.a.e
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
        L_0x00af:
            r0 = r6
            r1 = r7
            r2 = 0
            r3 = r8
            java.util.concurrent.Executor r4 = com.bumptech.glide.g.e.a()
            com.bumptech.glide.e.a.j r0 = r0.a(r1, r2, r3, r4)
            com.bumptech.glide.e.a.k r0 = (com.bumptech.glide.e.a.k) r0
            return r0
        L_0x00bd:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Unhandled class: "
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = r9
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
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.j.a(android.widget.ImageView):com.bumptech.glide.e.a.k");
    }

    public final c<TranscodeType> a(int i, int i2) {
        f fVar = new f(i, i2);
        return (c) a((j<TranscodeType>) fVar, fVar, com.bumptech.glide.g.e.b());
    }

    /* renamed from: a */
    public j<TranscodeType> d() {
        j<TranscodeType> jVar = (j) super.clone();
        jVar.g = jVar.g.clone();
        if (jVar.i != null) {
            jVar.i = new ArrayList(jVar.i);
        }
        j<TranscodeType> jVar2 = jVar.j;
        if (jVar2 != null) {
            jVar.j = jVar2.d();
        }
        j<TranscodeType> jVar3 = jVar.k;
        if (jVar3 != null) {
            jVar.k = jVar3.d();
        }
        return jVar;
    }

    public j<TranscodeType> a(Bitmap bitmap) {
        return b(bitmap).a((a<?>) h.b(com.bumptech.glide.load.engine.j.f7555b));
    }

    public j<TranscodeType> a(Drawable drawable) {
        return b((Object) drawable).a((a<?>) h.b(com.bumptech.glide.load.engine.j.f7555b));
    }

    public j<TranscodeType> a(a<?> aVar) {
        com.bumptech.glide.g.j.a(aVar, "Argument must not be null");
        return (j) super.b(aVar);
    }

    public j<TranscodeType> a(g<TranscodeType> gVar) {
        if (isAutoCloneEnabled()) {
            return d().a((g) gVar);
        }
        this.i = null;
        return b((g) gVar);
    }

    public j<TranscodeType> a(l<?, ? super TranscodeType> lVar) {
        if (isAutoCloneEnabled()) {
            return d().a((l) lVar);
        }
        this.g = (l) com.bumptech.glide.g.j.a(lVar, "Argument must not be null");
        this.m = false;
        return l();
    }

    public j<TranscodeType> a(Integer num) {
        return b(num).a((a<?>) h.b(com.bumptech.glide.f.a.a(this.f7367b)));
    }

    public j<TranscodeType> a(Object obj) {
        return b(obj);
    }

    public j<TranscodeType> a(String str) {
        return b(str);
    }

    @Override // com.bumptech.glide.e.a
    public /* synthetic */ a b(a aVar) {
        return a((a<?>) aVar);
    }

    public final c<TranscodeType> b() {
        return a((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    public j<TranscodeType> b(g<TranscodeType> gVar) {
        if (isAutoCloneEnabled()) {
            return d().b((g) gVar);
        }
        if (gVar != null) {
            if (this.i == null) {
                this.i = new ArrayList();
            }
            this.i.add(gVar);
        }
        return l();
    }

    public final com.bumptech.glide.e.a.j<TranscodeType> c() {
        return a((j<TranscodeType>) com.bumptech.glide.e.a.h.a(this.f7368c, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
    }
}
