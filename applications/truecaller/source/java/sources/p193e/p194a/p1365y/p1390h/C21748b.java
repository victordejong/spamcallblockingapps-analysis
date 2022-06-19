package p193e.p194a.p1365y.p1390h;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.core.graphics.drawable.IconCompat;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.core.FlashMediaService;
import com.truecaller.flashsdk.models.Contact;
import com.truecaller.flashsdk.models.Flash;
import com.truecaller.flashsdk.models.ImageFlash;
import com.truecaller.flashsdk.models.Payload;
import com.truecaller.flashsdk.models.QueuedFlash;
import com.truecaller.flashsdk.models.Sender;
import com.truecaller.flashsdk.p166ui.incoming.FlashActivity;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1807k.p1808a.C26447o;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1808a.C26453t;
import p1727n3.p1807k.p1808a.C26464y;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1365y.p1381b.AbstractC21597c;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p849h4.p850q.AbstractC14932g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.y.h.b */
/* loaded from: classes9-dex2jar.jar:e/a/y/h/b.class */
public final class C21748b implements AbstractC21747a {

    /* renamed from: a */
    public final f f60564a;

    /* renamed from: b */
    public final f f60565b;

    /* renamed from: c */
    public final Context f60566c;

    /* renamed from: d */
    public final AbstractC21597c f60567d;

    /* renamed from: e */
    public final AbstractC21603f f60568e;

    /* renamed from: f */
    public final AbstractC21606g0 f60569f;

    @e(c = "com.truecaller.flashsdk.notifications.FlashNotificationManagerImpl$showCallMeBackNotification$1", f = "FlashNotificationManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.y.h.b$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/h/b$a.class */
    public static final class C21749a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Flash f60571f;

        /* renamed from: g */
        public final /* synthetic */ Bitmap f60572g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21749a(Flash flash, Bitmap bitmap, d dVar) {
            super(2, dVar);
            C21748b.this = r5;
            this.f60571f = flash;
            this.f60572g = bitmap;
        }

        /* renamed from: i */
        public final d<s> m9125i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21749a(this.f60571f, this.f60572g, dVar);
        }

