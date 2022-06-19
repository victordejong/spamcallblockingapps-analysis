package org.mistergroup.shouldianswer.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
/* renamed from: org.mistergroup.shouldianswer.utils.l */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/l.class */
public final class C3106l {

    /* renamed from: a */
    public static final C3109b f9134a = new C3109b(null);

    /* renamed from: b */
    private static int f9135b = 1;

    /* renamed from: org.mistergroup.shouldianswer.utils.l$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/l$a.class */
    public static final class ServiceConnectionC3107a implements ServiceConnection {

        /* renamed from: a */
        private Messenger f9136a;

        /* renamed from: b */
        private boolean f9137b;

        /* renamed from: c */
        private AbstractC1663b<? super String, C1775o> f9138c;

        /* renamed from: d */
        private final Context f9139d;

        /* renamed from: org.mistergroup.shouldianswer.utils.l$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/l$a$a.class */
        static final class C3108a extends AbstractC1695i implements AbstractC1663b<String, C1775o> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3108a() {
                super(1);
                ServiceConnectionC3107a.this = r4;
            }

            @Override // kotlin.p081e.p082a.AbstractC1663b
            /* renamed from: a */
            public /* bridge */ /* synthetic */ C1775o mo138a(String str) {
                m140a(str);
                return C1775o.f4450a;
            }

            /* renamed from: a */
            public final void m140a(String str) {
                C3104j.m157a(C3104j.f9124a, "MigrationHelper.migrate invokeCallback", (String) null, 2, (Object) null);
                AbstractC1663b abstractC1663b = ServiceConnectionC3107a.this.f9138c;
                if (abstractC1663b != null) {
                    C1775o c1775o = (C1775o) abstractC1663b.mo138a(str);
                }
                if (!ServiceConnectionC3107a.this.f9137b || ServiceConnectionC3107a.this.f9136a == null) {
                    return;
                }
                ServiceConnectionC3107a.this.f9139d.unbindService(ServiceConnectionC3107a.this);
            }
        }

        public ServiceConnectionC3107a(Context context) {
            C1694h.m3117b(context, "context");
            this.f9139d = context;
        }

        /* renamed from: a */
        public final Intent m146a() {
            Intent intent = null;
            Intent intent2 = intent;
            try {
                if (this.f9139d.getPackageManager().getApplicationInfo("org.mistergroup.shouldianswerpersonal", 0).enabled) {
                    intent2 = new Intent("org.mistergroup.shouldianswerpersonal.MigrationService").setPackage("org.mistergroup.shouldianswerpersonal");
                }
            } catch (Exception e) {
                intent2 = intent;
            }
            Intent intent3 = intent2;
            if (intent2 == null) {
                intent3 = intent2;
                try {
                    if (this.f9139d.getPackageManager().getApplicationInfo("org.mistergroup.muzutozvednout", 0).enabled) {
                        intent3 = new Intent("org.mistergroup.muzutozvednout.MigrationService").setPackage("org.mistergroup.muzutozvednout");
                    }
                } catch (Exception e2) {
                    intent3 = intent2;
                }
            }
            return intent3;
        }

