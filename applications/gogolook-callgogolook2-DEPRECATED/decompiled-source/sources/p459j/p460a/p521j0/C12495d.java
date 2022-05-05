package p459j.p460a.p521j0;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.CallLog;
import androidx.work.PeriodicWorkRequest;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14023h4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.j0.d */
/* loaded from: classes3-dex2jar.jar:j/a/j0/d.class */
public class C12495d {

    /* renamed from: a */
    public String f28190a;

    /* renamed from: b */
    public boolean f28191b;

    /* renamed from: c */
    public long f28192c;

    /* renamed from: d */
    public CallStats f28193d;

    /* renamed from: e */
    public ContentObserver f28194e;

    /* renamed from: j.a.j0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/d$a.class */
    public class C12496a extends ContentObserver {

        /* renamed from: j.a.j0.d$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/d$a$a.class */
        public class C12497a implements Single.OnSubscribe<Long> {
            public C12497a(C12496a aVar) {
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Long> singleSubscriber) {
                singleSubscriber.onSuccess(Long.valueOf(C14023h4.m2756b(MyApplication.m29013o())));
            }
        }

        /* renamed from: j.a.j0.d$a$b */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/d$a$b.class */
        public class C12498b implements Action1<Long> {
            public C12498b(C12496a aVar) {
            }

            /* renamed from: a */
            public void call(Long l) {
                long currentTimeMillis = System.currentTimeMillis();
                if (l.longValue() > 0 && l.longValue() < currentTimeMillis) {
                    C14023h4.m2768a(l.longValue());
                }
            }
        }

        public C12496a(C12495d dVar, Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C14081m3.m2609a(new C12497a(this), Schedulers.m0io(), AndroidSchedulers.mainThread(), new C12498b(this));
        }
    }

    /* renamed from: j.a.j0.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/d$b.class */
    public static class C12499b {

        /* renamed from: a */
        public static volatile C12495d f28195a = new C12495d(null);
    }

    public C12495d() {
        this.f28190a = null;
        this.f28191b = false;
        this.f28192c = 0L;
        this.f28194e = null;
    }

    public /* synthetic */ C12495d(C12496a aVar) {
        this();
    }

    /* renamed from: b */
    public static C12495d m5972b() {
        C12499b.f28195a.m5978a();
        return C12499b.f28195a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x010b, code lost:
        if (gogolook.callgogolook2.gson.CallStats.m28534h().m28537e() > 1) goto L_0x010e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p459j.p460a.p521j0.EnumC12488a m5976a(android.content.Context r7, android.content.Intent r8, p459j.p460a.p521j0.p522u.p523d.C12617h0 r9) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.C12495d.m5976a(android.content.Context, android.content.Intent, j.a.j0.u.d.h0):j.a.j0.a");
    }

    /* renamed from: a */
    public final void m5978a() {
        if (this.f28194e == null && C13878a3.m3207k()) {
            this.f28194e = new C12496a(this, new Handler(Looper.getMainLooper()));
            try {
                MyApplication.m29013o().getContentResolver().registerContentObserver(CallLog.Calls.CONTENT_URI, true, this.f28194e);
            } catch (SecurityException e) {
                this.f28194e = null;
                C14080m2.m2613a("PhoneReceiverSingleton", e, true);
            }
        }
    }

    /* renamed from: a */
    public void m5977a(Context context, Intent intent) {
        m5976a(context, intent, null);
    }

    /* renamed from: a */
    public void m5973a(String str, boolean z) {
        this.f28192c = System.currentTimeMillis();
        this.f28190a = str;
        this.f28191b = z;
    }

    /* renamed from: a */
    public final boolean m5975a(Intent intent) {
        if (System.currentTimeMillis() - this.f28192c >= PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            return false;
        }
        String q = this.f28193d.m28539c().m28486q();
        String str = q;
        if (q == null) {
            str = intent.getStringExtra("whoscall_sms_extra_address");
        }
        boolean z = true;
        if (m5974a(C14108o4.m2474l(str))) {
            return true;
        }
        if (!this.f28191b) {
            return false;
        }
        String stringExtra = intent.getStringExtra("whoscall_sms_extra_content");
        if (stringExtra == null || stringExtra.length() <= 0 || !NumberVerifyPresenter.f10959k.matcher(stringExtra).find()) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m5974a(String str) {
        String str2;
        return System.currentTimeMillis() - this.f28192c < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS && (str2 = this.f28190a) != null && str != null && str.endsWith(str2);
    }
}
