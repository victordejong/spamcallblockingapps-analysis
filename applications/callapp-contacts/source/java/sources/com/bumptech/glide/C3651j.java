package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.AbstractC3782j;
import com.bumptech.glide.p112e.AbstractC3572a;
import com.bumptech.glide.p112e.AbstractC3599d;
import com.bumptech.glide.p112e.AbstractC3600e;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.AbstractFutureC3598c;
import com.bumptech.glide.p112e.C3589b;
import com.bumptech.glide.p112e.C3602f;
import com.bumptech.glide.p112e.C3605h;
import com.bumptech.glide.p112e.C3607j;
import com.bumptech.glide.p112e.C3609k;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p113a.C3582h;
import com.bumptech.glide.p115f.C3612a;
import com.bumptech.glide.p116g.C3635e;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.C3644k;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.bumptech.glide.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/j.class */
public class C3651j<TranscodeType> extends AbstractC3572a<C3651j<TranscodeType>> implements Cloneable {

    /* renamed from: a */
    protected static final C3605h f13765a = new C3605h().mo27096a(AbstractC3782j.f14057c).mo27098a(EnumC3646h.LOW).mo27075b(true);

    /* renamed from: b */
    private final Context f13766b;

    /* renamed from: c */
    private final ComponentCallbacks2C3653k f13767c;

    /* renamed from: d */
    private final Class<TranscodeType> f13768d;

    /* renamed from: e */
    private final ComponentCallbacks2C3548c f13769e;

    /* renamed from: f */
    private final C3571e f13770f;

    /* renamed from: g */
    private AbstractC3657l<?, ? super TranscodeType> f13771g;

    /* renamed from: h */
    private Object f13772h;

    /* renamed from: i */
    private List<AbstractC3604g<TranscodeType>> f13773i;

    /* renamed from: j */
    private C3651j<TranscodeType> f13774j;

    /* renamed from: k */
    private C3651j<TranscodeType> f13775k;

    /* renamed from: l */
    private Float f13776l;

    /* renamed from: m */
    private boolean f13777m;

    /* renamed from: n */
    private boolean f13778n;

    /* renamed from: o */
    private boolean f13779o;

