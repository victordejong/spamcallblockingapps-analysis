package com.bumptech.glide.e;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.e.a;
import com.bumptech.glide.f.c;
import com.bumptech.glide.g.b;
import com.bumptech.glide.h;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.l;
import com.bumptech.glide.load.resource.bitmap.i;
import com.bumptech.glide.load.resource.bitmap.k;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.load.resource.bitmap.p;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/a.class */
public abstract class a<T extends a<T>> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private int f7265a;
    private Drawable e;
    private int f;
    private Drawable g;
    private int h;
    private boolean m;
    private Drawable o;
    private int p;
    private boolean t;
    private Resources.Theme u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean z;

    /* renamed from: b  reason: collision with root package name */
    private float f7266b = 1.0f;

    /* renamed from: c  reason: collision with root package name */
    private j f7267c = j.e;

    /* renamed from: d  reason: collision with root package name */
    private h f7268d = h.NORMAL;
    private boolean i = true;
    private int j = -1;
    private int k = -1;
    private f l = c.a();
    private boolean n = true;
    private com.bumptech.glide.load.h q = new com.bumptech.glide.load.h();
    private Map<Class<?>, l<?>> r = new b();
    private Class<?> s = Object.class;
    private boolean y = true;

    /* JADX WARN: Multi-variable type inference failed */
    private T a(l<Bitmap> lVar, boolean z) {
        a<T> aVar = this;
        while (aVar.v) {
            aVar = aVar.clone();
        }
        n nVar = new n(lVar, z);
        aVar.a(Bitmap.class, lVar, z);
        aVar.a(Drawable.class, nVar, z);
        aVar.a(BitmapDrawable.class, nVar, z);
        aVar.a(com.bumptech.glide.load.resource.d.c.class, new com.bumptech.glide.load.resource.d.f(lVar), z);
        return aVar.l();
    }

    private T a(k kVar, l<Bitmap> lVar) {
        a<T> aVar = this;
        while (aVar.v) {
            aVar = aVar.clone();
        }
        aVar.a(kVar);
        return aVar.a(lVar, false);
    }

    private T a(k kVar, l<Bitmap> lVar, boolean z) {
        T b2 = z ? b(kVar, lVar) : a(kVar, lVar);
        b2.y = true;
        return b2;
    }

    private <Y> T a(Class<Y> cls, l<Y> lVar, boolean z) {
        a<T> aVar = this;
        while (aVar.v) {
            aVar = aVar.clone();
        }
        com.bumptech.glide.g.j.a(cls, "Argument must not be null");
        com.bumptech.glide.g.j.a(lVar, "Argument must not be null");
        aVar.r.put(cls, lVar);
        int i = aVar.f7265a | 2048;
        aVar.f7265a = i;
        aVar.n = true;
        int i2 = i | 65536;
        aVar.f7265a = i2;
        aVar.y = false;
        if (z) {
            aVar.f7265a = i2 | 131072;
            aVar.m = true;
        }
        return aVar.l();
    }

    private static boolean a(int i, int i2) {
        return (i & i2) != 0;
    }

    private T b(k kVar, l<Bitmap> lVar) {
        a<T> aVar = this;
        while (aVar.v) {
            aVar = aVar.clone();
        }
        aVar.a(kVar);
        return aVar.a(lVar);
    }

    private boolean isSet(int i) {
        return a(this.f7265a, i);
    }

    public T a(float f) {
        if (this.v) {
            return (T) clone().a(f);
        }
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.f7266b = f;
        this.f7265a |= 2;
        return l();
    }

    public T a(int i) {
        if (this.v) {
            return (T) clone().a(i);
        }
        this.h = i;
        int i2 = this.f7265a | 128;
        this.f7265a = i2;
        this.g = null;
        this.f7265a = i2 & (-65);
        return l();
    }

    public T a(Bitmap.CompressFormat compressFormat) {
        return a((g<g>) com.bumptech.glide.load.resource.bitmap.c.f7655b, (g) com.bumptech.glide.g.j.a(compressFormat, "Argument must not be null"));
    }

    public T a(h hVar) {
        if (this.v) {
            return (T) clone().a(hVar);
        }
        this.f7268d = (h) com.bumptech.glide.g.j.a(hVar, "Argument must not be null");
        this.f7265a |= 8;
        return l();
    }

    public T a(j jVar) {
        if (this.v) {
            return (T) clone().a(jVar);
        }
        this.f7267c = (j) com.bumptech.glide.g.j.a(jVar, "Argument must not be null");
        this.f7265a |= 4;
        return l();
    }

    public T a(f fVar) {
        if (this.v) {
            return (T) clone().a(fVar);
        }
        this.l = (f) com.bumptech.glide.g.j.a(fVar, "Argument must not be null");
        this.f7265a |= 1024;
        return l();
    }

    public <Y> T a(g<Y> gVar, Y y) {
        if (this.v) {
            return (T) clone().a(gVar, y);
        }
        com.bumptech.glide.g.j.a(gVar, "Argument must not be null");
        com.bumptech.glide.g.j.a(y, "Argument must not be null");
        this.q.a(gVar, y);
        return l();
    }

    public T a(l<Bitmap> lVar) {
        return a(lVar, true);
    }

    public T a(k kVar) {
        return a((g<g>) k.h, (g) com.bumptech.glide.g.j.a(kVar, "Argument must not be null"));
    }

    public T a(Class<?> cls) {
        if (this.v) {
            return (T) clone().a(cls);
        }
        this.s = (Class) com.bumptech.glide.g.j.a(cls, "Argument must not be null");
        this.f7265a |= 4096;
        return l();
    }

    public T a(boolean z) {
        if (this.v) {
            return (T) clone().a(z);
        }
        this.z = z;
        this.f7265a |= 1048576;
        return l();
    }

    public T b(int i) {
        if (this.v) {
            return (T) clone().b(i);
        }
        this.f = i;
        int i2 = this.f7265a | 32;
        this.f7265a = i2;
        this.e = null;
        this.f7265a = i2 & (-17);
        return l();
    }

    public T b(int i, int i2) {
        if (this.v) {
            return (T) clone().b(i, i2);
        }
        this.k = i;
        this.j = i2;
        this.f7265a |= 512;
        return l();
    }

    public T b(Drawable drawable) {
        if (this.v) {
            return (T) clone().b(drawable);
        }
        this.g = drawable;
        int i = this.f7265a | 64;
        this.f7265a = i;
        this.h = 0;
        this.f7265a = i & (-129);
        return l();
    }

    public T b(a<?> aVar) {
        if (this.v) {
            return (T) clone().b(aVar);
        }
        if (a(aVar.f7265a, 2)) {
            this.f7266b = aVar.f7266b;
        }
        if (a(aVar.f7265a, 262144)) {
            this.w = aVar.w;
        }
        if (a(aVar.f7265a, 1048576)) {
            this.z = aVar.z;
        }
        if (a(aVar.f7265a, 4)) {
            this.f7267c = aVar.f7267c;
        }
        if (a(aVar.f7265a, 8)) {
            this.f7268d = aVar.f7268d;
        }
        if (a(aVar.f7265a, 16)) {
            this.e = aVar.e;
            this.f = 0;
            this.f7265a &= -33;
        }
        if (a(aVar.f7265a, 32)) {
            this.f = aVar.f;
            this.e = null;
            this.f7265a &= -17;
        }
        if (a(aVar.f7265a, 64)) {
            this.g = aVar.g;
            this.h = 0;
            this.f7265a &= -129;
        }
        if (a(aVar.f7265a, 128)) {
            this.h = aVar.h;
            this.g = null;
            this.f7265a &= -65;
        }
        if (a(aVar.f7265a, (int) PropertyFlags.INDEX_PARTIAL_SKIP_NULL)) {
            this.i = aVar.i;
        }
        if (a(aVar.f7265a, 512)) {
            this.k = aVar.k;
            this.j = aVar.j;
        }
        if (a(aVar.f7265a, 1024)) {
            this.l = aVar.l;
        }
        if (a(aVar.f7265a, 4096)) {
            this.s = aVar.s;
        }
        if (a(aVar.f7265a, (int) PropertyFlags.UNSIGNED)) {
            this.o = aVar.o;
            this.p = 0;
            this.f7265a &= -16385;
        }
        if (a(aVar.f7265a, 16384)) {
            this.p = aVar.p;
            this.o = null;
            this.f7265a &= -8193;
        }
        if (a(aVar.f7265a, 32768)) {
            this.u = aVar.u;
        }
        if (a(aVar.f7265a, 65536)) {
            this.n = aVar.n;
        }
        if (a(aVar.f7265a, 131072)) {
            this.m = aVar.m;
        }
        if (a(aVar.f7265a, 2048)) {
            this.r.putAll(aVar.r);
            this.y = aVar.y;
        }
        if (a(aVar.f7265a, 524288)) {
            this.x = aVar.x;
        }
        if (!this.n) {
            this.r.clear();
            int i = this.f7265a & (-2049);
            this.f7265a = i;
            this.m = false;
            this.f7265a = i & (-131073);
            this.y = true;
        }
        this.f7265a |= aVar.f7265a;
        this.q.a(aVar.q);
        return l();
    }

    public T b(boolean z) {
        if (this.v) {
            return (T) clone().b(true);
        }
        this.i = !z;
        this.f7265a |= PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        return l();
    }

    public T c(int i) {
        return a((g<g>) com.bumptech.glide.load.resource.bitmap.c.f7654a, (g) Integer.valueOf(i));
    }

    /* renamed from: d */
    public T clone() {
        try {
            T t = (T) ((a) super.clone());
            com.bumptech.glide.load.h hVar = new com.bumptech.glide.load.h();
            t.q = hVar;
            hVar.a(this.q);
            b bVar = new b();
            t.r = bVar;
            bVar.putAll(this.r);
            t.t = false;
            t.v = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public T e() {
        return a(k.e, new i());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Float.compare(aVar.f7266b, this.f7266b) == 0 && this.f == aVar.f && com.bumptech.glide.g.k.a(this.e, aVar.e) && this.h == aVar.h && com.bumptech.glide.g.k.a(this.g, aVar.g) && this.p == aVar.p && com.bumptech.glide.g.k.a(this.o, aVar.o) && this.i == aVar.i && this.j == aVar.j && this.k == aVar.k && this.m == aVar.m && this.n == aVar.n && this.w == aVar.w && this.x == aVar.x && this.f7267c.equals(aVar.f7267c) && this.f7268d == aVar.f7268d && this.q.equals(aVar.q) && this.r.equals(aVar.r) && this.s.equals(aVar.s) && com.bumptech.glide.g.k.a(this.l, aVar.l) && com.bumptech.glide.g.k.a(this.u, aVar.u);
    }

    public T f() {
        return a(k.f7666c, (l<Bitmap>) new p(), false);
    }

    public T g() {
        return a(k.f7666c, (l<Bitmap>) new p(), true);
    }

    public final j getDiskCacheStrategy() {
        return this.f7267c;
    }

    public final int getErrorId() {
        return this.f;
    }

    public final Drawable getErrorPlaceholder() {
        return this.e;
    }

    public final Drawable getFallbackDrawable() {
        return this.o;
    }

    public final int getFallbackId() {
        return this.p;
    }

    public final boolean getOnlyRetrieveFromCache() {
        return this.x;
    }

    public final com.bumptech.glide.load.h getOptions() {
        return this.q;
    }

    public final int getOverrideHeight() {
        return this.j;
    }

    public final int getOverrideWidth() {
        return this.k;
    }

    public final Drawable getPlaceholderDrawable() {
        return this.g;
    }

    public final int getPlaceholderId() {
        return this.h;
    }

    public final h getPriority() {
        return this.f7268d;
    }

    public final Class<?> getResourceClass() {
        return this.s;
    }

    public final f getSignature() {
        return this.l;
    }

    public final float getSizeMultiplier() {
        return this.f7266b;
    }

    public final Resources.Theme getTheme() {
        return this.u;
    }

    public final Map<Class<?>, l<?>> getTransformations() {
        return this.r;
    }

    public final boolean getUseAnimationPool() {
        return this.z;
    }

    public final boolean getUseUnlimitedSourceGeneratorsPool() {
        return this.w;
    }

    public T h() {
        return a(k.f7667d, (l<Bitmap>) new com.bumptech.glide.load.resource.bitmap.j(), false);
    }

    public int hashCode() {
        return com.bumptech.glide.g.k.a(this.u, com.bumptech.glide.g.k.a(this.l, com.bumptech.glide.g.k.a(this.s, com.bumptech.glide.g.k.a(this.r, com.bumptech.glide.g.k.a(this.q, com.bumptech.glide.g.k.a(this.f7268d, com.bumptech.glide.g.k.a(this.f7267c, com.bumptech.glide.g.k.a(this.x, com.bumptech.glide.g.k.a(this.w, com.bumptech.glide.g.k.a(this.n, com.bumptech.glide.g.k.a(this.m, com.bumptech.glide.g.k.b(this.k, com.bumptech.glide.g.k.b(this.j, com.bumptech.glide.g.k.a(this.i, com.bumptech.glide.g.k.a(this.o, com.bumptech.glide.g.k.b(this.p, com.bumptech.glide.g.k.a(this.g, com.bumptech.glide.g.k.b(this.h, com.bumptech.glide.g.k.a(this.e, com.bumptech.glide.g.k.b(this.f, com.bumptech.glide.g.k.a(this.f7266b)))))))))))))))))))));
    }

    public T i() {
        return a((g<g>) com.bumptech.glide.load.resource.d.i.f7733b, (g) Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isAutoCloneEnabled() {
        return this.v;
    }

    public final boolean isMemoryCacheable() {
        return this.i;
    }

    public final boolean isPrioritySet() {
        return isSet(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isScaleOnlyOrNoTransform() {
        return this.y;
    }

    public final boolean isTransformationAllowed() {
        return this.n;
    }

    public final boolean isTransformationRequired() {
        return this.m;
    }

    public final boolean isTransformationSet() {
        return isSet(2048);
    }

    public final boolean isValidOverride() {
        return com.bumptech.glide.g.k.a(this.k, this.j);
    }

    public T j() {
        this.t = true;
        return this;
    }

    public T k() {
        if (!this.t || this.v) {
            this.v = true;
            return j();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T l() {
        if (!this.t) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }
}
