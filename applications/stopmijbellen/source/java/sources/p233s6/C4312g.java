package p233s6;

import android.support.p012v4.media.AbstractC0081a;
import androidx.appcompat.widget.C0249l;
import com.google.gson.JsonIOException;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import p029c4.C0821e;
import p117h8.C3035k;
import p153l1.C3468p;
import p243t6.C4407a;
import p243t6.C4411b;
import p254u6.C4490a;
import p254u6.C4492b;
import p254u6.C4494c;
import p254u6.C4496d;
import p254u6.C4498e;
import p254u6.C4500f;
import p254u6.C4530g;
import p254u6.C4531h;
import p276w6.C4741b;
import p283x2.C4854f;
/* renamed from: s6.g */
/* loaded from: classes-dex2jar.jar:s6/g.class */
public final class C4312g {

    /* renamed from: a */
    public final C0249l f13463a;

    /* renamed from: b */
    public final List<AbstractC4320o> f13464b;

    /* renamed from: c */
    public final boolean f13465c = true;

    /* renamed from: d */
    public final List<AbstractC4320o> f13466d;

    /* renamed from: e */
    public final List<AbstractC4320o> f13467e;

    static {
        Objects.requireNonNull(Object.class);
        Type m955a = C4407a.m955a(Object.class);
        C4407a.m952d(m955a);
        m955a.hashCode();
    }

    public C4312g() {
        C4411b c4411b = C4411b.f13741c;
        EnumC4300a enumC4300a = EnumC4300a.f13459a;
        Map emptyMap = Collections.emptyMap();
        List<AbstractC4320o> emptyList = Collections.emptyList();
        List<AbstractC4320o> emptyList2 = Collections.emptyList();
        List emptyList3 = Collections.emptyList();
        new ThreadLocal();
        new ConcurrentHashMap();
        C0249l c0249l = new C0249l(emptyMap);
        this.f13463a = c0249l;
        this.f13466d = emptyList;
        this.f13467e = emptyList2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C4500f.f13902C);
        arrayList.add(C4494c.f13897a);
        arrayList.add(c4411b);
        arrayList.addAll(emptyList3);
        arrayList.add(C4500f.f13920q);
        arrayList.add(C4500f.f13909f);
        arrayList.add(C4500f.f13906c);
        arrayList.add(C4500f.f13907d);
        arrayList.add(C4500f.f13908e);
        AbstractC0081a abstractC0081a = C4500f.f13913j;
        arrayList.add(new C4531h(Long.TYPE, Long.class, abstractC0081a));
        arrayList.add(new C4531h(Double.TYPE, Double.class, new C4308c(this)));
        arrayList.add(new C4531h(Float.TYPE, Float.class, new C4309d(this)));
        arrayList.add(C4500f.f13916m);
        arrayList.add(C4500f.f13910g);
        arrayList.add(C4500f.f13911h);
        arrayList.add(new C4530g(AtomicLong.class, new C4319n(new C4310e(abstractC0081a))));
        arrayList.add(new C4530g(AtomicLongArray.class, new C4319n(new C4311f(abstractC0081a))));
        arrayList.add(C4500f.f13912i);
        arrayList.add(C4500f.f13917n);
        arrayList.add(C4500f.f13921r);
        arrayList.add(C4500f.f13922s);
        arrayList.add(new C4530g(BigDecimal.class, C4500f.f13918o));
        arrayList.add(new C4530g(BigInteger.class, C4500f.f13919p));
        arrayList.add(C4500f.f13923t);
        arrayList.add(C4500f.f13924u);
        arrayList.add(C4500f.f13926w);
        arrayList.add(C4500f.f13927x);
        arrayList.add(C4500f.f13900A);
        arrayList.add(C4500f.f13925v);
        arrayList.add(C4500f.f13905b);
        arrayList.add(C4492b.f13896a);
        arrayList.add(C4500f.f13929z);
        arrayList.add(C4498e.f13899a);
        arrayList.add(C4496d.f13898a);
        arrayList.add(C4500f.f13928y);
        arrayList.add(C4490a.f13895a);
        arrayList.add(C4500f.f13904a);
        arrayList.add(new C3468p(c0249l));
        arrayList.add(new C0821e(c0249l, false));
        C4854f c4854f = new C4854f(c0249l, 5);
        arrayList.add(c4854f);
        arrayList.add(C4500f.f13903D);
        arrayList.add(new C3035k(c0249l, enumC4300a, c4411b, c4854f));
        this.f13464b = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public void m1113a(AbstractC4314i abstractC4314i, C4741b c4741b) throws JsonIOException {
        boolean z = c4741b.f14625f;
        c4741b.f14625f = true;
        boolean z2 = c4741b.f14626g;
        c4741b.f14626g = this.f13465c;
        boolean z3 = c4741b.f14628i;
        c4741b.f14628i = false;
        try {
            try {
                try {
                    ((C4500f.C4524u) C4500f.f13901B).m864N(c4741b, abstractC4314i);
                    c4741b.f14625f = z;
                    c4741b.f14626g = z2;
                    c4741b.f14628i = z3;
                } catch (IOException e) {
                    throw new JsonIOException(e);
                }
            } catch (AssertionError e2) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            c4741b.f14625f = z;
            c4741b.f14626g = z2;
            c4741b.f14628i = z3;
            throw th;
        }
    }

    public String toString() {
        return "{serializeNulls:false,factories:" + this.f13464b + ",instanceCreators:" + this.f13463a + "}";
    }
}