    /* renamed from: com.bumptech.glide.j$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/j$1.class */
    public static final /* synthetic */ class C36521 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13780a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13781b;

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
            int[] iArr = new int[EnumC3646h.values().length];
            f13781b = iArr;
            try {
                iArr[EnumC3646h.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13781b[EnumC3646h.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13781b[EnumC3646h.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13781b[EnumC3646h.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f13780a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13780a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f13780a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f13780a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f13780a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f13780a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f13780a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f13780a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    public C3651j(ComponentCallbacks2C3548c componentCallbacks2C3548c, ComponentCallbacks2C3653k componentCallbacks2C3653k, Class<TranscodeType> cls, Context context) {
        this.f13777m = true;
        this.f13769e = componentCallbacks2C3548c;
        this.f13767c = componentCallbacks2C3653k;
        this.f13768d = cls;
        this.f13766b = context;
        this.f13771g = componentCallbacks2C3653k.m37545b(cls);
        this.f13770f = componentCallbacks2C3548c.f13532b;
        for (AbstractC3604g<Object> abstractC3604g : componentCallbacks2C3653k.getDefaultRequestListeners()) {
            mo27082b((AbstractC3604g) abstractC3604g);
        }
        mo27100a((AbstractC3572a<?>) componentCallbacks2C3653k.getDefaultRequestOptions());
    }

    public C3651j(Class<TranscodeType> cls, C3651j<?> c3651j) {
        this(c3651j.f13769e, c3651j.f13767c, cls, c3651j.f13766b);
        this.f13772h = c3651j.f13772h;
        this.f13778n = c3651j.f13778n;
        mo27100a((AbstractC3572a<?>) c3651j);
    }

    /* renamed from: a */
    private <Y extends AbstractC3585j<TranscodeType>> Y m37560a(Y y, AbstractC3604g<TranscodeType> abstractC3604g, AbstractC3572a<?> abstractC3572a, Executor executor) {
        C3643j.m37588a(y, "Argument must not be null");
        if (this.f13778n) {
            AbstractC3599d m37554b = m37554b(y, abstractC3604g, abstractC3572a, executor);
            AbstractC3599d request = y.getRequest();
            if (m37554b.mo37634a(request) && !m37558a(abstractC3572a, request)) {
                if (!((AbstractC3599d) C3643j.m37588a(request, "Argument must not be null")).mo37628d()) {
                    request.mo37635a();
                }
                return y;
            }
            this.f13767c.m37548a((AbstractC3585j<?>) y);
            y.setRequest(m37554b);
            this.f13767c.m37547a(y, m37554b);
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    /* renamed from: a */
    private <Y extends AbstractC3585j<TranscodeType>> Y m37559a(Y y, AbstractC3604g<TranscodeType> abstractC3604g, Executor executor) {
        return (Y) m37560a(y, abstractC3604g, this, executor);
    }

    /* renamed from: a */
    private AbstractC3599d m37557a(Object obj, AbstractC3585j<TranscodeType> abstractC3585j, AbstractC3604g<TranscodeType> abstractC3604g, AbstractC3572a<?> abstractC3572a, AbstractC3600e abstractC3600e, AbstractC3657l<?, ? super TranscodeType> abstractC3657l, EnumC3646h enumC3646h, int i, int i2, Executor executor) {
        Context context = this.f13766b;
        C3571e c3571e = this.f13770f;
        return C3607j.m37650a(context, c3571e, obj, this.f13772h, this.f13768d, abstractC3572a, i, i2, enumC3646h, abstractC3585j, abstractC3604g, this.f13773i, abstractC3600e, c3571e.f13585f, abstractC3657l.f13799a, executor);
    }

    /* renamed from: a */
    private AbstractC3599d m37556a(Object obj, AbstractC3585j<TranscodeType> abstractC3585j, AbstractC3604g<TranscodeType> abstractC3604g, AbstractC3600e abstractC3600e, AbstractC3657l<?, ? super TranscodeType> abstractC3657l, EnumC3646h enumC3646h, int i, int i2, AbstractC3572a<?> abstractC3572a, Executor executor) {
        C3589b c3589b;
        C3589b c3589b2;
        if (this.f13775k != null) {
            c3589b = new C3589b(obj, abstractC3600e);
            c3589b2 = c3589b;
        } else {
            c3589b = abstractC3600e;
            c3589b2 = null;
        }
        AbstractC3599d m37551b = m37551b(obj, abstractC3585j, abstractC3604g, c3589b, abstractC3657l, enumC3646h, i, i2, abstractC3572a, executor);
        if (c3589b2 == null) {
            return m37551b;
        }
        int overrideWidth = this.f13775k.getOverrideWidth();
        int overrideHeight = this.f13775k.getOverrideHeight();
        int i3 = overrideWidth;
        int i4 = overrideHeight;
        if (C3644k.m37581a(i, i2)) {
            i3 = overrideWidth;
            i4 = overrideHeight;
            if (!this.f13775k.isValidOverride()) {
                i3 = abstractC3572a.getOverrideWidth();
                i4 = abstractC3572a.getOverrideHeight();
            }
        }
        C3651j<TranscodeType> c3651j = this.f13775k;
        c3589b2.m37669a(m37551b, c3651j.m37556a(obj, abstractC3585j, abstractC3604g, c3589b2, c3651j.f13771g, c3651j.getPriority(), i3, i4, this.f13775k, executor));
        return c3589b2;
    }

    /* renamed from: a */
    private static boolean m37558a(AbstractC3572a<?> abstractC3572a, AbstractC3599d abstractC3599d) {
        return !abstractC3572a.isMemoryCacheable() && abstractC3599d.mo37626e();
    }

    /* renamed from: b */
    private AbstractC3599d m37554b(AbstractC3585j<TranscodeType> abstractC3585j, AbstractC3604g<TranscodeType> abstractC3604g, AbstractC3572a<?> abstractC3572a, Executor executor) {
        return m37556a(new Object(), abstractC3585j, abstractC3604g, (AbstractC3600e) null, this.f13771g, abstractC3572a.getPriority(), abstractC3572a.getOverrideWidth(), abstractC3572a.getOverrideHeight(), abstractC3572a, executor);
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [com.bumptech.glide.e.a] */
    /* renamed from: b */
    private AbstractC3599d m37551b(Object obj, AbstractC3585j<TranscodeType> abstractC3585j, AbstractC3604g<TranscodeType> abstractC3604g, AbstractC3600e abstractC3600e, AbstractC3657l<?, ? super TranscodeType> abstractC3657l, EnumC3646h enumC3646h, int i, int i2, AbstractC3572a<?> abstractC3572a, Executor executor) {
        C3651j<TranscodeType> c3651j = this.f13774j;
        if (c3651j == null) {
            if (this.f13776l == null) {
                return m37557a(obj, abstractC3585j, abstractC3604g, abstractC3572a, abstractC3600e, abstractC3657l, enumC3646h, i, i2, executor);
            }
            C3609k c3609k = new C3609k(obj, abstractC3600e);
            c3609k.m37633a(m37557a(obj, abstractC3585j, abstractC3604g, abstractC3572a, c3609k, abstractC3657l, enumC3646h, i, i2, executor), m37557a(obj, abstractC3585j, abstractC3604g, abstractC3572a.clone().mo27105a(this.f13776l.floatValue()), c3609k, abstractC3657l, m37553b(enumC3646h), i, i2, executor));
            return c3609k;
        } else if (this.f13779o) {
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else {
            AbstractC3657l<?, ? super TranscodeType> abstractC3657l2 = c3651j.f13771g;
            if (c3651j.f13777m) {
                abstractC3657l2 = abstractC3657l;
            }
            EnumC3646h priority = c3651j.isPrioritySet() ? this.f13774j.getPriority() : m37553b(enumC3646h);
            int overrideWidth = this.f13774j.getOverrideWidth();
            int overrideHeight = this.f13774j.getOverrideHeight();
            int i3 = overrideWidth;
            int i4 = overrideHeight;
            if (C3644k.m37581a(i, i2)) {
                i3 = overrideWidth;
                i4 = overrideHeight;
                if (!this.f13774j.isValidOverride()) {
                    i3 = abstractC3572a.getOverrideWidth();
                    i4 = abstractC3572a.getOverrideHeight();
                }
            }
            C3609k c3609k2 = new C3609k(obj, abstractC3600e);
            AbstractC3599d m37557a = m37557a(obj, abstractC3585j, abstractC3604g, abstractC3572a, c3609k2, abstractC3657l, enumC3646h, i, i2, executor);
            this.f13779o = true;
            C3651j<TranscodeType> c3651j2 = this.f13774j;
            AbstractC3599d m37556a = c3651j2.m37556a(obj, abstractC3585j, abstractC3604g, c3609k2, abstractC3657l2, priority, i3, i4, c3651j2, executor);
            this.f13779o = false;
            c3609k2.m37633a(m37557a, m37556a);
            return c3609k2;
        }
    }

    /* renamed from: b */
    private EnumC3646h m37553b(EnumC3646h enumC3646h) {
        int i = C36521.f13781b[enumC3646h.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return EnumC3646h.HIGH;
            }
            if (i == 3 || i == 4) {
                return EnumC3646h.IMMEDIATE;
            }
            throw new IllegalArgumentException("unknown priority: " + getPriority());
        }
        return EnumC3646h.NORMAL;
    }

    /* renamed from: b */
    private C3651j<TranscodeType> m37552b(Object obj) {
        C3651j<TranscodeType> c3651j = this;
        while (true) {
            C3651j<TranscodeType> c3651j2 = c3651j;
            if (!c3651j2.isAutoCloneEnabled()) {
                c3651j2.f13772h = obj;
                c3651j2.f13778n = true;
                return c3651j2.m37690l();
            }
            c3651j = c3651j2.mo27068d();
        }
    }

    /* renamed from: a */
    public final <Y extends AbstractC3585j<TranscodeType>> Y m37561a(Y y) {
        return (Y) m37559a((C3651j<TranscodeType>) y, (AbstractC3604g) null, C3635e.m37595a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009c  */
    /* JADX WARN: Type inference failed for: r0v20, types: [com.bumptech.glide.e.a.b] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.p112e.p113a.AbstractC3586k<android.widget.ImageView, TranscodeType> m37562a(android.widget.ImageView r7) {
        /*
            r6 = this;
            com.bumptech.glide.p116g.C3644k.m37584a()
            r0 = r7
            java.lang.String r1 = "Argument must not be null"
            java.lang.Object r0 = com.bumptech.glide.p116g.C3643j.m37588a(r0, r1)
            r0 = r6
            boolean r0 = r0.isTransformationSet()
            if (r0 != 0) goto L7f
            r0 = r6
            boolean r0 = r0.isTransformationAllowed()
            if (r0 == 0) goto L7f
            r0 = r7
            android.widget.ImageView$ScaleType r0 = r0.getScaleType()
            if (r0 == 0) goto L7f
            int[] r0 = com.bumptech.glide.C3651j.C36521.f13780a
            r1 = r7
            android.widget.ImageView$ScaleType r1 = r1.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L74;
                case 2: goto L69;
                case 3: goto L5e;
                case 4: goto L5e;
                case 5: goto L5e;
                case 6: goto L53;
                default: goto L50;
            }
        L50:
            goto L7f
        L53:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.mo27062h()
            r8 = r0
            goto L81
        L5e:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.mo27064f()
            r8 = r0
            goto L81
        L69:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.mo27062h()
            r8 = r0
            goto L81
        L74:
            r0 = r6
            com.bumptech.glide.e.a r0 = r0.clone()
            com.bumptech.glide.e.a r0 = r0.mo27066e()
            r8 = r0
            goto L81
        L7f:
            r0 = r6
            r8 = r0
        L81:
            r0 = r6
            java.lang.Class<TranscodeType> r0 = r0.f13768d
            r9 = r0
            java.lang.Class<android.graphics.Bitmap> r0 = android.graphics.Bitmap.class
            r1 = r9
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L9c
            com.bumptech.glide.e.a.b r0 = new com.bumptech.glide.e.a.b
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
            goto Laf
        L9c:
            java.lang.Class<android.graphics.drawable.Drawable> r0 = android.graphics.drawable.Drawable.class
            r1 = r9
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto Lbd
            com.bumptech.glide.e.a.e r0 = new com.bumptech.glide.e.a.e
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r7 = r0
        Laf:
            r0 = r6
            r1 = r7
            r2 = 0
            r3 = r8
            java.util.concurrent.Executor r4 = com.bumptech.glide.p116g.C3635e.m37595a()
            com.bumptech.glide.e.a.j r0 = r0.m37560a(r1, r2, r3, r4)
            com.bumptech.glide.e.a.k r0 = (com.bumptech.glide.p112e.p113a.AbstractC3586k) r0
            return r0
        Lbd:
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
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.C3651j.m37562a(android.widget.ImageView):com.bumptech.glide.e.a.k");
    }

    /* renamed from: a */
    public final AbstractFutureC3598c<TranscodeType> m37563a(int i, int i2) {
        C3602f c3602f = new C3602f(i, i2);
        return (AbstractFutureC3598c) m37559a((C3651j<TranscodeType>) c3602f, c3602f, C3635e.m37594b());
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27068d() {
        C3651j<TranscodeType> c3651j = (C3651j) super.clone();
        c3651j.f13771g = (AbstractC3657l<?, ? super TranscodeType>) c3651j.f13771g.clone();
        if (c3651j.f13773i != null) {
            c3651j.f13773i = new ArrayList(c3651j.f13773i);
        }
        C3651j<TranscodeType> c3651j2 = c3651j.f13774j;
        if (c3651j2 != null) {
            c3651j.f13774j = c3651j2.mo27068d();
        }
        C3651j<TranscodeType> c3651j3 = c3651j.f13775k;
        if (c3651j3 != null) {
            c3651j.f13775k = c3651j3.mo27068d();
        }
        return c3651j;
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27102a(Bitmap bitmap) {
        return m37552b(bitmap).mo27100a((AbstractC3572a<?>) C3605h.m37656b(AbstractC3782j.f14056b));
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27101a(Drawable drawable) {
        return m37552b((Object) drawable).mo27100a((AbstractC3572a<?>) C3605h.m37656b(AbstractC3782j.f14056b));
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27100a(AbstractC3572a<?> abstractC3572a) {
        C3643j.m37588a(abstractC3572a, "Argument must not be null");
        return (C3651j) super.mo27083b(abstractC3572a);
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27099a(AbstractC3604g<TranscodeType> abstractC3604g) {
        if (isAutoCloneEnabled()) {
            return mo27068d().mo27099a((AbstractC3604g) abstractC3604g);
        }
        this.f13773i = null;
        return mo27082b((AbstractC3604g) abstractC3604g);
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27097a(AbstractC3657l<?, ? super TranscodeType> abstractC3657l) {
        if (isAutoCloneEnabled()) {
            return mo27068d().mo27097a((AbstractC3657l) abstractC3657l);
        }
        this.f13771g = (AbstractC3657l) C3643j.m37588a(abstractC3657l, "Argument must not be null");
        this.f13777m = false;
        return m37690l();
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27090a(Integer num) {
        return m37552b(num).mo27100a((AbstractC3572a<?>) C3605h.m37655b(C3612a.m37619a(this.f13766b)));
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27089a(Object obj) {
        return m37552b(obj);
    }

    /* renamed from: a */
    public C3651j<TranscodeType> mo27088a(String str) {
        return m37552b(str);
    }

    @Override // com.bumptech.glide.p112e.AbstractC3572a
    /* renamed from: b */
    public /* synthetic */ AbstractC3572a mo27083b(AbstractC3572a abstractC3572a) {
        return mo27100a((AbstractC3572a<?>) abstractC3572a);
    }

    /* renamed from: b */
    public final AbstractFutureC3598c<TranscodeType> m37555b() {
        return m37563a((int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    /* renamed from: b */
    public C3651j<TranscodeType> mo27082b(AbstractC3604g<TranscodeType> abstractC3604g) {
        if (isAutoCloneEnabled()) {
            return mo27068d().mo27082b((AbstractC3604g) abstractC3604g);
        }
        if (abstractC3604g != null) {
            if (this.f13773i == null) {
                this.f13773i = new ArrayList();
            }
            this.f13773i.add(abstractC3604g);
        }
        return m37690l();
    }

    /* renamed from: c */
    public final AbstractC3585j<TranscodeType> m37550c() {
        return m37561a((C3651j<TranscodeType>) C3582h.m37678a(this.f13767c, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW));
    }
}
