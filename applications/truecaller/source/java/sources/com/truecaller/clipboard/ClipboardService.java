package com.truecaller.clipboard;

import android.app.PendingIntent;
import android.app.Service;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.DisplayMetrics;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.components.FloatingWindow;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import o3.c.b;
import p1727n3.p1807k.p1808a.C26450q;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C20399t1;
import p193e.p194a.ClipboardManager$OnPrimaryClipChangedListenerC15254i0;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p682e.p699c2.C13213v;
import s1.w.f;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/clipboard/ClipboardService.class */
public class ClipboardService extends Service implements ClipboardManager$OnPrimaryClipChangedListenerC15254i0.AbstractC15256b {

    /* renamed from: g */
    public static final /* synthetic */ int f10850g = 0;
    @Inject

    /* renamed from: b */
    public ClipboardManager$OnPrimaryClipChangedListenerC15254i0 f10852b;

    /* renamed from: c */
    public Configuration f10853c;

    /* renamed from: d */
    public C13213v f10854d;

    /* renamed from: e */
    public Handler f10855e;

    /* renamed from: a */
    public final AtomicInteger f10851a = new AtomicInteger(0);

    /* renamed from: f */
    public boolean f10856f = false;

    /* renamed from: com.truecaller.clipboard.ClipboardService$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/clipboard/ClipboardService$a.class */
    public static class C3654a implements Handler.Callback {

        /* renamed from: a */
        public final WeakReference<ClipboardService> f10857a;

        /* renamed from: b */
        public Object f10858b;

        /* renamed from: c */
        public boolean f10859c;

        /* renamed from: d */
        public C26450q f10860d;

        /* renamed from: com.truecaller.clipboard.ClipboardService$a$a */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/clipboard/ClipboardService$a$a.class */
        public static final class C3655a {

            /* renamed from: a */
            public final String f10861a;

            /* renamed from: b */
            public final Contact f10862b;

            /* renamed from: c */
            public final FilterMatch f10863c;

            public C3655a(String str, Contact contact, FilterMatch filterMatch) {
                this.f10861a = str;
                this.f10862b = contact;
                this.f10863c = filterMatch;
            }
        }

        public C3654a(ClipboardService clipboardService) {
            this.f10857a = new WeakReference<>(clipboardService);
            Context applicationContext = clipboardService.getApplicationContext();
            try {
                C26450q c26450q = new C26450q(applicationContext, ((AbstractC21187w1) applicationContext).mo10154s().mo12458a1().mo19422d());
                c26450q.f74137R.icon = 2131236603;
                Object obj = C26467a.f74235a;
                c26450q.f74123D = C26467a.C26471d.m1787a(applicationContext, 2131101323);
                c26450q.m1848u(0, 0, true);
                c26450q.f74152l = 1;
                c26450q.m1853p(2, true);
                this.f10860d = c26450q;
                try {
                    Intent launchIntentForPackage = clipboardService.getPackageManager().getLaunchIntentForPackage(clipboardService.getPackageName());
                    Intent intent = launchIntentForPackage;
                    if (launchIntentForPackage == null) {
                        l.e("Could not get standard Intent for clipboard search service notification", RemoteMessageConst.MessageBody.MSG);
                        intent = TruecallerInit.m34554wa(clipboardService, "clipboard");
                        intent.setFlags(268435456);
                    }
                    try {
                        this.f10860d.f74147g = PendingIntent.getActivity(clipboardService, C2752R.C2754id.req_code_clipboard_notification_open, intent, 67108864);
                    } catch (RuntimeException e) {
                        l.e("Could not set PendingIntent for clipboard search service notification: " + e, RemoteMessageConst.MessageBody.MSG);
                        this.f10857a.clear();
                        clipboardService.stopSelf();
                        Toast.makeText(clipboardService, (int) C2752R.string.StrFailedtoStartClipboardAutoSearch, 1).show();
                    }
                } catch (Exception e2) {
                    AssertionUtil.reportThrowableButNeverCrash(e2);
                    this.f10857a.clear();
                    clipboardService.stopSelf();
                }
            } catch (ClassCastException e3) {
                AssertionUtil.reportThrowableButNeverCrash(e3);
                this.f10857a.clear();
                clipboardService.stopSelf();
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            ClipboardService clipboardService = this.f10857a.get();
            if (clipboardService != null) {
                Handler handler = clipboardService.f10855e;
                int i = message.what;
                if (i == 0) {
                    if (!clipboardService.m35731a().f15774m) {
                        return true;
                    }
                    clipboardService.m35731a().m34521b(FloatingWindow.DismissCause.UNDEFINED);
                    return true;
                } else if (i == 1) {
                    C3655a c3655a = (C3655a) message.obj;
                    handler.removeMessages(3);
                    String str = c3655a.f10861a;
                    Contact contact = c3655a.f10862b;
                    FilterMatch filterMatch = c3655a.f10863c;
                    if (!clipboardService.m35731a().f15774m) {
                        clipboardService.m35731a().m34520d();
                    }
                    clipboardService.f10855e.removeCallbacksAndMessages(null);
                    Handler handler2 = clipboardService.f10855e;
                    handler2.sendMessage(handler2.obtainMessage(4, 0, 0, null));
                    clipboardService.m35731a().m21990f(str, contact, filterMatch);
                    return true;
                } else if (i != 2) {
                    if (i == 3) {
                        String m28378a = C8572b0.m28378a(message.getData().getString("number"), null);
                        this.f10858b = message.obj;
                        this.f10860d.m1855n(clipboardService.getString(C2752R.string.ClipboardSearchNotificationTitle, new Object[]{m28378a}));
                        this.f10860d.m1843z(clipboardService.getString(C2752R.string.ClipboardSearchNotificationTicker, new Object[]{m28378a}));
                        this.f10859c = true;
                        clipboardService.startForeground(C2752R.C2754id.clipboard_service_notification_id, this.f10860d.m1865d());
                        return true;
                    } else if (i != 4 || !this.f10859c) {
                        return true;
                    } else {
                        Object obj = message.obj;
                        if (obj != null && obj != this.f10858b) {
                            return true;
                        }
                        this.f10858b = null;
                        this.f10859c = false;
                        clipboardService.stopForeground(true);
                        return true;
                    }
                } else {
                    C13213v c13213v = clipboardService.f10854d;
                    if (c13213v == null) {
                        return true;
                    }
                    boolean z = c13213v.f15774m;
                    Contact contact2 = c13213v.f38369s;
                    String str2 = c13213v.f38374x;
                    FilterMatch filterMatch2 = c13213v.f38375y;
                    FrameLayout frameLayout = c13213v.f15767f;
                    if (frameLayout != null) {
                        frameLayout.setOnTouchListener(null);
                        c13213v.f15765d.removeView(c13213v.f15767f);
                    }
                    Handler handler3 = c13213v.f15768g;
                    if (handler3 != null) {
                        handler3.removeMessages(1);
                        c13213v.f15768g.removeMessages(2);
                        c13213v.f15768g = null;
                    }
                    clipboardService.f10854d = null;
                    if (contact2 != null && filterMatch2 != null) {
                        clipboardService.m35731a().m21990f(str2, contact2, filterMatch2);
                    }
                    if (!z) {
                        return true;
                    }
                    clipboardService.m35731a().m34520d();
                    return true;
                }
            }
            return true;
        }
    }

