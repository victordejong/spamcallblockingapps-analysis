package io.objectbox;

import io.objectbox.converter.PropertyConverter;
import java.io.Serializable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/g.class */
public final class g<ENTITY> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final c<ENTITY> f36235a;

    /* renamed from: b  reason: collision with root package name */
    public final int f36236b;

    /* renamed from: c  reason: collision with root package name */
    public final int f36237c;

    /* renamed from: d  reason: collision with root package name */
    public final Class<?> f36238d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final String h;
    public final Class<? extends PropertyConverter<?, ?>> i;
    public final Class<?> j;
    boolean k;

    public g(c<ENTITY> cVar, int i, int i2, Class<?> cls, String str) {
        this(cVar, i, i2, cls, str, false, str, null, null);
    }

    public g(c<ENTITY> cVar, int i, int i2, Class<?> cls, String str, boolean z) {
        this(cVar, i, i2, cls, str, false, z, str, null, null);
    }

    public g(c<ENTITY> cVar, int i, int i2, Class<?> cls, String str, boolean z, String str2) {
        this(cVar, i, i2, cls, str, z, str2, null, null);
    }

    public g(c<ENTITY> cVar, int i, int i2, Class<?> cls, String str, boolean z, String str2, Class<? extends PropertyConverter<?, ?>> cls2, Class<?> cls3) {
        this(cVar, i, i2, cls, str, z, false, str2, cls2, cls3);
    }

    public g(c<ENTITY> cVar, int i, int i2, Class<?> cls, String str, boolean z, boolean z2, String str2, Class<? extends PropertyConverter<?, ?>> cls2, Class<?> cls3) {
        this.f36235a = cVar;
        this.f36236b = i;
        this.f36237c = i2;
        this.f36238d = cls;
        this.e = str;
        this.f = z;
        this.g = z2;
        this.h = str2;
        this.i = cls2;
        this.j = cls3;
    }

    public final int a() {
        return this.f36235a.getEntityId();
    }

    public final int b() {
        int i = this.f36237c;
        if (i > 0) {
            return i;
        }
        throw new IllegalStateException("Illegal property ID " + this.f36237c + " for " + toString());
    }

    public final String toString() {
        return "Property \"" + this.e + "\" (ID: " + this.f36237c + ")";
    }
}