        /* renamed from: k */
        public final Object m9124k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21749a(this.f60571f, this.f60572g, dVar).m9123s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:35:0x02d4, code lost:
            if (r8 != null) goto L37;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m9123s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 796
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1365y.p1390h.C21748b.C21749a.m9123s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C21748b(@Named("UI") f fVar, Context context, AbstractC21597c abstractC21597c, AbstractC21603f abstractC21603f, AbstractC21606g0 abstractC21606g0) {
        l.e(fVar, "uiContext");
        l.e(context, "managerContext");
        l.e(abstractC21597c, "contactUtils");
        l.e(abstractC21603f, "deviceUtils");
        l.e(abstractC21606g0, "resourceProvider");
        this.f60565b = fVar;
        this.f60566c = context;
        this.f60567d = abstractC21597c;
        this.f60568e = abstractC21603f;
        this.f60569f = abstractC21606g0;
        this.f60564a = fVar;
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: a */
    public void mo9136a(Flash flash) {
        l.e(flash, "flash");
        NotificationManager notificationManager = (NotificationManager) this.f60566c.getSystemService(RemoteMessageConst.NOTIFICATION);
        if (notificationManager != null) {
            notificationManager.cancel((int) (C3909R.C3911id.flash_image_uploading_notification_id + flash.f11992b));
        }
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: b */
    public void mo9135b(QueuedFlash queuedFlash) {
        l.e(queuedFlash, "flash");
        PendingIntent activity = PendingIntent.getActivity(this.f60566c, 120, FlashActivity.m35336xa(this.f60566c, queuedFlash, true), 201326592);
        Sender sender = queuedFlash.f11991a;
        l.d(sender, "flash.sender");
        String m35378b = sender.m35378b();
        Sender sender2 = queuedFlash.f11991a;
        l.d(sender2, "flash.sender");
        String m35379a = sender2.m35379a();
        String str = m35378b;
        String str2 = m35379a;
        if (this.f60568e.mo9384a()) {
            AbstractC21597c abstractC21597c = this.f60567d;
            Sender sender3 = queuedFlash.f11991a;
            l.d(sender3, "flash.sender");
            Contact mo9388b = abstractC21597c.mo9388b(String.valueOf(sender3.m35377c().longValue()));
            String str3 = m35379a;
            if (mo9388b != null) {
                String imageUrl = mo9388b.getImageUrl();
                str3 = m35379a;
                if (!(imageUrl == null || r.p(imageUrl))) {
                    str3 = mo9388b.getImageUrl();
                }
            }
            str = m35378b;
            str2 = str3;
            if (mo9388b != null) {
                str = m35378b;
                str2 = str3;
                if (!r.p(mo9388b.getName())) {
                    str = mo9388b.getName();
                    str2 = str3;
                }
            }
        }
        C26450q m9128i = m9128i(m9126k().mo19425a("flash"));
        m9128i.f74137R.icon = C3909R.C3910drawable.ic_tcx_messages_24dp;
        Context context = this.f60566c;
        int i = C3909R.color.truecolor;
        Object obj = C26467a.f74235a;
        m9128i.f74123D = C26467a.C26471d.m1787a(context, i);
        m9128i.m1853p(16, true);
        m9128i.f74147g = activity;
        m9128i.f74137R.when = System.currentTimeMillis();
        m9128i.f74153m = true;
        l.d(m9128i, "createNotificationBuilde…       .setShowWhen(true)");
        C26464y.C26465a c26465a = new C26464y.C26465a();
        c26465a.f74222a = str;
        C26453t c26453t = new C26453t(new C26464y(c26465a));
        CharSequence text = this.f60566c.getText(C3909R.string.notification_incoming_flash);
        long currentTimeMillis = System.currentTimeMillis();
        C26464y.C26465a c26465a2 = new C26464y.C26465a();
        AbstractC21606g0 abstractC21606g0 = this.f60569f;
        l.d(str2, "image");
        Bitmap mo9371f = abstractC21606g0.mo9371f(str2, true);
        if (mo9371f != null) {
            c26465a2.f74223b = IconCompat.h(mo9371f);
        }
        c26465a2.f74222a = str;
        c26453t.m1838k(text, currentTimeMillis, new C26464y(c26465a2));
        m9128i.m1845x(c26453t);
        AbstractC14920n m9126k = m9126k();
        Sender sender4 = queuedFlash.f11991a;
        l.d(sender4, "flash.sender");
        int longValue = (int) (sender4.m35377c().longValue() % 1000000000);
        Notification m1865d = m9128i.m1865d();
        l.d(m1865d, "notificationBuilder.build()");
        m9126k.mo19419g(longValue, m1865d);
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: c */
    public void mo9134c(ImageFlash imageFlash) {
        l.e(imageFlash, "flash");
        Intent intent = new Intent();
        intent.putExtra("extra_image_flash", imageFlash);
        Context context = this.f60566c;
        int i = C3909R.C3911id.flash_image_uploading_notification_id;
        PendingIntent service = PendingIntent.getService(context, i, intent, 201326592);
        String mo9375b = this.f60569f.mo9375b(C3909R.string.flash_text, new Object[0]);
        String mo9375b2 = this.f60569f.mo9375b(C3909R.string.sending_flash, new Object[0]);
        C26450q m9128i = m9128i(m9126k().mo19425a("flash"));
        m9128i.m1855n(mo9375b);
        m9128i.m1856m(mo9375b2);
        m9128i.m1848u(100, 100, true);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(mo9375b2);
        m9128i.m1845x(c26447o);
        Context context2 = this.f60566c;
        int i2 = C3909R.color.truecolor;
        Object obj = C26467a.f74235a;
        m9128i.f74123D = C26467a.C26471d.m1787a(context2, i2);
        m9128i.f74137R.icon = C3909R.C3910drawable.ic_flash;
        m9128i.m1853p(2, true);
        m9128i.f74147g = service;
        m9128i.f74137R.when = System.currentTimeMillis();
        m9128i.f74153m = true;
        AbstractC14920n m9126k = m9126k();
        int i3 = (int) (i + imageFlash.f11992b);
        Notification m1865d = m9128i.m1865d();
        l.d(m1865d, "builder.build()");
        m9126k.mo19419g(i3, m1865d);
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: d */
    public void mo9133d(ImageFlash imageFlash) {
        l.e(imageFlash, "flash");
        Intent intent = new Intent();
        intent.putExtra("extra_image_flash", imageFlash);
        Context context = this.f60566c;
        int i = C3909R.C3911id.flash_image_uploading_notification_id;
        PendingIntent service = PendingIntent.getService(context, i, intent, 201326592);
        String mo9375b = this.f60569f.mo9375b(C3909R.string.flash_text, new Object[0]);
        String mo9375b2 = this.f60569f.mo9375b(C3909R.string.uploading_image, new Object[0]);
        C26450q m9128i = m9128i(m9126k().mo19425a("flash"));
        m9128i.m1855n(mo9375b);
        m9128i.m1856m(mo9375b2);
        m9128i.m1848u(100, 100, true);
        C26447o c26447o = new C26447o();
        c26447o.m1873k(mo9375b2);
        m9128i.m1845x(c26447o);
        Context context2 = this.f60566c;
        int i2 = C3909R.color.truecolor;
        Object obj = C26467a.f74235a;
        m9128i.f74123D = C26467a.C26471d.m1787a(context2, i2);
        m9128i.f74137R.icon = C3909R.C3910drawable.ic_flash;
        m9128i.f74147g = service;
        m9128i.f74137R.when = System.currentTimeMillis();
        m9128i.m1853p(2, true);
        m9128i.f74153m = true;
        AbstractC14920n m9126k = m9126k();
        int i3 = (int) (i + imageFlash.f11992b);
        Notification m1865d = m9128i.m1865d();
        l.d(m1865d, "builder.build()");
        m9126k.mo19419g(i3, m1865d);
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: e */
    public void mo9132e(Flash flash) {
        l.e(flash, "flash");
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f60566c, 120, new Intent("com.truecaller.flashsdk.PAYMENT_RECEIVED"), 201326592);
        Sender sender = flash.f11991a;
        l.d(sender, "flash.sender");
        String m35378b = sender.m35378b();
        Sender sender2 = flash.f11991a;
        l.d(sender2, "flash.sender");
        String m35379a = sender2.m35379a();
        String str = m35378b;
        String str2 = m35379a;
        if (this.f60568e.mo9384a()) {
            AbstractC21597c abstractC21597c = this.f60567d;
            Sender sender3 = flash.f11991a;
            l.d(sender3, "flash.sender");
            Contact mo9388b = abstractC21597c.mo9388b(String.valueOf(sender3.m35377c().longValue()));
            String str3 = m35379a;
            if (mo9388b != null) {
                String imageUrl = mo9388b.getImageUrl();
                str3 = m35379a;
                if (!(imageUrl == null || r.p(imageUrl))) {
                    str3 = mo9388b.getImageUrl();
                }
            }
            str = m35378b;
            str2 = str3;
            if (mo9388b != null) {
                str = m35378b;
                str2 = str3;
                if (!r.p(mo9388b.getName())) {
                    str = mo9388b.getName();
                    str2 = str3;
                }
            }
        }
        if (!(str == null || r.p(str))) {
            Payload payload = flash.f11996f;
            l.d(payload, "flash.payload");
            String m35386a = payload.m35386a();
            C26450q m9128i = m9128i(m9126k().mo19425a("truecaller_pay_v2"));
            m9128i.f74137R.icon = C3909R.C3910drawable.ic_stat_flash;
            Context context = this.f60566c;
            int i = C3909R.color.truecolor;
            Object obj = C26467a.f74235a;
            m9128i.f74123D = C26467a.C26471d.m1787a(context, i);
            m9128i.m1855n(this.f60566c.getString(C3909R.string.truecaller_pay));
            m9128i.m1853p(16, true);
            m9128i.m1851r(-65536, 1, 1);
            m9128i.f74147g = broadcast;
            m9128i.f74137R.when = System.currentTimeMillis();
            m9128i.f74153m = true;
            m9128i.m1852q(m9127j(str2));
            l.d(m9128i, "createNotificationBuilde…etBitmapForImgUrl(image))");
            if (m35386a == null || r.p(m35386a)) {
                m9128i.m1856m(this.f60566c.getString(C3909R.string.sent_you_money, str));
            } else {
                m9128i.m1856m(this.f60566c.getString(C3909R.string.sent_you_amount, str, m35386a));
            }
            Notification m1865d = m9128i.m1865d();
            l.d(m1865d, "notificationBuilder.build()");
            AbstractC14920n m9126k = m9126k();
            Sender sender4 = flash.f11991a;
            l.d(sender4, "flash.sender");
            m9126k.mo19419g(((int) (sender4.m35377c().longValue() % 1000000000)) + 100, m1865d);
        }
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: f */
    public void mo9131f(Flash flash, Bitmap bitmap) {
        l.e(flash, "flash");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f60564a, (j0) null, new C21749a(flash, bitmap, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: g */
    public void mo9130g(ImageFlash imageFlash) {
        l.e(imageFlash, "flash");
        Intent intent = new Intent(this.f60566c, FlashMediaService.class);
        intent.setAction("action_image_flash_retry");
        intent.putExtra("extra_image_flash", imageFlash);
        Context context = this.f60566c;
        int i = C3909R.C3911id.flash_image_uploading_notification_id;
        PendingIntent service = PendingIntent.getService(context, i, intent, 201326592);
        String mo9375b = this.f60569f.mo9375b(C3909R.string.upload_failed, new Object[0]);
        String mo9375b2 = this.f60569f.mo9375b(C3909R.string.tap_to_retry, new Object[0]);
        C26450q m9128i = m9128i(m9126k().mo19425a("flash"));
        m9128i.m1855n(mo9375b);
        m9128i.m1856m(mo9375b2);
        Context context2 = this.f60566c;
        int i2 = C3909R.color.truecolor;
        Object obj = C26467a.f74235a;
        m9128i.f74123D = C26467a.C26471d.m1787a(context2, i2);
        m9128i.f74137R.icon = C3909R.C3910drawable.ic_flash;
        m9128i.f74147g = service;
        m9128i.f74137R.when = System.currentTimeMillis();
        m9128i.f74153m = true;
        m9128i.m1868a(C3909R.C3910drawable.ic_notification_retry, this.f60569f.mo9375b(C3909R.string.retry, new Object[0]), service);
        AbstractC14920n m9126k = m9126k();
        int i3 = (int) (i + imageFlash.f11992b);
        Notification m1865d = m9128i.m1865d();
        l.d(m1865d, "builder.build()");
        m9126k.mo19419g(i3, m1865d);
    }

    @Override // p193e.p194a.p1365y.p1390h.AbstractC21747a
    /* renamed from: h */
    public void mo9129h(ImageFlash imageFlash) {
        l.e(imageFlash, "flash");
        Intent intent = new Intent(this.f60566c, FlashMediaService.class);
        intent.setAction("action_image_flash_retry");
        intent.putExtra("extra_image_flash", imageFlash);
        Context context = this.f60566c;
        int i = C3909R.C3911id.flash_image_uploading_notification_id;
        PendingIntent service = PendingIntent.getService(context, i, intent, 201326592);
        String mo9375b = this.f60569f.mo9375b(C3909R.string.flash_failed, new Object[0]);
        String mo9375b2 = this.f60569f.mo9375b(C3909R.string.tap_to_retry, new Object[0]);
        C26450q m9128i = m9128i(m9126k().mo19425a("flash"));
        m9128i.m1855n(mo9375b);
        m9128i.m1856m(mo9375b2);
        Context context2 = this.f60566c;
        int i2 = C3909R.color.truecolor;
        Object obj = C26467a.f74235a;
        m9128i.f74123D = C26467a.C26471d.m1787a(context2, i2);
        m9128i.f74137R.icon = C3909R.C3910drawable.ic_flash;
        m9128i.f74147g = service;
        m9128i.m1853p(16, true);
        m9128i.f74137R.when = System.currentTimeMillis();
        m9128i.f74153m = true;
        m9128i.m1868a(C3909R.C3910drawable.ic_notification_retry, this.f60569f.mo9375b(C3909R.string.retry, new Object[0]), service);
        AbstractC14920n m9126k = m9126k();
        int i3 = (int) (i + imageFlash.f11992b);
        Notification m1865d = m9128i.m1865d();
        l.d(m1865d, "builder.build()");
        m9126k.mo19419g(i3, m1865d);
    }

    /* renamed from: i */
    public final C26450q m9128i(String str) {
        return str == null ? new C26450q(this.f60566c, (String) null) : new C26450q(this.f60566c, str);
    }

    /* renamed from: j */
    public final Bitmap m9127j(String str) {
        return (str == null || r.p(str)) ? BitmapFactory.decodeResource(this.f60566c.getResources(), C3909R.C3910drawable.ic_notification_avatar) : this.f60569f.mo9371f(str, true);
    }

    /* renamed from: k */
    public final AbstractC14920n m9126k() {
        Context applicationContext = this.f60566c.getApplicationContext();
        Context context = applicationContext;
        if (!(applicationContext instanceof AbstractC14932g)) {
            context = null;
        }
        AbstractC14932g abstractC14932g = (AbstractC14932g) context;
        if (abstractC14932g != null) {
            return abstractC14932g.mo19403n();
        }
        throw new RuntimeException(C22128a.m8643a2(AbstractC14932g.class, C22128a.m8728C("Application class does not implement ")));
    }
}
