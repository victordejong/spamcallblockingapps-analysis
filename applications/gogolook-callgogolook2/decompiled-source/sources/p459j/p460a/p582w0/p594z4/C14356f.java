package p459j.p460a.p582w0.p594z4;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14078m0;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14245c;
import p459j.p460a.p601x0.p602a.AbstractC14442e;
import p459j.p460a.p601x0.p602a.C14439b;
import p459j.p460a.p601x0.p602a.C14440c;
import p459j.p460a.p601x0.p602a.C14446h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
/* renamed from: j.a.w0.z4.f */
/* loaded from: classes3-dex2jar.jar:j/a/w0/z4/f.class */
public class C14356f {

    /* renamed from: a */
    public static boolean f32176a = false;

    /* renamed from: b */
    public static boolean f32177b = false;

    /* renamed from: c */
    public static int f32178c = 0;

    /* renamed from: d */
    public static boolean f32179d = false;

    /* renamed from: j.a.w0.z4.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/f$a.class */
    public static final class C14357a implements Action1<Integer> {
        /* renamed from: a */
        public void call(Integer num) {
            C14174u.m2285s();
            C14339d.m1530a();
            if (num.intValue() == 6) {
                C14037j3.m2731a().mo2704a(new C14020h1(true));
            }
        }
    }

