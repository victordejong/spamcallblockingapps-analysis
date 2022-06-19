package com.bumptech.glide.p112e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.load.C3819g;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3782j;
import com.bumptech.glide.load.resource.bitmap.AbstractC3870k;
import com.bumptech.glide.load.resource.bitmap.C3862c;
import com.bumptech.glide.load.resource.bitmap.C3868i;
import com.bumptech.glide.load.resource.bitmap.C3869j;
import com.bumptech.glide.load.resource.bitmap.C3883n;
import com.bumptech.glide.load.resource.bitmap.C3885p;
import com.bumptech.glide.load.resource.p125d.C3909c;
import com.bumptech.glide.load.resource.p125d.C3913f;
import com.bumptech.glide.load.resource.p125d.C3919i;
import com.bumptech.glide.p112e.AbstractC3572a;
import com.bumptech.glide.p115f.C3614c;
import com.bumptech.glide.p116g.C3632b;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.C3644k;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.util.Map;
/* renamed from: com.bumptech.glide.e.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a.class */
public abstract class AbstractC3572a<T extends AbstractC3572a<T>> implements Cloneable {

    /* renamed from: a */
    private int f13591a;

    /* renamed from: e */
    private Drawable f13595e;

    /* renamed from: f */
    private int f13596f;

    /* renamed from: g */
    private Drawable f13597g;

    /* renamed from: h */
    private int f13598h;

    /* renamed from: m */
    private boolean f13603m;

    /* renamed from: o */
    private Drawable f13605o;

    /* renamed from: p */
    private int f13606p;

    /* renamed from: t */
    private boolean f13610t;

    /* renamed from: u */
    private Resources.Theme f13611u;

    /* renamed from: v */
    private boolean f13612v;

    /* renamed from: w */
    private boolean f13613w;

    /* renamed from: x */
    private boolean f13614x;

    /* renamed from: z */
    private boolean f13616z;

    /* renamed from: b */
    private float f13592b = 1.0f;

    /* renamed from: c */
    private AbstractC3782j f13593c = AbstractC3782j.f14059e;

    /* renamed from: d */
    private EnumC3646h f13594d = EnumC3646h.NORMAL;

    /* renamed from: i */
    private boolean f13599i = true;

    /* renamed from: j */
    private int f13600j = -1;

    /* renamed from: k */
    private int f13601k = -1;

    /* renamed from: l */
    private AbstractC3818f f13602l = C3614c.m37616a();

    /* renamed from: n */
    private boolean f13604n = true;

    /* renamed from: q */
    private C3822h f13607q = new C3822h();

    /* renamed from: r */
    private Map<Class<?>, AbstractC3826l<?>> f13608r = new C3632b();

    /* renamed from: s */
    private Class<?> f13609s = Object.class;

    /* renamed from: y */
    private boolean f13615y = true;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private T m37695a(AbstractC3826l<Bitmap> abstractC3826l, boolean z) {
        AbstractC3572a<T> abstractC3572a = this;
        while (true) {
            AbstractC3572a<T> abstractC3572a2 = abstractC3572a;
            if (!abstractC3572a2.f13612v) {
                C3883n c3883n = new C3883n(abstractC3826l, z);
                abstractC3572a2.m37692a(Bitmap.class, abstractC3826l, z);
                abstractC3572a2.m37692a(Drawable.class, c3883n, z);
                abstractC3572a2.m37692a(BitmapDrawable.class, c3883n, z);
                abstractC3572a2.m37692a(C3909c.class, new C3913f(abstractC3826l), z);
                return abstractC3572a2.m37690l();
            }
            abstractC3572a = abstractC3572a2.clone();
        }
    }

    /* renamed from: a */
    private T m37694a(AbstractC3870k abstractC3870k, AbstractC3826l<Bitmap> abstractC3826l) {
        AbstractC3572a<T> abstractC3572a = this;
        while (true) {
            AbstractC3572a<T> abstractC3572a2 = abstractC3572a;
            if (!abstractC3572a2.f13612v) {
                abstractC3572a2.mo27092a(abstractC3870k);
                return abstractC3572a2.m37695a(abstractC3826l, false);
            }
            abstractC3572a = abstractC3572a2.clone();
        }
    }

