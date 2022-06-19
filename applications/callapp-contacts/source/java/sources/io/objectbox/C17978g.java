package io.objectbox;

import io.objectbox.converter.PropertyConverter;
import java.io.Serializable;
/* renamed from: io.objectbox.g */
/* loaded from: classes5-dex2jar.jar:io/objectbox/g.class */
public final class C17978g<ENTITY> implements Serializable {

    /* renamed from: a */
    public final AbstractC17957c<ENTITY> f62806a;

    /* renamed from: b */
    public final int f62807b;

    /* renamed from: c */
    public final int f62808c;

    /* renamed from: d */
    public final Class<?> f62809d;

    /* renamed from: e */
    public final String f62810e;

    /* renamed from: f */
    public final boolean f62811f;

    /* renamed from: g */
    public final boolean f62812g;

    /* renamed from: h */
    public final String f62813h;

    /* renamed from: i */
    public final Class<? extends PropertyConverter<?, ?>> f62814i;

    /* renamed from: j */
    public final Class<?> f62815j;

    /* renamed from: k */
    boolean f62816k;

    public C17978g(AbstractC17957c<ENTITY> abstractC17957c, int i, int i2, Class<?> cls, String str) {
        this(abstractC17957c, i, i2, cls, str, false, str, null, null);
    }

    public C17978g(AbstractC17957c<ENTITY> abstractC17957c, int i, int i2, Class<?> cls, String str, boolean z) {
        this(abstractC17957c, i, i2, cls, str, false, z, str, null, null);
    }

    public C17978g(AbstractC17957c<ENTITY> abstractC17957c, int i, int i2, Class<?> cls, String str, boolean z, String str2) {
        this(abstractC17957c, i, i2, cls, str, z, str2, null, null);
    }

    public C17978g(AbstractC17957c<ENTITY> abstractC17957c, int i, int i2, Class<?> cls, String str, boolean z, String str2, Class<? extends PropertyConverter<?, ?>> cls2, Class<?> cls3) {
        this(abstractC17957c, i, i2, cls, str, z, false, str2, cls2, cls3);
    }

    public C17978g(AbstractC17957c<ENTITY> abstractC17957c, int i, int i2, Class<?> cls, String str, boolean z, boolean z2, String str2, Class<? extends PropertyConverter<?, ?>> cls2, Class<?> cls3) {
        this.f62806a = abstractC17957c;
        this.f62807b = i;
        this.f62808c = i2;
        this.f62809d = cls;
        this.f62810e = str;
        this.f62811f = z;
        this.f62812g = z2;
        this.f62813h = str2;
        this.f62814i = cls2;
        this.f62815j = cls3;
    }

    /* renamed from: a */
    public final int m4653a() {
        return this.f62806a.getEntityId();
    }

    /* renamed from: b */
    public final int m4652b() {
        int i = this.f62808c;
        if (i > 0) {
            return i;
        }
        throw new IllegalStateException("Illegal property ID " + this.f62808c + " for " + toString());
    }

    public final String toString() {
        return "Property \"" + this.f62810e + "\" (ID: " + this.f62808c + ")";
    }
}
