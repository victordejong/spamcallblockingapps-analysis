package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.Serializable;
import java.net.URI;
import java.net.URL;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23483q;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23543c0;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.d0.z.d0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/d0.class */
public class C23550d0 implements AbstractC23483q, Serializable {
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23483q
    /* renamed from: a */
    public AbstractC23940o mo6630a(AbstractC23698i abstractC23698i, C23624f c23624f, AbstractC23444c abstractC23444c) throws C23733k {
        C23543c0 c23543c0;
        int i;
        Class<?> cls = abstractC23698i.f65728a;
        Class<?> cls2 = cls;
        if (cls.isPrimitive()) {
            cls2 = C23914g.m5767N(cls);
        }
        if (cls2 == String.class || cls2 == Object.class || cls2 == CharSequence.class || cls2 == Serializable.class) {
            c23543c0 = cls2 == String.class ? C23543c0.C23548e.f65322d : cls2 == Object.class ? C23543c0.C23548e.f65323e : new C23543c0.C23548e(cls2);
        } else {
            if (cls2 == UUID.class) {
                i = 12;
            } else if (cls2 == Integer.class) {
                i = 5;
            } else if (cls2 == Long.class) {
                i = 6;
            } else if (cls2 == Date.class) {
                i = 10;
            } else if (cls2 == Calendar.class) {
                i = 11;
            } else if (cls2 == Boolean.class) {
                i = 1;
            } else if (cls2 == Byte.class) {
                i = 2;
            } else if (cls2 == Character.class) {
                i = 4;
            } else if (cls2 == Short.class) {
                i = 3;
            } else if (cls2 == Float.class) {
                i = 7;
            } else if (cls2 == Double.class) {
                i = 8;
            } else if (cls2 == URI.class) {
                i = 13;
            } else if (cls2 == URL.class) {
                i = 14;
            } else if (cls2 == Class.class) {
                i = 15;
            } else if (cls2 == Locale.class) {
                c23543c0 = new C23543c0(9, cls2, AbstractC23576o.m6556p0(Locale.class));
            } else if (cls2 == Currency.class) {
                c23543c0 = new C23543c0(16, cls2, AbstractC23576o.m6556p0(Currency.class));
            } else if (cls2 == byte[].class) {
                i = 17;
            } else {
                c23543c0 = null;
            }
            c23543c0 = new C23543c0(i, cls2);
        }
        return c23543c0;
    }
}