    /* renamed from: a */
    private T m37693a(AbstractC3870k abstractC3870k, AbstractC3826l<Bitmap> abstractC3826l, boolean z) {
        T m37691b = z ? m37691b(abstractC3870k, abstractC3826l) : m37694a(abstractC3870k, abstractC3826l);
        m37691b.f13615y = true;
        return m37691b;
    }

    /* renamed from: a */
    private <Y> T m37692a(Class<Y> cls, AbstractC3826l<Y> abstractC3826l, boolean z) {
        AbstractC3572a<T> abstractC3572a;
        AbstractC3572a<T> abstractC3572a2 = this;
        while (true) {
            abstractC3572a = abstractC3572a2;
            if (!abstractC3572a.f13612v) {
                break;
            }
            abstractC3572a2 = abstractC3572a.clone();
        }
        C3643j.m37588a(cls, "Argument must not be null");
        C3643j.m37588a(abstractC3826l, "Argument must not be null");
        abstractC3572a.f13608r.put(cls, abstractC3826l);
        int i = abstractC3572a.f13591a | 2048;
        abstractC3572a.f13591a = i;
        abstractC3572a.f13604n = true;
        int i2 = i | 65536;
        abstractC3572a.f13591a = i2;
        abstractC3572a.f13615y = false;
        if (z) {
            abstractC3572a.f13591a = i2 | 131072;
            abstractC3572a.f13603m = true;
        }
        return abstractC3572a.m37690l();
    }

