package org.mistergroup.shouldianswer.services;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1890e;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/PublicService.class */
public final class PublicService extends Service {

    /* renamed from: a */
    private final Messenger f7246a = new Messenger(new HandlerC2480a());

    /* renamed from: org.mistergroup.shouldianswer.services.PublicService$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/PublicService$a.class */
    public static final class HandlerC2480a extends Handler {

        /* renamed from: a */
        public static final C2481a f7247a = new C2481a(null);

        /* renamed from: b */
        private static final int f7248b = 1;

        /* renamed from: org.mistergroup.shouldianswer.services.PublicService$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/PublicService$a$a.class */
        public static final class C2481a {
            private C2481a() {
            }

            public /* synthetic */ C2481a(C1691e c1691e) {
                this();
            }
        }

        @AbstractC1634f(m3162b = "PublicService.kt", m3161c = {48, 49, 50, 51, 52, 53}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.PublicService$IncomingHandler$handleMessage$1")
        /* renamed from: org.mistergroup.shouldianswer.services.PublicService$a$b */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/PublicService$a$b.class */
        static final class C2482b extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f7249a;

            /* renamed from: b */
            Object f7250b;

            /* renamed from: c */
            Object f7251c;

            /* renamed from: d */
            int f7252d;

            /* renamed from: e */
            final /* synthetic */ Bundle f7253e;

            /* renamed from: f */
            final /* synthetic */ C1699m.C1702c f7254f;

            /* renamed from: g */
            final /* synthetic */ NumberInfo f7255g;

            /* renamed from: h */
            private AbstractC1786ad f7256h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2482b(Bundle bundle, C1699m.C1702c c1702c, NumberInfo numberInfo, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f7253e = bundle;
                this.f7254f = c1702c;
                this.f7255g = numberInfo;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2482b) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2482b c2482b = new C2482b(this.f7253e, this.f7254f, this.f7255g, abstractC1641c);
                c2482b.f7256h = (AbstractC1786ad) obj;
                return c2482b;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x019a  */
            /* JADX WARN: Removed duplicated region for block: B:22:0x01de  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x0222  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x0266  */
            /* JADX WARN: Removed duplicated region for block: B:34:0x02a1  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x02a3  */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object mo42b(java.lang.Object r5) {
                /*
                    Method dump skipped, instructions count: 702
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.services.PublicService.HandlerC2480a.C2482b.mo42b(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: Type inference failed for: r1v5, types: [T, java.lang.String] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            C1694h.m3117b(message, "msg");
            try {
                if (message.what != f7248b) {
                    super.handleMessage(message);
                    return;
                }
                Bundle data = message.getData();
                C1699m.C1702c c1702c = new C1699m.C1702c();
                c1702c.f4391a = data.getString("number");
                if (((String) c1702c.f4391a) == null) {
                    c1702c.f4391a = "";
                }
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "PublicService.handleMessage getNumberRating for " + ((String) c1702c.f4391a), (String) null, 2, (Object) null);
                NumberInfo numberInfo = new NumberInfo((String) c1702c.f4391a, C3099f.f9116a.m177a(), EnumC2436k.INCOMING, true);
                Bundle bundle = new Bundle();
                C1890e.m2688a(C3084c.m193a(), new C2482b(bundle, c1702c, numberInfo, null));
                Message message2 = new Message();
                message2.setData(bundle);
                message2.what = f7248b;
                C3104j c3104j2 = C3104j.f9124a;
                C3104j.m157a(c3104j2, "PublicService.handleMessage sending answer " + bundle.toString(), (String) null, 2, (Object) null);
                message.replyTo.send(message2);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        C1694h.m3117b(intent, "intent");
        IBinder binder = this.f7246a.getBinder();
        C1694h.m3122a((Object) binder, "mMessenger.binder");
        return binder;
    }

    @Override // android.app.Service
    public void onCreate() {
        C3104j.m157a(C3104j.f9124a, "PublicService.onCreate", (String) null, 2, (Object) null);
    }
}
