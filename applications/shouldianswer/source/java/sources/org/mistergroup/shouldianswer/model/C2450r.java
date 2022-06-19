package org.mistergroup.shouldianswer.model;

import androidx.customview.p026a.AbstractC0610a;
import java.util.List;
import java.util.Observable;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.model.r */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/r.class */
public final class C2450r extends Observable {

    /* renamed from: d */
    private static long f7173d;

    /* renamed from: a */
    public static final C2450r f7170a = new C2450r();

    /* renamed from: b */
    private static int f7171b = 90000;

    /* renamed from: c */
    private static final AbstractC2445p f7172c = AppDatabase.f6633d.m1524a().mo1509m();

    /* renamed from: e */
    private static String f7174e = "";

    @AbstractC1634f(m3162b = "CheckedCalls.kt", m3161c = {29, 40}, m3160d = "add", m3159e = "org.mistergroup.shouldianswer.model.CheckedCalls")
    /* renamed from: org.mistergroup.shouldianswer.model.r$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/r$a.class */
    public static final class C2451a extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7175a;

        /* renamed from: b */
        int f7176b;

        /* renamed from: d */
        Object f7178d;

        /* renamed from: e */
        Object f7179e;

        /* renamed from: f */
        Object f7180f;

        /* renamed from: g */
        long f7181g;

        /* renamed from: h */
        long f7182h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2451a(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2450r.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7175a = obj;
            this.f7176b |= AbstractC0610a.INVALID_ID;
            return C2450r.this.m986a(null, 0L, this);
        }
    }

    private C2450r() {
    }

    /* renamed from: b */
    private final C2442o m985b(String str, long j) {
        try {
            C2442o mo991b = f7172c.mo991b(str, j);
            if (mo991b != null) {
                Long m997i = mo991b.m997i();
                if (m997i == null) {
                    C1694h.m3124a();
                }
                if (Math.abs(j - m997i.longValue()) < f7171b) {
                    return mo991b;
                }
            }
            C2442o mo994a = f7172c.mo994a(str, j);
            if (mo994a == null) {
                return null;
            }
            Long m997i2 = mo994a.m997i();
            if (m997i2 == null) {
                C1694h.m3124a();
            }
            if (Math.abs(j - m997i2.longValue()) >= f7171b) {
                return null;
            }
            return mo994a;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:2|(2:4|(16:6|8|55|(2:10|(2:12|(5:14|15|50|53|54)(2:16|17))(3:18|19|20))(3:21|22|(5:24|25|26|27|(2:29|30)(1:31))(3:37|38|(7:44|45|46|(2:48|49)|50|53|54)(2:42|43)))|32|33|(2:35|36)|38|(1:40)|44|45|46|(0)|50|53|54))|7|8|55|(0)(0)|32|33|(0)|38|(0)|44|45|46|(0)|50|53|54) */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01d3, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01d4, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r7, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010e A[Catch: Exception -> 0x01d3, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d3, blocks: (B:15:0x0084, B:19:0x00af, B:22:0x00c3, B:24:0x00ca, B:26:0x00d9, B:33:0x0103, B:35:0x010e, B:38:0x012f, B:40:0x0145, B:42:0x0155, B:45:0x0165, B:50:0x01b0), top: B:55:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0145 A[Catch: Exception -> 0x01d3, TryCatch #0 {Exception -> 0x01d3, blocks: (B:15:0x0084, B:19:0x00af, B:22:0x00c3, B:24:0x00ca, B:26:0x00d9, B:33:0x0103, B:35:0x010e, B:38:0x012f, B:40:0x0145, B:42:0x0155, B:45:0x0165, B:50:0x01b0), top: B:55:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ad  */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m986a(org.mistergroup.shouldianswer.model.NumberInfo r7, long r8, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r10) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2450r.m986a(org.mistergroup.shouldianswer.model.NumberInfo, long, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final List<C2442o> m988a() {
        return f7172c.mo995a(C2405c.f6946b.m1164u());
    }

    /* renamed from: a */
    public final boolean m987a(String str, long j) {
        C1694h.m3117b(str, "number");
        C2442o m985b = m985b(str, j);
        boolean z = false;
        if (m985b != null) {
            z = false;
            if (m985b.m998h() != EnumC2429h.NONE) {
                z = true;
            }
        }
        return z;
    }
}