    /* renamed from: a */
    private static boolean m37696a(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: b */
    private T m37691b(AbstractC3870k abstractC3870k, AbstractC3826l<Bitmap> abstractC3826l) {
        AbstractC3572a<T> abstractC3572a = this;
        while (true) {
            AbstractC3572a<T> abstractC3572a2 = abstractC3572a;
            if (!abstractC3572a2.f13612v) {
                abstractC3572a2.mo27092a(abstractC3870k);
                return abstractC3572a2.mo27093a(abstractC3826l);
            }
            abstractC3572a = abstractC3572a2.clone();
        }
    }

    private boolean isSet(int i) {
        return m37696a(this.f13591a, i);
    }

    /* renamed from: a */
    public T mo27105a(float f) {
        if (this.f13612v) {
            return (T) clone().mo27105a(f);
        }
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f13592b = f;
        this.f13591a |= 2;
        return m37690l();
    }

    /* renamed from: a */
    public T mo27104a(int i) {
        if (this.f13612v) {
            return (T) clone().mo27104a(i);
        }
        this.f13598h = i;
        int i2 = this.f13591a | 128;
        this.f13591a = i2;
        this.f13597g = null;
        this.f13591a = i2 & (-65);
        return m37690l();
    }

    /* renamed from: a */
    public T mo27103a(Bitmap.CompressFormat compressFormat) {
        return mo27094a((C3819g<C3819g>) C3862c.f14218b, (C3819g) C3643j.m37588a(compressFormat, "Argument must not be null"));
    }

    /* renamed from: a */
    public T mo27098a(EnumC3646h enumC3646h) {
        if (this.f13612v) {
            return (T) clone().mo27098a(enumC3646h);
        }
        this.f13594d = (EnumC3646h) C3643j.m37588a(enumC3646h, "Argument must not be null");
        this.f13591a |= 8;
        return m37690l();
    }

    /* renamed from: a */
    public T mo27096a(AbstractC3782j abstractC3782j) {
        if (this.f13612v) {
            return (T) clone().mo27096a(abstractC3782j);
        }
        this.f13593c = (AbstractC3782j) C3643j.m37588a(abstractC3782j, "Argument must not be null");
        this.f13591a |= 4;
        return m37690l();
    }

    /* renamed from: a */
    public T mo27095a(AbstractC3818f abstractC3818f) {
        if (this.f13612v) {
            return (T) clone().mo27095a(abstractC3818f);
        }
        this.f13602l = (AbstractC3818f) C3643j.m37588a(abstractC3818f, "Argument must not be null");
        this.f13591a |= 1024;
        return m37690l();
    }

    /* renamed from: a */
    public <Y> T mo27094a(C3819g<Y> c3819g, Y y) {
        if (this.f13612v) {
            return (T) clone().mo27094a(c3819g, y);
        }
        C3643j.m37588a(c3819g, "Argument must not be null");
        C3643j.m37588a(y, "Argument must not be null");
        this.f13607q.m37321a(c3819g, y);
        return m37690l();
    }

    /* renamed from: a */
    public T mo27093a(AbstractC3826l<Bitmap> abstractC3826l) {
        return m37695a(abstractC3826l, true);
    }

    /* renamed from: a */
    public T mo27092a(AbstractC3870k abstractC3870k) {
        return mo27094a((C3819g<C3819g>) AbstractC3870k.f14234h, (C3819g) C3643j.m37588a(abstractC3870k, "Argument must not be null"));
    }

    /* renamed from: a */
    public T mo27091a(Class<?> cls) {
        if (this.f13612v) {
            return (T) clone().mo27091a(cls);
        }
        this.f13609s = (Class) C3643j.m37588a(cls, "Argument must not be null");
        this.f13591a |= 4096;
        return m37690l();
    }

    /* renamed from: a */
    public T mo27087a(boolean z) {
        if (this.f13612v) {
            return (T) clone().mo27087a(z);
        }
        this.f13616z = z;
        this.f13591a |= 1048576;
        return m37690l();
    }

    /* renamed from: b */
    public T mo27086b(int i) {
        if (this.f13612v) {
            return (T) clone().mo27086b(i);
        }
        this.f13596f = i;
        int i2 = this.f13591a | 32;
        this.f13591a = i2;
        this.f13595e = null;
        this.f13591a = i2 & (-17);
        return m37690l();
    }

    /* renamed from: b */
    public T mo27085b(int i, int i2) {
        if (this.f13612v) {
            return (T) clone().mo27085b(i, i2);
        }
        this.f13601k = i;
        this.f13600j = i2;
        this.f13591a |= 512;
        return m37690l();
    }

    /* renamed from: b */
    public T mo27084b(Drawable drawable) {
        if (this.f13612v) {
            return (T) clone().mo27084b(drawable);
        }
        this.f13597g = drawable;
        int i = this.f13591a | 64;
        this.f13591a = i;
        this.f13598h = 0;
        this.f13591a = i & (-129);
        return m37690l();
    }

    /* renamed from: b */
    public T mo27083b(AbstractC3572a<?> abstractC3572a) {
        if (this.f13612v) {
            return (T) clone().mo27083b(abstractC3572a);
        }
        if (m37696a(abstractC3572a.f13591a, 2)) {
            this.f13592b = abstractC3572a.f13592b;
        }
        if (m37696a(abstractC3572a.f13591a, 262144)) {
            this.f13613w = abstractC3572a.f13613w;
        }
        if (m37696a(abstractC3572a.f13591a, 1048576)) {
            this.f13616z = abstractC3572a.f13616z;
        }
        if (m37696a(abstractC3572a.f13591a, 4)) {
            this.f13593c = abstractC3572a.f13593c;
        }
        if (m37696a(abstractC3572a.f13591a, 8)) {
            this.f13594d = abstractC3572a.f13594d;
        }
        if (m37696a(abstractC3572a.f13591a, 16)) {
            this.f13595e = abstractC3572a.f13595e;
            this.f13596f = 0;
            this.f13591a &= -33;
        }
        if (m37696a(abstractC3572a.f13591a, 32)) {
            this.f13596f = abstractC3572a.f13596f;
            this.f13595e = null;
            this.f13591a &= -17;
        }
        if (m37696a(abstractC3572a.f13591a, 64)) {
            this.f13597g = abstractC3572a.f13597g;
            this.f13598h = 0;
            this.f13591a &= -129;
        }
        if (m37696a(abstractC3572a.f13591a, 128)) {
            this.f13598h = abstractC3572a.f13598h;
            this.f13597g = null;
            this.f13591a &= -65;
        }
        if (m37696a(abstractC3572a.f13591a, (int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL)) {
            this.f13599i = abstractC3572a.f13599i;
        }
        if (m37696a(abstractC3572a.f13591a, 512)) {
            this.f13601k = abstractC3572a.f13601k;
            this.f13600j = abstractC3572a.f13600j;
        }
        if (m37696a(abstractC3572a.f13591a, 1024)) {
            this.f13602l = abstractC3572a.f13602l;
        }
        if (m37696a(abstractC3572a.f13591a, 4096)) {
            this.f13609s = abstractC3572a.f13609s;
        }
        if (m37696a(abstractC3572a.f13591a, (int) PropertyFlags.UNSIGNED)) {
            this.f13605o = abstractC3572a.f13605o;
            this.f13606p = 0;
            this.f13591a &= -16385;
        }
        if (m37696a(abstractC3572a.f13591a, 16384)) {
            this.f13606p = abstractC3572a.f13606p;
            this.f13605o = null;
            this.f13591a &= -8193;
        }
        if (m37696a(abstractC3572a.f13591a, 32768)) {
            this.f13611u = abstractC3572a.f13611u;
        }
        if (m37696a(abstractC3572a.f13591a, 65536)) {
            this.f13604n = abstractC3572a.f13604n;
        }
        if (m37696a(abstractC3572a.f13591a, 131072)) {
            this.f13603m = abstractC3572a.f13603m;
        }
        if (m37696a(abstractC3572a.f13591a, 2048)) {
            this.f13608r.putAll(abstractC3572a.f13608r);
            this.f13615y = abstractC3572a.f13615y;
        }
        if (m37696a(abstractC3572a.f13591a, 524288)) {
            this.f13614x = abstractC3572a.f13614x;
        }
        if (!this.f13604n) {
            this.f13608r.clear();
            int i = this.f13591a & (-2049);
            this.f13591a = i;
            this.f13603m = false;
            this.f13591a = i & (-131073);
            this.f13615y = true;
        }
        this.f13591a |= abstractC3572a.f13591a;
        this.f13607q.m37320a(abstractC3572a.f13607q);
        return m37690l();
    }

    /* renamed from: b */
    public T mo27075b(boolean z) {
        if (this.f13612v) {
            return (T) clone().mo27075b(true);
        }
        this.f13599i = !z;
        this.f13591a |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        return m37690l();
    }

    /* renamed from: c */
    public T mo27074c(int i) {
        return mo27094a((C3819g<C3819g>) C3862c.f14217a, (C3819g) Integer.valueOf(i));
    }

    /* renamed from: d */
    public T clone() {
        try {
            T t = (T) super.clone();
            C3822h c3822h = new C3822h();
            t.f13607q = c3822h;
            c3822h.m37320a(this.f13607q);
            C3632b c3632b = new C3632b();
            t.f13608r = c3632b;
            c3632b.putAll(this.f13608r);
            t.f13610t = false;
            t.f13612v = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: e */
    public T mo27066e() {
        return m37694a(AbstractC3870k.f14231e, new C3868i());
    }

    public boolean equals(Object obj) {
        if (obj instanceof AbstractC3572a) {
            AbstractC3572a abstractC3572a = (AbstractC3572a) obj;
            return Float.compare(abstractC3572a.f13592b, this.f13592b) == 0 && this.f13596f == abstractC3572a.f13596f && C3644k.m37577a(this.f13595e, abstractC3572a.f13595e) && this.f13598h == abstractC3572a.f13598h && C3644k.m37577a(this.f13597g, abstractC3572a.f13597g) && this.f13606p == abstractC3572a.f13606p && C3644k.m37577a(this.f13605o, abstractC3572a.f13605o) && this.f13599i == abstractC3572a.f13599i && this.f13600j == abstractC3572a.f13600j && this.f13601k == abstractC3572a.f13601k && this.f13603m == abstractC3572a.f13603m && this.f13604n == abstractC3572a.f13604n && this.f13613w == abstractC3572a.f13613w && this.f13614x == abstractC3572a.f13614x && this.f13593c.equals(abstractC3572a.f13593c) && this.f13594d == abstractC3572a.f13594d && this.f13607q.equals(abstractC3572a.f13607q) && this.f13608r.equals(abstractC3572a.f13608r) && this.f13609s.equals(abstractC3572a.f13609s) && C3644k.m37577a(this.f13602l, abstractC3572a.f13602l) && C3644k.m37577a(this.f13611u, abstractC3572a.f13611u);
        }
        return false;
    }

    /* renamed from: f */
    public T mo27064f() {
        return m37693a(AbstractC3870k.f14229c, (AbstractC3826l<Bitmap>) new C3885p(), false);
    }

    /* renamed from: g */
    public T mo27063g() {
        return m37693a(AbstractC3870k.f14229c, (AbstractC3826l<Bitmap>) new C3885p(), true);
    }

    public final AbstractC3782j getDiskCacheStrategy() {
        return this.f13593c;
    }

    public final int getErrorId() {
        return this.f13596f;
    }

    public final Drawable getErrorPlaceholder() {
        return this.f13595e;
    }

    public final Drawable getFallbackDrawable() {
        return this.f13605o;
    }

    public final int getFallbackId() {
        return this.f13606p;
    }

    public final boolean getOnlyRetrieveFromCache() {
        return this.f13614x;
    }

    public final C3822h getOptions() {
        return this.f13607q;
    }

    public final int getOverrideHeight() {
        return this.f13600j;
    }

    public final int getOverrideWidth() {
        return this.f13601k;
    }

    public final Drawable getPlaceholderDrawable() {
        return this.f13597g;
    }

    public final int getPlaceholderId() {
        return this.f13598h;
    }

    public final EnumC3646h getPriority() {
        return this.f13594d;
    }

    public final Class<?> getResourceClass() {
        return this.f13609s;
    }

    public final AbstractC3818f getSignature() {
        return this.f13602l;
    }

    public final float getSizeMultiplier() {
        return this.f13592b;
    }

    public final Resources.Theme getTheme() {
        return this.f13611u;
    }

    public final Map<Class<?>, AbstractC3826l<?>> getTransformations() {
        return this.f13608r;
    }

    public final boolean getUseAnimationPool() {
        return this.f13616z;
    }

    public final boolean getUseUnlimitedSourceGeneratorsPool() {
        return this.f13613w;
    }

    /* renamed from: h */
    public T mo27062h() {
        return m37693a(AbstractC3870k.f14230d, (AbstractC3826l<Bitmap>) new C3869j(), false);
    }

    public int hashCode() {
        return C3644k.m37578a(this.f13611u, C3644k.m37578a(this.f13602l, C3644k.m37578a(this.f13609s, C3644k.m37578a(this.f13608r, C3644k.m37578a(this.f13607q, C3644k.m37578a(this.f13594d, C3644k.m37578a(this.f13593c, C3644k.m37574a(this.f13614x, C3644k.m37574a(this.f13613w, C3644k.m37574a(this.f13604n, C3644k.m37574a(this.f13603m, C3644k.m37570b(this.f13601k, C3644k.m37570b(this.f13600j, C3644k.m37574a(this.f13599i, C3644k.m37578a(this.f13605o, C3644k.m37570b(this.f13606p, C3644k.m37578a(this.f13597g, C3644k.m37570b(this.f13598h, C3644k.m37578a(this.f13595e, C3644k.m37570b(this.f13596f, C3644k.m37583a(this.f13592b)))))))))))))))))))));
    }

    /* renamed from: i */
    public T mo27061i() {
        return mo27094a((C3819g<C3819g>) C3919i.f14345b, (C3819g) Boolean.TRUE);
    }

    public final boolean isAutoCloneEnabled() {
        return this.f13612v;
    }

    public final boolean isMemoryCacheable() {
        return this.f13599i;
    }

    public final boolean isPrioritySet() {
        return isSet(8);
    }

    public boolean isScaleOnlyOrNoTransform() {
        return this.f13615y;
    }

    public final boolean isTransformationAllowed() {
        return this.f13604n;
    }

    public final boolean isTransformationRequired() {
        return this.f13603m;
    }

    public final boolean isTransformationSet() {
        return isSet(2048);
    }

    public final boolean isValidOverride() {
        return C3644k.m37581a(this.f13601k, this.f13600j);
    }

    /* renamed from: j */
    public T mo27060j() {
        this.f13610t = true;
        return this;
    }

    /* renamed from: k */
    public T mo27059k() {
        if (!this.f13610t || this.f13612v) {
            this.f13612v = true;
            return mo27060j();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    /* renamed from: l */
    public final T m37690l() {
        if (!this.f13610t) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }
}