    /* renamed from: j.a.w0.z4.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/f$b.class */
    public static final class C14358b implements Action1<Throwable> {
        /* renamed from: a */
        public void call(Throwable th) {
            C14339d.m1530a();
            C14174u.m2285s();
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.w0.z4.f$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/f$c.class */
    public static final class C14359c implements Single.OnSubscribe<Integer> {
        /* renamed from: a */
        public void call(SingleSubscriber<? super Integer> singleSubscriber) {
            int b;
            if (C13915b3.m3062a("is_loaded_realm_log_dirty", false)) {
                C14356f.m1478c();
                C13915b3.m3055b("is_loaded_realm_log_dirty", false);
            }
            while (true) {
                b = C14356f.m1481b();
                if (b == 2) {
                    C14037j3.m2731a().mo2704a(new C14020h1(true));
                }
                if (b != 2 && b != 3 && b != 4) {
                    break;
                }
            }
            if (b != 1) {
                C14245c.f31844b.m2078a().evictAll();
            }
            singleSubscriber.onSuccess(Integer.valueOf(b));
        }
    }

    /* renamed from: j.a.w0.z4.f$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/f$d.class */
    public static final class AsyncTaskC14360d extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final /* synthetic */ String f32180a;

        /* renamed from: b */
        public final /* synthetic */ String f32181b;

        public AsyncTaskC14360d(String str, String str2) {
            this.f32180a = str;
            this.f32181b = str2;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            String str;
            try {
                Cursor query = MyApplication.m29013o().getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(this.f32180a)), new String[]{"_id", CacheIndexRealmObject.DISPLAY_NAME}, null, null, null);
                long j = 0;
                if (query != null) {
                    if (query.moveToFirst()) {
                        j = query.getLong(0);
                        str = query.getString(1);
                    } else {
                        str = null;
                    }
                    query.close();
                } else {
                    str = null;
                }
                C14356f.m1479b(this.f32181b, j, str);
                return null;
            } catch (Exception e) {
                C13973d4.m2952a(e);
                return null;
            }
        }
    }

    /* renamed from: j.a.w0.z4.f$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/f$e.class */
    public static final class AsyncTaskC14361e extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final /* synthetic */ String f32182a;

        public AsyncTaskC14361e(String str) {
            this.f32182a = str;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            Context o = MyApplication.m29013o();
            List<LogsGroupRealmObject> b = C13131j.m4535b(this.f32182a);
            if (b == null || b.isEmpty()) {
                return null;
            }
            for (LogsGroupRealmObject logsGroupRealmObject : b) {
                logsGroupRealmObject.getId();
                Cursor query = o.getContentResolver().query(Uri.parse(String.format("content://mms/%d/part", Long.valueOf(logsGroupRealmObject.getRef_id() != null ? logsGroupRealmObject.getRef_id().intValue() : -1L))), new String[]{"text"}, "ct=? AND text IS NOT NULL AND text !=''", new String[]{"text/plain"}, "_id ASC");
                if (query != null) {
                    if (query.moveToFirst()) {
                        String string = query.getString(0);
                        if (!TextUtils.isEmpty(string)) {
                            logsGroupRealmObject.setContent(string);
                        }
                    }
                    query.close();
                }
            }
            C13131j.m4533b(b);
            return null;
        }
    }

    /* renamed from: a */
    public static Long m1482a(boolean z) {
        return Long.valueOf(z ? 100L : 2000L);
    }

    /* renamed from: a */
    public static void m1485a(int i) {
        synchronized (C14356f.class) {
            try {
                if (C13878a3.m3196v()) {
                    Single observeOn = Single.create(new C14359c()).subscribeOn(C14174u.m2289o()).observeOn(AndroidSchedulers.mainThread());
                    boolean z = true;
                    if (i != 1) {
                        z = false;
                    }
                    observeOn.delay(m1482a(z).longValue(), TimeUnit.MILLISECONDS).subscribe(new C14357a(), new C14358b());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static final void m1484a(String str) {
        if (!TextUtils.isEmpty(str) && C12810o.m5233l()) {
            String l = C14108o4.m2474l(str);
            if (!TextUtils.isEmpty(l)) {
                C14217x3.m2181a(new AsyncTaskC14361e(l));
            }
        }
    }

    /* renamed from: b */
    public static int m1481b() {
        boolean z;
        C14351e eVar;
        int i;
        boolean z2;
        f32177b = true;
        if (f32176a) {
            return 1;
        }
        f32176a = true;
        f32177b = false;
        System.currentTimeMillis();
        boolean e = m1476e();
        C14351e eVar2 = new C14351e();
        try {
            eVar2.m1495d(e);
            eVar2.m1488k();
        } catch (Exception e2) {
            C13973d4.m2952a(e2);
        }
        if (eVar2.m1496d() && eVar2.m1491h()) {
            eVar2.m1499b(e);
            f32178c = 0;
            ArrayList<LogsGroupRealmObject> arrayList = new ArrayList<>();
            ArrayList<LogsGroupRealmObject> arrayList2 = new ArrayList<>();
            ArrayList<LogsGroupRealmObject> arrayList3 = new ArrayList<>();
            int i2 = 0;
            while (true) {
                if (!eVar2.m1504a()) {
                    i = i2;
                    break;
                }
                AbstractC14442e a = eVar2.m1501a(e);
                long u = a.mo1304u();
                long f = a.mo1293f();
                String p = a.mo1292p();
                String l = C14108o4.m2474l(p);
                long f2 = a.mo1293f();
                int g = a.mo1315g();
                int z3 = a.m1300z();
                int o = a.mo1285o();
                long c = a.mo1318c();
                String n = a.mo1308n();
                String d = a.mo1294d();
                boolean z4 = a instanceof C14439b;
                try {
                    if (a instanceof C14440c) {
                        C14245c.m2075a((C14440c) a);
                        C14245c.m2071b((C14440c) a);
                    } else if (a instanceof C14446h) {
                        C14245c.m2074a((C14446h) a);
                    }
                } catch (Throwable th) {
                    C14060l2.m2705a(th);
                }
                if (z3 != 240) {
                    try {
                        eVar2.m1502a(arrayList2, arrayList, arrayList3, u, p, l, f2, g, z3, o, c, n, d, z4 ? 1 : 0);
                        i2++;
                    } catch (Exception e3) {
                        C13973d4.m2952a(e3);
                    }
                }
                a.m1323a(u, f);
                if (i2 >= 100) {
                    i = i2;
                    break;
                }
                a.mo1332C();
            }
            if (eVar2.m1504a()) {
                z2 = true;
            } else {
                eVar2.m1489j();
                z2 = false;
            }
            eVar2.m1500b();
            System.currentTimeMillis();
            if (i > 0) {
                try {
                    C14217x3.m2119o(MyApplication.m29013o());
                    f32179d = true;
                } catch (Exception e4) {
                    C13973d4.m2952a(e4);
                    z = z2;
                    eVar = eVar2;
                }
            }
            C13131j.m4533b(arrayList2);
            C13131j.m4533b(arrayList);
            Iterator<LogsGroupRealmObject> it = arrayList3.iterator();
            while (true) {
                z = z2;
                eVar = eVar2;
                if (!it.hasNext()) {
                    break;
                }
                C13131j.m4540a(C13193p.m4437a("id"), C13193p.m4438a(Long.valueOf(it.next().getId())), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO));
            }
        } else {
            if (!eVar2.m1496d()) {
                int i3 = f32178c;
                f32178c = i3 > 0 ? i3 - 1 : 5;
            }
            eVar2.m1500b();
            z = false;
            eVar = eVar2;
        }
        eVar.m1490i();
        f32176a = false;
        if (f32177b || f32178c > 0 || z) {
            if (f32177b) {
                f32178c = 0;
            }
            if (f32177b) {
                return 4;
            }
            if (f32178c > 0) {
                return 3;
            }
            if (z) {
                return 2;
            }
        }
        if (!f32179d) {
            return 5;
        }
        f32179d = false;
        return 6;
    }

    /* renamed from: b */
    public static final void m1480b(String str) {
        if (!TextUtils.isEmpty(str)) {
            String replaceAll = str.replaceAll("[^+\\d]", "");
            if (!TextUtils.isEmpty(replaceAll)) {
                C14217x3.m2181a(new AsyncTaskC14360d(replaceAll, str));
                m1484a(str);
            }
        }
    }

    /* renamed from: b */
    public static final void m1479b(String str, long j, String str2) {
        C13131j.m4545a(C14108o4.m2474l(str), str, j, str2);
        C14037j3.m2731a().mo2704a(new C14078m0());
    }

    @WorkerThread
    /* renamed from: c */
    public static void m1478c() {
        C13915b3.m3061a("dialer_loaded_realm_log_of_call_id", "dialer_loaded_realm_log_of_call_date_min", "dialer_loaded_realm_log_of_call_date", "dialer_loaded_realm_log_of_sms_id", "dialer_loaded_realm_log_of_sms_date_min", "dialer_loaded_realm_log_of_sms_date", "dialer_loaded_realm_log_of_mms_id", "dialer_loaded_realm_log_of_mms_date_min", "dialer_loaded_realm_log_of_mms_date", "dialer_loaded_realm_log_of_block_id", "dialer_loaded_realm_log_of_block_date_min", "dialer_loaded_realm_log_of_block_date");
        C13131j.m4531c();
    }

    /* renamed from: d */
    public static boolean m1477d() {
        return C13915b3.m3065a("dialer_loaded_realm_log_of_call_id", 0L) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_call_date_min", Long.MAX_VALUE) == Long.MAX_VALUE && C13915b3.m3065a("dialer_loaded_realm_log_of_call_date", 0L) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_sms_id", 0L) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_sms_date_min", Long.MAX_VALUE) == Long.MAX_VALUE && C13915b3.m3065a("dialer_loaded_realm_log_of_sms_date", 0L) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_mms_id", 0L) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_mms_date_min", Long.MAX_VALUE) == Long.MAX_VALUE && C13915b3.m3065a("dialer_loaded_realm_log_of_mms_date", 0L) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_block_id", 0L) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_block_date_min", Long.MAX_VALUE) == Long.MAX_VALUE && C13915b3.m3065a("dialer_loaded_realm_log_of_block_date", 0L) == 0;
    }

    /* renamed from: e */
    public static boolean m1476e() {
        return (C13915b3.m3065a("dialer_loaded_realm_log_of_call_date_min", Long.MAX_VALUE) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_sms_date_min", Long.MAX_VALUE) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_mms_date_min", Long.MAX_VALUE) == 0 && C13915b3.m3065a("dialer_loaded_realm_log_of_block_date_min", Long.MAX_VALUE) == 0) ? false : true;
    }
}