        /* renamed from: a */
        public final void m145a(AbstractC1663b<? super String, C1775o> abstractC1663b) {
            C1694h.m3117b(abstractC1663b, "callBack");
            this.f9138c = abstractC1663b;
            Intent m146a = m146a();
            if (m146a != null) {
                this.f9139d.bindService(m146a, this, 1);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1694h.m3117b(componentName, "className");
            C1694h.m3117b(iBinder, "service");
            C3104j.m157a(C3104j.f9124a, "MigrationHelper.migrate serviceConnected", (String) null, 2, (Object) null);
            this.f9136a = new Messenger(iBinder);
            this.f9137b = true;
            Message message = new Message();
            message.what = C3106l.f9134a.m139a();
            message.replyTo = new Messenger(new HandlerC3110c(new C3108a()));
            Messenger messenger = this.f9136a;
            if (messenger != null) {
                messenger.send(message);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1694h.m3117b(componentName, "className");
            C3104j.m157a(C3104j.f9124a, "MigrationHelper.migrate serviceDisconnected", (String) null, 2, (Object) null);
            this.f9136a = null;
            this.f9137b = false;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.l$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/l$b.class */
    public static final class C3109b {
        private C3109b() {
        }

        public /* synthetic */ C3109b(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final int m139a() {
            return C3106l.f9135b;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.l$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/l$c.class */
    private static final class HandlerC3110c extends Handler {

        /* renamed from: a */
        private final AbstractC1663b<String, C1775o> f9141a;

        /* JADX WARN: Multi-variable type inference failed */
        public HandlerC3110c(AbstractC1663b<? super String, C1775o> abstractC1663b) {
            C1694h.m3117b(abstractC1663b, "callback");
            this.f9141a = abstractC1663b;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C1694h.m3117b(message, "msg");
            C3104j.m157a(C3104j.f9124a, "MigrationHelper.migrate handleMessage", (String) null, 2, (Object) null);
            if (message.what == C3106l.f9134a.m139a()) {
                this.f9141a.mo138a(message.getData().getString("reviews"));
            } else {
                super.handleMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mistergroup.shouldianswer.utils.l$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/l$d.class */
    public static final class C3111d extends AbstractC1695i implements AbstractC1663b<String, C1775o> {

        /* renamed from: a */
        public static final C3111d f9142a = new C3111d();

        @AbstractC1634f(m3162b = "MigrationHelper.kt", m3161c = {52, 65}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.MigrationHelper$migrate$1$1")
        /* renamed from: org.mistergroup.shouldianswer.utils.l$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/l$d$1.class */
        public static final class C31121 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f9143a;

            /* renamed from: b */
            Object f9144b;

            /* renamed from: c */
            Object f9145c;

            /* renamed from: d */
            Object f9146d;

            /* renamed from: e */
            Object f9147e;

            /* renamed from: f */
            Object f9148f;

            /* renamed from: g */
            Object f9149g;

            /* renamed from: h */
            Object f9150h;

            /* renamed from: i */
            Object f9151i;

            /* renamed from: j */
            Object f9152j;

            /* renamed from: k */
            Object f9153k;

            /* renamed from: l */
            Object f9154l;

            /* renamed from: m */
            Object f9155m;

            /* renamed from: n */
            Object f9156n;

            /* renamed from: o */
            int f9157o;

            /* renamed from: p */
            int f9158p;

            /* renamed from: q */
            int f9159q;

            /* renamed from: r */
            int f9160r;

            /* renamed from: s */
            boolean f9161s;

            /* renamed from: t */
            int f9162t;

            /* renamed from: u */
            final /* synthetic */ String f9163u;

            /* renamed from: v */
            private AbstractC1786ad f9164v;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C31121(String str, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f9163u = str;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C31121) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C31121 c31121 = new C31121(this.f9163u, abstractC1641c);
                c31121.f9164v = (AbstractC1786ad) obj;
                return c31121;
            }

            /* JADX WARN: Can't wrap try/catch for region: R(11:50|51|117|52|53|106|54|55|56|57|(2:59|60)(1:61)) */
            /* JADX WARN: Can't wrap try/catch for region: R(16:70|71|125|72|73|74|(2:76|77)(1:78)|79|80|131|81|82|121|83|84|(2:86|87)(2:88|89)) */
            /* JADX WARN: Can't wrap try/catch for region: R(18:(1:119)|25|26|123|27|28|115|29|30|110|31|(2:33|34)(1:35)|36|37|(2:40|(16:70|71|125|72|73|74|(2:76|77)(1:78)|79|80|131|81|82|121|83|84|(2:86|87)(2:88|89))(8:108|44|(2:127|46)|48|(11:50|51|117|52|53|106|54|55|56|57|(2:59|60)(1:61))(3:113|65|66)|69|99|100))(1:39)|101|23|(0)) */
            /* JADX WARN: Can't wrap try/catch for region: R(18:119|25|26|123|27|28|115|29|30|110|31|(2:33|34)(1:35)|36|37|(2:40|(16:70|71|125|72|73|74|(2:76|77)(1:78)|79|80|131|81|82|121|83|84|(2:86|87)(2:88|89))(8:108|44|(2:127|46)|48|(11:50|51|117|52|53|106|54|55|56|57|(2:59|60)(1:61))(3:113|65|66)|69|99|100))(1:39)|101|23|(0)) */
            /* JADX WARN: Code restructure failed: missing block: B:62:0x0430, code lost:
                r9 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:63:0x0434, code lost:
                r9 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:64:0x0435, code lost:
                r18 = r0;
             */
            /* JADX WARN: Code restructure failed: missing block: B:90:0x053e, code lost:
                r16 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:91:0x0543, code lost:
                r19 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:92:0x0548, code lost:
                r19 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:93:0x054d, code lost:
                r19 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:94:0x054f, code lost:
                r16 = r19;
             */
            /* JADX WARN: Code restructure failed: missing block: B:95:0x0556, code lost:
                r16 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:96:0x055b, code lost:
                r16 = e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:98:0x0562, code lost:
                r19 = r9;
                r17 = r20;
                r9 = r16;
             */
            /* JADX WARN: Not initialized variable reg: 19, insn: 0x01d8: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:17:0x01ce */
            /* JADX WARN: Not initialized variable reg: 20, insn: 0x01db: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r20 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:17:0x01ce */
            /* JADX WARN: Removed duplicated region for block: B:119:0x0232 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0578 -> B:101:0x057d). Please submit an issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x02eb -> B:101:0x057d). Please submit an issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0425 -> B:101:0x057d). Please submit an issue!!! */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x0533 -> B:101:0x057d). Please submit an issue!!! */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r7) {
                /*
                    Method dump skipped, instructions count: 1429
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3106l.C3111d.C31121.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        C3111d() {
            super(1);
        }

        @Override // kotlin.p081e.p082a.AbstractC1663b
        /* renamed from: a */
        public /* bridge */ /* synthetic */ C1775o mo138a(String str) {
            m137a(str);
            return C1775o.f4450a;
        }

        /* renamed from: a */
        public final void m137a(String str) {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C31121(str, null), 2, null);
        }
    }

    /* renamed from: a */
    public final void m148a(Context context) {
        C1694h.m3117b(context, "context");
        C3104j.m157a(C3104j.f9124a, "MigrationHelper.migrate start", (String) null, 2, (Object) null);
        m147a(context, C3111d.f9142a);
    }

    /* renamed from: a */
    public final void m147a(Context context, AbstractC1663b<? super String, C1775o> abstractC1663b) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(abstractC1663b, "callBack");
        new ServiceConnectionC3107a(context).m145a(abstractC1663b);
    }
}
