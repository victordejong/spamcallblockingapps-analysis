package p203p8;

import android.support.p012v4.media.C0082b;
import android.view.View;
import androidx.recyclerview.widget.C0608b;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p203p8.C4068g;
import p213q8.AbstractC4168c;
import p224r8.C4237a;
/* renamed from: p8.e */
/* loaded from: classes2-dex2jar.jar:p8/e.class */
public final class C4052e extends C4072i {

    /* renamed from: A */
    public static final Map<String, AbstractC4168c> f12725A;

    /* renamed from: x */
    public Object f12726x;

    /* renamed from: y */
    public String f12727y;

    /* renamed from: z */
    public AbstractC4168c f12728z;

    static {
        HashMap hashMap = new HashMap();
        f12725A = hashMap;
        hashMap.put("alpha", C4053f.f12729a);
        hashMap.put("pivotX", C4053f.f12730b);
        hashMap.put("pivotY", C4053f.f12731c);
        hashMap.put("translationX", C4053f.f12732d);
        hashMap.put("translationY", C4053f.f12733e);
        hashMap.put("rotation", C4053f.f12734f);
        hashMap.put("rotationX", C4053f.f12735g);
        hashMap.put("rotationY", C4053f.f12736h);
        hashMap.put("scaleX", C4053f.f12737i);
        hashMap.put("scaleY", C4053f.f12738j);
        hashMap.put("scrollX", C4053f.f12739k);
        hashMap.put("scrollY", C4053f.f12740l);
        hashMap.put("x", C4053f.f12741m);
        hashMap.put("y", C4053f.f12742n);
    }

    public C4052e() {
    }

    public C4052e(Object obj, String str) {
        this.f12726x = obj;
        C4068g[] c4068gArr = this.f12783n;
        if (c4068gArr != null) {
            C4068g c4068g = c4068gArr[0];
            String str2 = c4068g.f12750a;
            c4068g.f12750a = str;
            this.f12784o.remove(str2);
            this.f12784o.put(str, c4068g);
        }
        this.f12727y = str;
        this.f12779j = false;
    }

    /* renamed from: l */
    public static C4052e m1459l(Object obj, String str, float... fArr) {
        C4052e c4052e = new C4052e(obj, str);
        c4052e.m1457n(fArr);
        return c4052e;
    }

    @Override // p203p8.C4072i
    /* renamed from: b */
    public void mo1447b(float f) {
        super.mo1447b(f);
        int length = this.f12783n.length;
        for (int i = 0; i < length; i++) {
            this.f12783n[i].mo1451e(this.f12726x);
        }
    }

    @Override // p203p8.C4072i
    /* renamed from: g */
    public void mo1442g() {
        if (!this.f12779j) {
            if (this.f12728z == null && C4237a.f13260q && (this.f12726x instanceof View)) {
                Map<String, AbstractC4168c> map = f12725A;
                if (((HashMap) map).containsKey(this.f12727y)) {
                    AbstractC4168c abstractC4168c = (AbstractC4168c) ((HashMap) map).get(this.f12727y);
                    C4068g[] c4068gArr = this.f12783n;
                    if (c4068gArr != null) {
                        C4068g c4068g = c4068gArr[0];
                        String str = c4068g.f12750a;
                        c4068g.f12751b = abstractC4168c;
                        this.f12784o.remove(str);
                        this.f12784o.put(this.f12727y, c4068g);
                    }
                    if (this.f12728z != null) {
                        this.f12727y = abstractC4168c.f13141a;
                    }
                    this.f12728z = abstractC4168c;
                    this.f12779j = false;
                }
            }
            int length = this.f12783n.length;
            for (int i = 0; i < length; i++) {
                C4068g c4068g2 = this.f12783n[i];
                Object obj = this.f12726x;
                AbstractC4168c abstractC4168c2 = c4068g2.f12751b;
                if (abstractC4168c2 != null) {
                    try {
                        abstractC4168c2.mo1341a(obj);
                        Iterator<AbstractC4049c> it2 = c4068g2.f12755f.f12723c.iterator();
                        while (it2.hasNext()) {
                            AbstractC4049c next = it2.next();
                            if (!next.f12719c) {
                                next.mo1461c(c4068g2.f12751b.mo1341a(obj));
                            }
                        }
                    } catch (ClassCastException e) {
                        String str2 = c4068g2.f12751b.f13141a;
                        Objects.toString(obj);
                        c4068g2.f12751b = null;
                    }
                }
                Class<?> cls = obj.getClass();
                if (c4068g2.f12752c == null) {
                    c4068g2.mo1449g(cls);
                }
                Iterator<AbstractC4049c> it3 = c4068g2.f12755f.f12723c.iterator();
                while (it3.hasNext()) {
                    AbstractC4049c next2 = it3.next();
                    if (!next2.f12719c) {
                        if (c4068g2.f12753d == null) {
                            c4068g2.f12753d = c4068g2.m1455h(cls, C4068g.f12749q, "get", null);
                        }
                        try {
                            next2.mo1461c(c4068g2.f12753d.invoke(obj, new Object[0]));
                        } catch (IllegalAccessException e2) {
                            e2.toString();
                        } catch (InvocationTargetException e3) {
                            e3.toString();
                        }
                    }
                }
            }
            super.mo1442g();
        }
    }

    /* renamed from: k */
    public C4052e mo1444e() {
        return (C4052e) super.clone();
    }

    /* renamed from: m */
    public C4052e m1458m(long j) {
        if (j >= 0) {
            this.f12780k = j;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j);
    }

    /* renamed from: n */
    public void m1457n(float... fArr) {
        C4068g[] c4068gArr = this.f12783n;
        if (c4068gArr == null || c4068gArr.length == 0) {
            AbstractC4168c abstractC4168c = this.f12728z;
            if (abstractC4168c != null) {
                AbstractC4071h abstractC4071h = C4068g.f12743k;
                m1440i(new C4068g.C4070b(abstractC4168c, fArr));
                return;
            }
            String str = this.f12727y;
            AbstractC4071h abstractC4071h2 = C4068g.f12743k;
            m1440i(new C4068g.C4070b(str, fArr));
        } else if (fArr == null || fArr.length == 0) {
        } else {
            if (c4068gArr.length == 0) {
                AbstractC4071h abstractC4071h3 = C4068g.f12743k;
                m1440i(new C4068g.C4070b("", fArr));
            } else {
                c4068gArr[0].mo1450f(fArr);
            }
            this.f12779j = false;
        }
    }

    @Override // p203p8.C4072i
    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("ObjectAnimator@");
        m8752j.append(Integer.toHexString(hashCode()));
        m8752j.append(", target ");
        m8752j.append(this.f12726x);
        String sb = m8752j.toString();
        String str = sb;
        if (this.f12783n != null) {
            int i = 0;
            while (true) {
                str = sb;
                if (i >= this.f12783n.length) {
                    break;
                }
                StringBuilder m7624k = C0608b.m7624k(sb, "\n    ");
                m7624k.append(this.f12783n[i].toString());
                sb = m7624k.toString();
                i++;
            }
        }
        return str;
    }
}