    /* renamed from: a */
    public C13213v m35731a() {
        if (this.f10854d == null) {
            this.f10854d = new C13213v(this, null);
        }
        return this.f10854d;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C13213v c13213v;
        super.onConfigurationChanged(configuration);
        int updateFrom = this.f10853c.updateFrom(configuration);
        if (Configuration.needNewResources(updateFrom, 4)) {
            this.f10855e.removeMessages(2);
            this.f10855e.sendEmptyMessage(2);
        } else if ((updateFrom & 128) == 0 || (c13213v = this.f10854d) == null) {
        } else {
            DisplayMetrics displayMetrics = c13213v.f15762a.getResources().getDisplayMetrics();
            c13213v.f15769h = displayMetrics.widthPixels;
            c13213v.f15770i = displayMetrics.heightPixels - C19045j0.m14204l(c13213v.f15762a.getResources());
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f10853c = new Configuration(getResources().getConfiguration());
        this.f10855e = new Handler(new C3654a(this));
        C20399t1.C20413i c20413i = (C20399t1.C20413i) AbstractC17399l2.f48744a.m16142a().mo11167q();
        C20399t1 c20399t1 = c20413i.f57413a;
        Provider<ClipboardManager> provider = c20399t1.f57311n;
        a a = b.a(c20399t1.f57312o);
        a a2 = b.a(c20413i.f57413a.f57313p);
        a a3 = b.a(c20413i.f57413a.f57314q);
        a a4 = b.a(c20413i.f57413a.f57315r);
        a a5 = b.a(c20413i.f57413a.f57316s);
        a a6 = b.a(c20413i.f57413a.f57306i);
        a a7 = b.a(c20413i.f57413a.f57317t);
        a a8 = b.a(c20413i.f57413a.f57318u);
        f mo12378g = c20413i.f57413a.f57299b.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        f mo12315k6 = c20413i.f57413a.f57299b.mo12315k6();
        Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
        ClipboardManager$OnPrimaryClipChangedListenerC15254i0 clipboardManager$OnPrimaryClipChangedListenerC15254i0 = new ClipboardManager$OnPrimaryClipChangedListenerC15254i0(provider, a, a2, a3, a4, a5, a6, a7, a8, mo12378g, mo12315k6);
        this.f10852b = clipboardManager$OnPrimaryClipChangedListenerC15254i0;
        if (!(clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43439a != null)) {
            clipboardManager$OnPrimaryClipChangedListenerC15254i0.m18994b(this);
            return;
        }
        stopSelf();
        this.f10856f = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        boolean z = this.f10856f;
        ClipboardManager$OnPrimaryClipChangedListenerC15254i0 clipboardManager$OnPrimaryClipChangedListenerC15254i0 = this.f10852b;
        if (clipboardManager$OnPrimaryClipChangedListenerC15254i0 == null || z) {
            return;
        }
        clipboardManager$OnPrimaryClipChangedListenerC15254i0.m18994b(null);
        this.f10852b = null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }
}
