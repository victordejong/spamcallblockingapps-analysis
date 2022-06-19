package p193e.p194a.p1129p5.p1135v0;

import android.content.Context;
import android.os.Build;
import android.telephony.PhoneStateListener;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import q3.a.w2.q;
import q3.a.w2.x;
import q3.a.x2.f;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.p5.v0.c */
/* loaded from: classes15-dex2jar.jar:e/a/p5/v0/c.class */
public final class C19336c implements AbstractC19335b {

    /* renamed from: a */
    public final List<PhoneStateListener> f53790a = new ArrayList();

    /* renamed from: b */
    public final Context f53791b;

    @e(c = "com.truecaller.utils.telephony.TelephonyUtilImpl$callStates$1", f = "TelephonyUtil.kt", l = {83, 97}, m = "invokeSuspend")
    /* renamed from: e.a.p5.v0.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/c$a.class */
    public static final class C19337a extends i implements p<x<? super AbstractC19331a>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f53792e;

        /* renamed from: f */
        public Object f53793f;

        /* renamed from: g */
        public int f53794g;

        /* renamed from: i */
        public final /* synthetic */ Integer f53796i;

        /* renamed from: e.a.p5.v0.c$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/c$a$a.class */
        public static final class C19338a extends m implements a<s> {

            /* renamed from: c */
            public final /* synthetic */ PhoneStateListener f53798c;

            /* renamed from: d */
            public final /* synthetic */ TelephonyManager f53799d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19338a(PhoneStateListener phoneStateListener, TelephonyManager telephonyManager) {
                super(0);
                C19337a.this = r4;
                this.f53798c = phoneStateListener;
                this.f53799d = telephonyManager;
            }

            public Object invoke() {
                C19336c c19336c = C19336c.this;
                PhoneStateListener phoneStateListener = this.f53798c;
                TelephonyManager telephonyManager = this.f53799d;
                synchronized (c19336c) {
                    c19336c.f53790a.remove(phoneStateListener);
                    telephonyManager.listen(phoneStateListener, 0);
                }
                return s.a;
            }
        }

        /* renamed from: e.a.p5.v0.c$a$b */
        /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/c$a$b.class */
        public static final class C19339b extends PhoneStateListener {

