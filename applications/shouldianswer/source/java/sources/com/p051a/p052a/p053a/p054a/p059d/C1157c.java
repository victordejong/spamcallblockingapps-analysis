package com.p051a.p052a.p053a.p054a.p059d;

import androidx.recyclerview.widget.RecyclerView;
import com.p051a.p052a.p053a.p054a.p055a.AbstractC1109h;
import com.p051a.p052a.p053a.p054a.p055a.C1101a;
import com.p051a.p052a.p053a.p054a.p055a.C1102b;
import com.p051a.p052a.p053a.p054a.p055a.C1107f;
import java.util.List;
/* renamed from: com.a.a.a.a.d.c */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/d/c.class */
public class C1157c {
    /* renamed from: a */
    public static int m3934a(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0945a abstractC0945a2, Object obj, int i) {
        return m3933a(abstractC0945a, abstractC0945a2, obj, i, null);
    }

    /* renamed from: a */
    public static int m3933a(RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0945a abstractC0945a2, Object obj, int i, C1101a c1101a) {
        Object obj2;
        RecyclerView.AbstractC0945a abstractC0945a3;
        int i2;
        C1107f c1107f = new C1107f();
        if (c1101a != null) {
            c1101a.m4266a();
        }
        if (abstractC0945a == null) {
            return -1;
        }
        Object obj3 = null;
        RecyclerView.AbstractC0945a abstractC0945a4 = abstractC0945a;
        int i3 = i;
        if (c1101a != null) {
            c1101a.m4264a(new C1102b(abstractC0945a, null));
            i3 = i;
            abstractC0945a4 = abstractC0945a;
            obj3 = null;
        }
        while (true) {
            if (i3 != -1) {
                if (abstractC0945a4 != abstractC0945a2) {
                    if (abstractC0945a4 instanceof AbstractC1109h) {
                        c1107f.m4244a();
                        ((AbstractC1109h) abstractC0945a4).mo4238a(c1107f, i3);
                        i2 = c1107f.f3500c;
                        obj2 = c1107f.f3499b;
                        if (c1107f.m4243b() && c1101a != null) {
                            c1101a.m4263a(c1107f);
                        }
                        abstractC0945a3 = c1107f.f3498a;
                        obj3 = obj2;
                        abstractC0945a4 = abstractC0945a3;
                        i3 = i2;
                        if (abstractC0945a3 == null) {
                            break;
                        }
                    } else {
                        obj2 = obj3;
                        abstractC0945a3 = abstractC0945a4;
                        i2 = i3;
                        if (abstractC0945a2 != null) {
                            i2 = -1;
                            obj2 = obj3;
                            abstractC0945a3 = abstractC0945a4;
                        }
                    }
                } else {
                    obj2 = obj3;
                    abstractC0945a3 = abstractC0945a4;
                    i2 = i3;
                    break;
                }
            } else {
                obj2 = obj3;
                abstractC0945a3 = abstractC0945a4;
                i2 = i3;
                break;
            }
        }
        int i4 = i2;
        if (abstractC0945a2 != null) {
            i4 = i2;
            if (abstractC0945a3 != abstractC0945a2) {
                i4 = -1;
            }
        }
        int i5 = i4;
        if (obj != null) {
            i5 = i4;
            if (obj2 != obj) {
                i5 = -1;
            }
        }
        if (i5 == -1 && c1101a != null) {
            c1101a.m4266a();
        }
        return i5;
    }

    /* renamed from: a */
    public static int m3931a(C1101a c1101a, int i, int i2, int i3) {
        int i4;
        List<C1102b> m4262b = c1101a.m4262b();
        while (true) {
            i4 = i3;
            if (i <= i2) {
                break;
            }
            i3 = ((AbstractC1109h) m4262b.get(i - 1).f3490a).mo4239a(m4262b.get(i), i3);
            if (i3 == -1) {
                i4 = i3;
                break;
            }
            i--;
        }
        return i4;
    }

    /* renamed from: a */
    public static int m3930a(C1101a c1101a, RecyclerView.AbstractC0945a abstractC0945a, RecyclerView.AbstractC0945a abstractC0945a2, int i) {
        int i2;
        int i3;
        List<C1102b> m4262b = c1101a.m4262b();
        int size = m4262b.size();
        int i4 = abstractC0945a == null ? size - 1 : -1;
        int i5 = abstractC0945a2 == null ? 0 : -1;
        int i6 = i4;
        int i7 = 0;
        int i8 = i5;
        if (abstractC0945a == null) {
            i2 = i4;
            i3 = i5;
            if (abstractC0945a2 != null) {
                i8 = i5;
                i7 = 0;
                i6 = i4;
            }
            if (i2 == -1 && i3 != -1 && i3 <= i2) {
                return m3931a(c1101a, i2, i3, i);
            }
            return -1;
        }
        while (true) {
            i2 = i6;
            i3 = i8;
            if (i7 >= size) {
                break;
            }
            C1102b c1102b = m4262b.get(i7);
            int i9 = i6;
            if (abstractC0945a != null) {
                i9 = i6;
                if (c1102b.f3490a == abstractC0945a) {
                    i9 = i7;
                }
            }
            int i10 = i8;
            if (abstractC0945a2 != null) {
                i10 = i8;
                if (c1102b.f3490a == abstractC0945a2) {
                    i10 = i7;
                }
            }
            i7++;
            i6 = i9;
            i8 = i10;
        }
        return i2 == -1 ? -1 : -1;
    }

    /* renamed from: a */
    public static <T> T m3932a(RecyclerView.AbstractC0945a abstractC0945a, Class<T> cls, int i) {
        C1101a c1101a = new C1101a();
        if (m3933a(abstractC0945a, null, null, i, c1101a) == -1) {
            return null;
        }
        for (C1102b c1102b : c1101a.m4262b()) {
            if (cls.isInstance(c1102b.f3490a)) {
                return cls.cast(c1102b.f3490a);
            }
        }
        return null;
    }
}