            /* renamed from: a */
            public final /* synthetic */ p f53800a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19339b(p pVar, Executor executor) {
                super(executor);
                this.f53800a = pVar;
            }

            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int i, String str) {
                super.onCallStateChanged(i, str);
                this.f53800a.k(Integer.valueOf(i), str);
            }
        }

        @e(c = "com.truecaller.utils.telephony.TelephonyUtilImpl$callStates$1$phoneStateListener$2", f = "TelephonyUtil.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.p5.v0.c$a$c */
        /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/c$a$c.class */
        public static final class C19340c extends i implements p<i0, d<? super PhoneStateListener>, Object> {

            /* renamed from: f */
            public final /* synthetic */ p f53802f;

            /* renamed from: e.a.p5.v0.c$a$c$a */
            /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/c$a$c$a.class */
            public static final class C19341a extends PhoneStateListener {
                public C19341a() {
                    C19340c.this = r4;
                }

                @Override // android.telephony.PhoneStateListener
                public void onCallStateChanged(int i, String str) {
                    super.onCallStateChanged(i, str);
                    C19340c.this.f53802f.k(Integer.valueOf(i), str);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19340c(p pVar, d dVar) {
                super(2, dVar);
                C19337a.this = r5;
                this.f53802f = pVar;
            }

            /* renamed from: i */
            public final d<s> m13436i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C19340c(this.f53802f, dVar);
            }

            /* renamed from: k */
            public final Object m13435k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C19340c(this.f53802f, dVar).m13434s(s.a);
            }

            /* renamed from: s */
            public final Object m13434s(Object obj) {
                C25225a.m3932a3(obj);
                C19336c c19336c = C19336c.this;
                C19341a c19341a = new C19341a();
                Integer num = C19337a.this.f53796i;
                Objects.requireNonNull(c19336c);
                C19341a c19341a2 = c19341a;
                if (num != null) {
                    if (Build.VERSION.SDK_INT >= 24) {
                        c19341a2 = c19341a;
                    } else {
                        try {
                            Field declaredField = PhoneStateListener.class.getDeclaredField("mSubId");
                            declaredField.setAccessible(true);
                            declaredField.set(c19341a, num);
                            c19341a2 = c19341a;
                        } catch (Exception e) {
                            c19341a2 = null;
                        }
                    }
                }
                return c19341a2;
            }
        }

        /* renamed from: e.a.p5.v0.c$a$d */
        /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/c$a$d.class */
        public static final class C19342d extends m implements p<Integer, String, s> {

            /* renamed from: c */
            public final /* synthetic */ x f53805c;

            /* renamed from: d */
            public final /* synthetic */ TelephonyManager f53806d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19342d(x xVar, TelephonyManager telephonyManager) {
                super(2);
                C19337a.this = r4;
                this.f53805c = xVar;
                this.f53806d = telephonyManager;
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0074 -> B:12:0x006e). Please submit an issue!!! */
            /* renamed from: k */
            public Object m13433k(Object obj, Object obj2) {
                int intValue = ((Number) obj).intValue();
                String str = (String) obj2;
                C19337a c19337a = C19337a.this;
                Integer num = c19337a.f53796i;
                if (num == null) {
                    C19336c c19336c = C19336c.this;
                    TelephonyManager telephonyManager = this.f53806d;
                    Objects.requireNonNull(c19336c);
                    num = Build.VERSION.SDK_INT >= 30 ? Integer.valueOf(telephonyManager.getSubscriptionId()) : null;
                }
                AbstractC19331a m13554f = C19291g.m13554f(intValue, num, str);
                s sVar = null;
                if (m13554f != null) {
                    x xVar = this.f53805c;
                    l.e(xVar, "$this$offerSafe");
                    try {
                        xVar.offer(m13554f);
                    } catch (q | CancellationException e) {
                    }
                    sVar = s.a;
                }
                return sVar;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19337a(Integer num, d dVar) {
            super(2, dVar);
            C19336c.this = r5;
            this.f53796i = num;
        }

        /* renamed from: i */
        public final d<s> m13439i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C19337a c19337a = new C19337a(this.f53796i, dVar);
            c19337a.f53792e = obj;
            return c19337a;
        }

        /* renamed from: k */
        public final Object m13438k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19337a c19337a = new C19337a(this.f53796i, dVar);
            c19337a.f53792e = obj;
            return c19337a.m13437s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x013c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m13437s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 390
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1129p5.p1135v0.C19336c.C19337a.m13437s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C19336c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53791b = context;
    }

    @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19335b
    /* renamed from: a */
    public List<Integer> mo13445a() {
        ArrayList arrayList;
        List<SubscriptionInfo> m13440f = m13440f(C19291g.m13547h0(this.f53791b));
        if (m13440f != null) {
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(m13440f, 10));
            Iterator<T> it = m13440f.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it.hasNext()) {
                    break;
                }
                arrayList2.add(Integer.valueOf(((SubscriptionInfo) it.next()).getSubscriptionId()));
            }
        } else {
            arrayList = s1.u.s.a;
        }
        return arrayList;
    }

    @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19335b
    /* renamed from: b */
    public Integer mo13444b(int i) {
        Object obj;
        List<SubscriptionInfo> m13440f = m13440f(C19291g.m13547h0(this.f53791b));
        Integer num = null;
        if (m13440f != null) {
            Iterator<T> it = m13440f.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((SubscriptionInfo) obj).getSubscriptionId() == i) {
                    break;
                }
            }
            SubscriptionInfo subscriptionInfo = (SubscriptionInfo) obj;
            num = null;
            if (subscriptionInfo != null) {
                num = Integer.valueOf(subscriptionInfo.getSimSlotIndex());
            }
        }
        return num;
    }

    @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19335b
    /* renamed from: c */
    public Integer mo13443c(String str) {
        Object obj;
        l.e(str, "simIccId");
        if (r.p(str)) {
            return null;
        }
        List<SubscriptionInfo> m13440f = m13440f(C19291g.m13547h0(this.f53791b));
        Integer num = null;
        if (m13440f != null) {
            Iterator<T> it = m13440f.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (l.a(((SubscriptionInfo) next).getIccId(), str)) {
                    obj = next;
                    break;
                }
            }
            SubscriptionInfo subscriptionInfo = (SubscriptionInfo) obj;
            num = null;
            if (subscriptionInfo != null) {
                num = Integer.valueOf(subscriptionInfo.getSubscriptionId());
            }
        }
        return num;
    }

    @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19335b
    /* renamed from: d */
    public AbstractC19331a mo13442d() {
        TelephonyManager m13541j0 = C19291g.m13541j0(this.f53791b);
        return C19291g.m13554f(m13541j0.getCallState(), Build.VERSION.SDK_INT >= 30 ? Integer.valueOf(m13541j0.getSubscriptionId()) : null, null);
    }

    @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19335b
    /* renamed from: e */
    public f<AbstractC19331a> mo13441e(Integer num) {
        return s1.a.a.a.v0.f.d.P(new C19337a(num, null));
    }

    /* renamed from: f */
    public final List<SubscriptionInfo> m13440f(SubscriptionManager subscriptionManager) {
        if (!(C26467a.m1801a(this.f53791b, "android.permission.READ_PHONE_STATE") == 0)) {
            return null;
        }
        List<SubscriptionInfo> activeSubscriptionInfoList = subscriptionManager.getActiveSubscriptionInfoList();
        List<SubscriptionInfo> list = null;
        if (activeSubscriptionInfoList != null) {
            list = null;
            if (!activeSubscriptionInfoList.isEmpty()) {
                list = activeSubscriptionInfoList;
            }
        }
        return list;
    }
}
