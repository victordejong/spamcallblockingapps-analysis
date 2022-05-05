package p459j.p460a.p567t0;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.Person;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteListRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
import gogolook.callgogolook2.realm.obj.note.NoteRealmObject;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import gogolook.callgogolook2.util.control.VersionManager;
import io.realm.RealmObject;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.DebugKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p533l.C12943j;
import p459j.p460a.p533l.C12944k;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p541n0.C13175m;
import p459j.p460a.p541n0.C13182n;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14089n1;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14116p0;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14150s2;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14186u0;
import p459j.p460a.p582w0.C14193v0;
import p459j.p460a.p582w0.C14194v1;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p660rx.Observable;
import p660rx.Observer;
import p660rx.Scheduler;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.functions.Func2;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.t0.a */
/* loaded from: classes3-dex2jar.jar:j/a/t0/a.class */
public class C13625a {

    /* renamed from: a */
    public static Object f30576a = new Object();

    /* renamed from: b */
    public static int f30577b;

    /* renamed from: j.a.t0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$a.class */
    public static final class C13626a implements Func2<Integer, Long, Integer> {
        /* renamed from: a */
        public Integer m3768a(Integer num, Long l) {
            return num;
        }

        @Override // p660rx.functions.Func2
        public /* bridge */ /* synthetic */ Integer call(Integer num, Long l) {
            Integer num2 = num;
            m3768a(num2, l);
            return num2;
        }
    }

    /* renamed from: j.a.t0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$b.class */
    public static final class C13627b implements Func2<List<RealmObject>, Long, List<RealmObject>> {
        /* renamed from: a */
        public List<RealmObject> m3767a(List<RealmObject> list, Long l) {
            return list;
        }

        @Override // p660rx.functions.Func2
        public /* bridge */ /* synthetic */ List<RealmObject> call(List<RealmObject> list, Long l) {
            List<RealmObject> list2 = list;
            m3767a(list2, l);
            return list2;
        }
    }

    /* renamed from: j.a.t0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$c.class */
    public static final class C13628c implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ Context f30578a;

        /* renamed from: j.a.t0.a$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/t0/a$c$a.class */
        public class C13629a implements Observer<List<RealmObject>> {

            /* renamed from: a */
            public final /* synthetic */ Integer f30579a;

            public C13629a(Integer num) {
                this.f30579a = num;
            }

            /* renamed from: a */
            public void onNext(List<RealmObject> list) {
                C13625a.m3813a(C13628c.this.f30578a, this.f30579a.intValue(), list);
            }

            @Override // p660rx.Observer
            public void onCompleted() {
            }

            @Override // p660rx.Observer
            public void onError(Throwable th) {
                C14080m2.m2612a(th);
            }
        }

        public C13628c(Context context) {
            this.f30578a = context;
        }

        /* renamed from: a */
        public void call(Integer num) {
            C13625a.m3823a(num.intValue(), Schedulers.m0io()).subscribe(new C13629a(num));
        }
    }

    /* renamed from: j.a.t0.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$d.class */
    public static final class C13630d implements Action0 {
        @Override // p660rx.functions.Action0
        public void call() {
            C13915b3.m3057b("syncmanager.sync_time", System.currentTimeMillis());
        }
    }

    /* renamed from: j.a.t0.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$e.class */
    public static final class C13631e extends C14150s2.AbstractC14162j {

        /* renamed from: a */
        public final /* synthetic */ int f30581a;

        /* renamed from: b */
        public final /* synthetic */ List f30582b;

        public C13631e(int i, List list) {
            this.f30581a = i;
            this.f30582b = list;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14162j, p660rx.functions.Func0, java.util.concurrent.Callable
        public C12378a call() {
            if (VersionManager.m25991e(4) || !C14137r4.m2372f()) {
                C14080m2.m2616a("Do not need sync , update status : " + VersionManager.m25991e(4) + " isMember : " + C14137r4.m2372f());
                return null;
            }
            return C12378a.m6276a(C12378a.EnumC12382d.POST_SYNC, C13625a.m3800b(this.f30581a, this.f30582b), new String[0]);
        }
    }

    /* renamed from: j.a.t0.a$f */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$f.class */
    public static final class C13632f extends C14150s2.AbstractC14159g {

        /* renamed from: a */
        public final /* synthetic */ Context f30583a;

        public C13632f(Context context) {
            this.f30583a = context;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14159g
        /* renamed from: a */
        public void call(C12378a.C12380b bVar) {
            if (bVar != null && bVar.f27921b == 200) {
                C13625a.m3781f(this.f30583a, bVar.f27922c);
            }
        }
    }

    /* renamed from: j.a.t0.a$g */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$g.class */
    public static final class C13633g extends C14150s2.AbstractC14158f {
        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14158f
        /* renamed from: a */
        public Boolean call(C12378a.C12380b bVar) {
            return true;
        }
    }

    /* renamed from: j.a.t0.a$h */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$h.class */
    public static final class C13634h extends C14150s2.AbstractC14161i {
        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14161i
        /* renamed from: a */
        public void mo1057a(Context context, Throwable th, C12378a.C12380b bVar, Boolean bool, Boolean bool2) {
            C13973d4.m2952a(th);
        }
    }

    /* renamed from: j.a.t0.a$i */
    /* loaded from: classes3-dex2jar.jar:j/a/t0/a$i.class */
    public static final class C13635i implements C13032a.AbstractC13033a {
        @Override // p459j.p460a.p541n0.C13032a.AbstractC13033a
        /* renamed from: a */
        public void mo3764a() {
            MessagingContentProvider.m27769e();
        }

        @Override // p459j.p460a.p541n0.C13032a.AbstractC13033a
        /* renamed from: a */
        public void mo3763a(int i, String str, int i2) {
            if (i == 1) {
                boolean z = true;
                if (i2 != 3) {
                    z = i2 == 2;
                }
                C11521c.m9359a((String) null, str, z);
            }
        }
    }

    /* renamed from: a */
    public static List<? extends RealmObject> m3825a(int i) {
        switch (i) {
            case 1:
                String[] a = C13193p.m4437a("_status", "_status", "_status");
                Object[] a2 = C13193p.m4438a(2, 1, 3);
                C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
                C13193p.EnumC13194a aVar2 = C13193p.EnumC13194a.OR_EQUAL_TO;
                return C13175m.m4470a(a, a2, C13193p.m4439a(aVar, aVar2, aVar2), null, null);
            case 2:
                String[] a3 = C13193p.m4437a("_status", "_status", "_status");
                Object[] a4 = C13193p.m4438a(2, 1, 3);
                C13193p.EnumC13194a aVar3 = C13193p.EnumC13194a.EQUAL_TO;
                C13193p.EnumC13194a aVar4 = C13193p.EnumC13194a.OR_EQUAL_TO;
                return C13032a.m4748a(a3, a4, C13193p.m4439a(aVar3, aVar4, aVar4), null, null);
            case 3:
                String[] a5 = C13193p.m4437a("_status", "_status", "_status");
                Object[] a6 = C13193p.m4438a(2, 1, 3);
                C13193p.EnumC13194a aVar5 = C13193p.EnumC13194a.EQUAL_TO;
                C13193p.EnumC13194a aVar6 = C13193p.EnumC13194a.OR_EQUAL_TO;
                return C13217t.m4398a(a5, a6, C13193p.m4439a(aVar5, aVar6, aVar6), null, null);
            case 4:
                String[] a7 = C13193p.m4437a("_status", "_status", "_status");
                Object[] a8 = C13193p.m4438a(2, 1, 3);
                C13193p.EnumC13194a aVar7 = C13193p.EnumC13194a.EQUAL_TO;
                C13193p.EnumC13194a aVar8 = C13193p.EnumC13194a.OR_EQUAL_TO;
                return C13198r.m4426a(a7, a8, C13193p.m4439a(aVar7, aVar8, aVar8), null, null);
            case 5:
                String[] a9 = C13193p.m4437a("_status", "_status", "_status");
                Object[] a10 = C13193p.m4438a(2, 1, 3);
                C13193p.EnumC13194a aVar9 = C13193p.EnumC13194a.EQUAL_TO;
                C13193p.EnumC13194a aVar10 = C13193p.EnumC13194a.OR_EQUAL_TO;
                return C13182n.m4456a(a9, a10, C13193p.m4439a(aVar9, aVar10, aVar10), null, null);
            case 6:
                String[] a11 = C13193p.m4437a("_status", "_status", "_status");
                Object[] a12 = C13193p.m4438a(2, 1, 3);
                C13193p.EnumC13194a aVar11 = C13193p.EnumC13194a.EQUAL_TO;
                C13193p.EnumC13194a aVar12 = C13193p.EnumC13194a.OR_EQUAL_TO;
                return C13057d.m4685a(a11, a12, C13193p.m4439a(aVar11, aVar12, aVar12), null, null);
            case 7:
                String[] a13 = C13193p.m4437a("_status", "_status", "_status");
                Object[] a14 = C13193p.m4438a(2, 1, 3);
                C13193p.EnumC13194a aVar13 = C13193p.EnumC13194a.EQUAL_TO;
                C13193p.EnumC13194a aVar14 = C13193p.EnumC13194a.OR_EQUAL_TO;
                return C13057d.m4679b(a13, a14, C13193p.m4439a(aVar13, aVar14, aVar14), null, null);
            default:
                return new ArrayList();
        }
    }

    /* renamed from: a */
    public static JSONObject m3803a(List<BlockListRealmObject> list, long j) {
        JSONException e;
        JSONException e2;
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        String str = "pref_category_block";
        String str2 = "pref_block_other_ddd";
        JSONObject jSONObject2 = jSONObject;
        JSONArray jSONArray2 = jSONArray;
        String str3 = "version";
        String str4 = C13032a.f29464f;
        String str5 = C13032a.f29462d;
        String str6 = LogsGroupRealmObject.UPDATETIME;
        if (list != null) {
            str = "pref_category_block";
            str2 = "pref_block_other_ddd";
            jSONObject2 = jSONObject;
            jSONArray2 = jSONArray;
            str3 = "version";
            str4 = C13032a.f29464f;
            str5 = C13032a.f29462d;
            str6 = LogsGroupRealmObject.UPDATETIME;
            if (!list.isEmpty()) {
                Iterator<BlockListRealmObject> it = list.iterator();
                while (true) {
                    str = "pref_category_block";
                    str2 = "pref_block_other_ddd";
                    jSONObject2 = jSONObject;
                    jSONArray2 = jSONArray;
                    str3 = "version";
                    str4 = C13032a.f29464f;
                    str5 = C13032a.f29462d;
                    str6 = LogsGroupRealmObject.UPDATETIME;
                    if (!it.hasNext()) {
                        break;
                    }
                    BlockListRealmObject next = it.next();
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    JSONObject jSONObject5 = new JSONObject();
                    String str7 = next.get_e164();
                    String str8 = next.get_number();
                    int intValue = next.get_type().intValue();
                    int intValue2 = next.get_ccat().intValue();
                    int intValue3 = next.get_kind().intValue();
                    String str9 = next.get_reason();
                    long j2 = next.get_createtime();
                    Long valueOf = Long.valueOf(next.get_updatetime());
                    int intValue4 = next.get_ctype().intValue();
                    try {
                        jSONObject4.put("_e164", str7);
                        jSONObject4.put("_type", intValue);
                        jSONObject5.put("_e164", str7);
                        jSONObject5.put("_number", str8);
                        jSONObject5.put("_type", intValue);
                        jSONObject5.put("_kind", intValue3);
                        jSONObject5.put("_reason", str9);
                        jSONObject5.put("_createtime", Long.valueOf(j2));
                        jSONObject5.put("_updatetime", valueOf);
                        JSONObject jSONObject6 = new JSONObject();
                        jSONObject6.put("_ctype", intValue4);
                        jSONObject6.put("_ccat", intValue2);
                        jSONObject3.put(Person.KEY_KEY, jSONObject4);
                        try {
                            jSONObject3.put(C13032a.f29462d, jSONObject5);
                            try {
                                jSONObject3.put(C13032a.f29464f, jSONObject6);
                                try {
                                    jSONObject3.put(LogsGroupRealmObject.UPDATETIME, valueOf.longValue() / 1000);
                                    try {
                                        jSONObject3.put("version", C14017g4.m2807q());
                                    } catch (JSONException e3) {
                                        e2 = e3;
                                    }
                                } catch (JSONException e4) {
                                    e2 = e4;
                                }
                            } catch (JSONException e5) {
                                e2 = e5;
                            }
                            try {
                                jSONArray.put(jSONObject3);
                            } catch (JSONException e6) {
                                e2 = e6;
                                C13973d4.m2952a(e2);
                            }
                        } catch (JSONException e7) {
                            e2 = e7;
                        }
                    } catch (JSONException e8) {
                        e2 = e8;
                    }
                }
            }
        }
        if (C14017g4.m2835A()) {
            try {
                JSONObject jSONObject7 = new JSONObject();
                JSONObject jSONObject8 = new JSONObject();
                JSONObject jSONObject9 = new JSONObject();
                jSONObject8.put("_e164", "");
                jSONObject8.put("_type", 1000);
                if (C13915b3.m3067a(str)) {
                    jSONObject9.put(str, C12998a.m4832k().m4844d());
                }
                if (C13915b3.m3067a(str2)) {
                    jSONObject9.put(str2, C13915b3.m3062a(str2, false));
                }
                C12944k.m4950b(jSONObject9, "prefs_block_specific_ddd");
                jSONObject7.put(str5, jSONObject9);
                jSONObject7.put(Person.KEY_KEY, jSONObject8);
                jSONObject7.put(str4, new JSONObject());
                jSONObject7.put(str6, System.currentTimeMillis() / 1000);
                jSONObject7.put(str3, C14017g4.m2807q());
                if (jSONObject9.length() > 0) {
                    jSONObject9.put("_kind", 4);
                    try {
                        jSONObject9.put(str6, j);
                        jSONArray2.put(jSONObject7);
                    } catch (JSONException e9) {
                        e = e9;
                        C14080m2.m2612a((Throwable) e);
                        jSONObject2.put("sync_time", j);
                        jSONObject2.put("data", jSONArray2);
                        return jSONObject2;
                    }
                }
            } catch (JSONException e10) {
                e = e10;
            }
        }
        try {
            jSONObject2.put("sync_time", j);
            jSONObject2.put("data", jSONArray2);
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static Observable<List<RealmObject>> m3823a(int i, Scheduler scheduler) {
        List<? extends RealmObject> a = m3825a(i);
        if (a != null && a.size() != 0) {
            return Observable.from(a).buffer(f30577b).zipWith(Observable.interval(600L, TimeUnit.MILLISECONDS, scheduler), new C13627b()).subscribeOn(scheduler);
        }
        m3813a(MyApplication.m29013o(), i, a);
        return Observable.empty();
    }

    /* renamed from: a */
    public static void m3822a(Context context) {
        AccountManager accountManager;
        Account[] accountsByType;
        if ((context == null || ContextCompat.checkSelfPermission(context, "android.permission.GET_ACCOUNTS") == 0) && (accountsByType = (accountManager = AccountManager.get(context)).getAccountsByType("gogolook.whoscall")) != null && accountsByType.length > 0) {
            for (Account account : accountsByType) {
                accountManager.removeAccount(account, null, null);
            }
        }
    }

    /* renamed from: a */
    public static void m3821a(Context context, int i) {
        m3799b(i, Schedulers.computation()).doAfterTerminate(new C13630d()).forEach(new C13628c(context));
    }

    /* renamed from: a */
    public static void m3820a(Context context, int i, String str, int i2, String str2, String str3, int i3, int i4, DataUserReport.Source source) {
        str2 = "";
        if (i == 5 || i == 7 || i == 4) {
            str = "";
        }
        long currentTimeMillis = System.currentTimeMillis();
        C13032a.m4753a(new BlockListRealmObject(-1L, str2, str, Integer.valueOf(i), Integer.valueOf(i2), str3, Integer.valueOf(i3), Integer.valueOf(i4), currentTimeMillis, currentTimeMillis, 1));
        if (!C14217x3.m2160b(str) && i == 1) {
            C11521c.m9359a((String) null, str2, i2 == 3 || i2 == 2);
            new DataUserReport(str2, str, null, null, source).m28468a(true).m28457f();
        }
        m3821a(context, 2);
    }

    /* renamed from: a */
    public static void m3819a(Context context, int i, String str, int i2, String str2, String str3, int i3, DataUserReport.Source source) {
        m3820a(context, i, str, i2, str2, str3, i3, 0, source);
    }

    /* renamed from: a */
    public static void m3818a(Context context, int i, String str, String str2, int i2, String str3, int i3, int i4, DataUserReport.Source source) {
        if (str2 != null) {
            if (i == 5 || i == 7 || i == 4) {
                str2 = "";
            }
            String[] a = C13193p.m4437a("_e164", "_type");
            boolean z = false;
            Object[] a2 = C13193p.m4438a(str2, Integer.valueOf(i));
            C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
            List<BlockListRealmObject> a3 = C13032a.m4748a(a, a2, C13193p.m4439a(aVar, aVar), null, null);
            if (a3 != null && a3.size() > 0) {
                BlockListRealmObject blockListRealmObject = a3.get(0);
                if (str3 != null) {
                    blockListRealmObject.set_reason(str3);
                }
                blockListRealmObject.set_kind(Integer.valueOf(i2));
                if (i3 != 0) {
                    blockListRealmObject.set_ctype(Integer.valueOf(i3));
                }
                if (str != null) {
                    blockListRealmObject.set_number(str);
                }
                blockListRealmObject.set_ccat(Integer.valueOf(i4));
                blockListRealmObject.set_updatetime(System.currentTimeMillis());
                blockListRealmObject.set_status(3);
                C13032a.m4753a(blockListRealmObject);
            }
            if (!C14217x3.m2160b(str2) && i == 1) {
                if (i2 == 3 || i2 == 2) {
                    z = true;
                }
                C11521c.m9359a((String) null, str, z);
                new DataUserReport(str, str2, null, null, source).m28468a(true).m28457f();
            }
            m3821a(context, 2);
            C14289m.m1893a(str2);
        }
    }

    /* renamed from: a */
    public static void m3817a(Context context, int i, String str, String str2, int i2, String str3, int i3, DataUserReport.Source source) {
        m3818a(context, i, str, str2, i2, str3, i3, 0, source);
    }

    /* renamed from: a */
    public static void m3816a(Context context, int i, String str, String str2, int i2, String str3, DataUserReport.Source source) {
        m3818a(context, i, str, str2, i2, str3, 0, 0, source);
    }

    /* renamed from: a */
    public static void m3815a(Context context, int i, String str, String str2, DataUserReport.Source source) {
        m3814a(context, i, str, str2, true, source);
    }

    /* renamed from: a */
    public static void m3814a(Context context, int i, String str, String str2, boolean z, DataUserReport.Source source) {
        if (str2 != null) {
            synchronized (f30576a) {
                long currentTimeMillis = System.currentTimeMillis();
                List<BlockListRealmObject> a = C13032a.m4748a(C13193p.m4437a("_e164", "_type"), C13193p.m4438a(str2, Integer.valueOf(i)), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && a.size() > 0) {
                    for (BlockListRealmObject blockListRealmObject : a) {
                        blockListRealmObject.set_kind(-1);
                        blockListRealmObject.set_updatetime(currentTimeMillis);
                        blockListRealmObject.set_status(2);
                    }
                    C13032a.m4750a(a);
                }
                if (z) {
                    List<MySpamRealmObject> a2 = C13175m.m4470a(C13193p.m4437a("_e164"), C13193p.m4438a(str2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a2 != null && !a2.isEmpty()) {
                        for (MySpamRealmObject mySpamRealmObject : a2) {
                            mySpamRealmObject.set_deleted(1);
                            mySpamRealmObject.set_updatetime(currentTimeMillis);
                            mySpamRealmObject.set_status(2);
                        }
                        C13175m.m4472a(a2);
                    }
                    C11052i.m10328e().m10344a(str2);
                    C14037j3.m2731a().mo2704a(new C14020h1(true));
                    C14037j3.m2731a().mo2704a(new C14194v1());
                    C14037j3.m2731a().mo2704a(new C14089n1());
                }
            }
            if (!C14217x3.m2160b(str2)) {
                C11521c.m9359a((String) null, str, false);
                DataUserReport dataUserReport = new DataUserReport(str, str2, null, null, source);
                if (z) {
                    dataUserReport.m28469a("", 0);
                }
                if (i == 1) {
                    dataUserReport.m28468a(false);
                }
                dataUserReport.m28457f();
            }
            m3821a(context, 2);
        }
    }

    /* renamed from: a */
    public static void m3813a(Context context, int i, List<? extends RealmObject> list) {
        C14150s2.m2355a(context).m2346a(new C13631e(i, list), new C13632f(context), new C13633g(), new C13634h());
        C14174u.m2287q().removeMessages(0);
    }

    /* renamed from: a */
    public static void m3812a(Context context, String str) {
        m3806a(context, str, false);
        C14037j3.m2731a().mo2704a(new C14186u0());
    }

    /* renamed from: a */
    public static void m3811a(Context context, String str, Long l) {
        if (str != null) {
            synchronized (f30576a) {
                long currentTimeMillis = System.currentTimeMillis();
                List<NoteRealmObject> a = C13182n.m4456a(C13193p.m4437a("_e164", "_createtime"), C13193p.m4438a(str, l), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && !a.isEmpty()) {
                    for (NoteRealmObject noteRealmObject : a) {
                        noteRealmObject.set_content("");
                        noteRealmObject.set_updatetime(currentTimeMillis);
                        noteRealmObject.set_status(2);
                    }
                    C13182n.m4458a(a);
                }
            }
            m3821a(context, 5);
        }
    }

    /* renamed from: a */
    public static void m3810a(Context context, String str, Long l, String str2) {
        if (str != null) {
            synchronized (f30576a) {
                long currentTimeMillis = System.currentTimeMillis();
                List<NoteRealmObject> a = C13182n.m4456a(C13193p.m4437a("_e164", "_createtime"), C13193p.m4438a(str, l), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && !a.isEmpty()) {
                    for (NoteRealmObject noteRealmObject : a) {
                        noteRealmObject.set_content(str2);
                        noteRealmObject.set_updatetime(currentTimeMillis);
                        noteRealmObject.set_status(3);
                    }
                    C13182n.m4458a(a);
                }
            }
            m3821a(context, 5);
        }
    }

    /* renamed from: a */
    public static void m3809a(Context context, String str, String str2) {
        m3796b(context, str, str2);
        C14037j3.m2731a().mo2704a(new C14193v0());
    }

    /* renamed from: a */
    public static void m3808a(Context context, String str, String str2, int i, int i2) {
        if (str != null) {
            synchronized (f30576a) {
                List<MySpamRealmObject> a = C13175m.m4470a(C13193p.m4437a("_e164"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && !a.isEmpty()) {
                    for (MySpamRealmObject mySpamRealmObject : a) {
                        mySpamRealmObject.set_reason(str2);
                        mySpamRealmObject.set_ctype(Integer.valueOf(i != 0 ? i : -1));
                        mySpamRealmObject.set_ccat(Integer.valueOf(i2));
                        mySpamRealmObject.set_deleted(0);
                        mySpamRealmObject.set_updatetime(System.currentTimeMillis());
                        mySpamRealmObject.set_status(3);
                    }
                    C13175m.m4472a(a);
                }
                List<BlockListRealmObject> a2 = C13032a.m4748a(C13193p.m4437a("_e164", "_type", "_status"), C13193p.m4438a(str, 1, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
                if (a2 != null && !a2.isEmpty()) {
                    for (BlockListRealmObject blockListRealmObject : a2) {
                        blockListRealmObject.set_reason(str2);
                        blockListRealmObject.set_ccat(Integer.valueOf(i2));
                        blockListRealmObject.set_status(3);
                    }
                    C13032a.m4750a(a2);
                }
            }
            m3821a(context, 1);
        }
    }

    /* renamed from: a */
    public static void m3807a(Context context, String str, String str2, String str3, int i, int i2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (i == 0) {
            i = -1;
        }
        C13175m.m4474a(new MySpamRealmObject(-1L, str2, str, str3, Integer.valueOf(i), Integer.valueOf(i2), 0, currentTimeMillis, currentTimeMillis, 1, -1));
        String[] a = C13193p.m4437a("_e164", "_type", "_status");
        Object[] a2 = C13193p.m4438a(str, 1, 2);
        C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
        List<BlockListRealmObject> a3 = C13032a.m4748a(a, a2, C13193p.m4439a(aVar, aVar, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
        if (a3 != null && !a3.isEmpty()) {
            for (BlockListRealmObject blockListRealmObject : a3) {
                blockListRealmObject.set_reason(str3);
                blockListRealmObject.set_ccat(Integer.valueOf(i2));
                blockListRealmObject.set_status(3);
            }
            C13032a.m4750a(a3);
        }
        m3821a(context, 1);
    }

    /* renamed from: a */
    public static void m3806a(Context context, String str, boolean z) {
        if (str != null) {
            synchronized (f30576a) {
                long currentTimeMillis = System.currentTimeMillis();
                List<FavoriteGroupRealmObject> a = C13057d.m4685a(C13193p.m4437a("_name"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && !a.isEmpty()) {
                    for (FavoriteGroupRealmObject favoriteGroupRealmObject : a) {
                        favoriteGroupRealmObject.set_parentid(FavoriteGroupRealmObject.PARENDID_DELETED);
                        favoriteGroupRealmObject.set_updatetime(currentTimeMillis);
                        favoriteGroupRealmObject.set_status(2);
                        if (z) {
                            favoriteGroupRealmObject.setFavoriteListRealmObjects(null);
                        }
                    }
                    C13057d.m4688a(a);
                }
            }
            m3797b(context, str);
        }
    }

    /* renamed from: a */
    public static void m3805a(Context context, List<C12943j> list, String str, String str2, DataUserReport.Source source) {
        long currentTimeMillis = System.currentTimeMillis();
        int size = list.size();
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            C12943j jVar = list.get(i);
            synchronized (f30576a) {
                try {
                    List<BlockListRealmObject> a = C13032a.m4748a(C13193p.m4437a("id"), C13193p.m4438a(Long.valueOf(Long.parseLong(jVar.f29296b))), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                    if (a != null) {
                        for (BlockListRealmObject blockListRealmObject : a) {
                            blockListRealmObject.set_kind(-1);
                            blockListRealmObject.set_updatetime(currentTimeMillis);
                            blockListRealmObject.set_status(2);
                        }
                        C13032a.m4750a(a);
                    }
                } catch (NumberFormatException e) {
                    C13973d4.m2952a(e);
                }
                List<MySpamRealmObject> a2 = C13175m.m4470a(C13193p.m4437a("_e164"), C13193p.m4438a(str2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                z = z;
                if (a2 != null) {
                    z = z;
                    if (!a2.isEmpty()) {
                        for (MySpamRealmObject mySpamRealmObject : a2) {
                            mySpamRealmObject.set_deleted(1);
                            mySpamRealmObject.set_updatetime(currentTimeMillis);
                            mySpamRealmObject.set_status(2);
                        }
                        C13175m.m4472a(a2);
                        z = true;
                    }
                }
            }
            z2 = z2;
            if (!C14217x3.m2160b(str2)) {
                z2 = z2;
                if (jVar.f29297c == 1) {
                    z2 = true;
                }
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            C11521c.m9359a((String) null, str, false);
            DataUserReport dataUserReport = new DataUserReport(str, str2, null, null, source);
            if (z) {
                dataUserReport.m28469a("", 0);
            }
            if (z2) {
                dataUserReport.m28468a(false);
            }
            dataUserReport.m28457f();
            C11052i.m10328e().m10344a(str2);
            C14037j3.m2731a().mo2704a(new C14020h1(true));
            C14037j3.m2731a().mo2704a(new C14194v1());
            C14037j3.m2731a().mo2704a(new C14089n1());
        }
        m3821a(context, 2);
    }

    /* renamed from: a */
    public static void m3804a(String str, String str2) {
        m3795b(str, str2);
        C14037j3.m2731a().mo2704a(new C14193v0());
    }

    /* renamed from: a */
    public static void m3801a(@Nullable JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    if (jSONArray.getJSONObject(i).getJSONObject(C13032a.f29462d).optInt("_type") == 1000 && C14017g4.m2835A()) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject.has("pref_category_block")) {
                            C12998a.m4832k().m4839f(jSONObject.getString("pref_category_block"));
                        }
                        if (jSONObject.has("pref_block_other_ddd")) {
                            C13915b3.m3055b("pref_block_other_ddd", jSONObject.getBoolean("pref_block_other_ddd"));
                        }
                        C12944k.m4955a(jSONObject, "prefs_block_specific_ddd");
                        C12944k.m4947d().m4953b();
                    }
                }
            } catch (JSONException e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: a */
    public static final boolean m3802a(@NonNull Map<String, Integer> map) {
        Context o;
        if (map == null || map.size() == 0 || (o = MyApplication.m29013o()) == null) {
            return false;
        }
        for (String str : map.keySet()) {
            String a = C14099o3.m2510n().m2546a(map.get(str).intValue());
            if (!TextUtils.isEmpty(a)) {
                if (C14132r.m2395d(a)) {
                    m3775h(o, a);
                }
                m3786d(a, str);
            }
        }
        C14037j3.m2731a().mo2704a(new C14186u0());
        return true;
    }

    /* renamed from: b */
    public static JSONObject m3800b(int i, List<? extends RealmObject> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            switch (i) {
                case 1:
                    jSONObject.put("spam", m3782e((List<MySpamRealmObject>) list, C13915b3.m3065a("syncmanager.sync_time_spam", 0L) / 1000));
                    break;
                case 2:
                    jSONObject.put("block", m3803a((List<BlockListRealmObject>) list, C13915b3.m3065a("syncmanager.sync_time_block", 0L) / 1000));
                    break;
                case 3:
                    jSONObject.put("block_exception", m3776g((List<WhiteListRealmObject>) list, C13915b3.m3065a("syncmanager.sync_time_white_list", 0L) / 1000));
                    break;
                case 4:
                    jSONObject.put("mytag", m3779f((List<TagRealmObject>) list, C13915b3.m3065a("syncmanager.sync_time_tag", 0L) / 1000));
                    break;
                case 5:
                    jSONObject.put("note", m3785d((List<NoteRealmObject>) list, C13915b3.m3065a("syncmanager.sync_time_note", 0L) / 1000));
                    break;
                case 6:
                    jSONObject.put("favorite_group", m3794b((List<FavoriteGroupRealmObject>) list, C13915b3.m3065a("syncmanager.sync_time_favorite_group", 0L) / 1000));
                    break;
                case 7:
                    jSONObject.put("favorite_list", m3789c((List<FavoriteListRealmObject>) list, C13915b3.m3065a("syncmanager.sync_time_favorite_list", 0L) / 1000));
                    break;
            }
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static JSONObject m3794b(List<FavoriteGroupRealmObject> list, long j) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (FavoriteGroupRealmObject favoriteGroupRealmObject : list) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                String str = favoriteGroupRealmObject.get_parentid();
                String valueOf = String.valueOf(favoriteGroupRealmObject.get_label_id());
                String valueOf2 = String.valueOf(favoriteGroupRealmObject.get_pinned());
                String str2 = favoriteGroupRealmObject.get_name();
                long j2 = favoriteGroupRealmObject.get_createtime();
                long j3 = favoriteGroupRealmObject.get_updatetime();
                try {
                    jSONObject3.put("_name", str2);
                    jSONObject4.put("_parentid", str);
                    jSONObject4.put(FavoriteGroupRealmObject.LABELID, valueOf);
                    jSONObject4.put(FavoriteGroupRealmObject.PINNED, valueOf2);
                    jSONObject4.put("_name", str2);
                    jSONObject4.put("_createtime", j2);
                    jSONObject4.put("_updatetime", j3);
                    jSONObject2.put(Person.KEY_KEY, jSONObject3);
                    jSONObject2.put(C13032a.f29462d, jSONObject4);
                    jSONObject2.put(LogsGroupRealmObject.UPDATETIME, j3 / 1000);
                    jSONObject2.put("version", C14017g4.m2807q());
                    jSONArray.put(jSONObject2);
                } catch (JSONException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
        try {
            jSONObject.put("sync_time", j);
            jSONObject.put("data", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static Observable<Integer> m3799b(int i, Scheduler scheduler) {
        ArrayList arrayList = new ArrayList();
        if (i == 0) {
            arrayList.add(4);
            arrayList.add(2);
            arrayList.add(3);
            arrayList.add(1);
            arrayList.add(6);
            arrayList.add(7);
            arrayList.add(5);
        } else {
            arrayList.add(Integer.valueOf(i));
        }
        f30577b = (int) C13640c.m3745d().m3748b("sync_request_maximum_size");
        return Observable.from(arrayList).zipWith(Observable.interval(2L, TimeUnit.SECONDS, scheduler), new C13626a());
    }

    /* renamed from: b */
    public static void m3798b(Context context) {
        boolean n = C14217x3.m2121n(context);
        if (C14137r4.m2372f() && ((n && C13915b3.m3045e("syncSettings").equals("on_wifi_only")) || C13915b3.m3045e("syncSettings").equals(DebugKt.DEBUG_PROPERTY_VALUE_ON))) {
            if (System.currentTimeMillis() - C13915b3.m3065a("syncmanager.sync_time", 0L) > AdUtils.ONE_DAY) {
                m3821a(context, 0);
            }
        }
        if (n) {
            C11052i.m10353a(context.getContentResolver());
        }
    }

    /* renamed from: b */
    public static void m3797b(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        if (str != null) {
            synchronized (f30576a) {
                List<FavoriteListRealmObject> b = C13057d.m4679b(C13193p.m4437a("_parentid"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (b != null && !b.isEmpty()) {
                    for (FavoriteListRealmObject favoriteListRealmObject : b) {
                        favoriteListRealmObject.set_source(-1);
                        favoriteListRealmObject.set_updatetime(currentTimeMillis);
                        favoriteListRealmObject.set_status(2);
                    }
                    C13057d.m4681b(b);
                }
            }
        }
    }

    /* renamed from: b */
    public static void m3796b(Context context, String str, String str2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!(str == null || str2 == null)) {
            synchronized (f30576a) {
                List<FavoriteListRealmObject> b = C13057d.m4679b(C13193p.m4437a("_e164", "_parentid"), C13193p.m4438a(str2, str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (b != null && !b.isEmpty()) {
                    for (FavoriteListRealmObject favoriteListRealmObject : b) {
                        favoriteListRealmObject.set_source(-1);
                        favoriteListRealmObject.set_updatetime(currentTimeMillis);
                        favoriteListRealmObject.set_status(2);
                    }
                    C13057d.m4681b(b);
                    C13057d.m4689a(str, null, b.get(0));
                }
            }
        }
    }

    /* renamed from: b */
    public static void m3795b(String str, String str2) {
        synchronized (f30576a) {
            long currentTimeMillis = System.currentTimeMillis();
            FavoriteListRealmObject favoriteListRealmObject = new FavoriteListRealmObject(-1L, str2, str, 0, 0, 0, currentTimeMillis, currentTimeMillis, 1, -1);
            C13057d.m4696a(favoriteListRealmObject);
            C13057d.m4689a(null, str, favoriteListRealmObject);
        }
    }

    /* renamed from: b */
    public static void m3793b(@Nullable JSONArray jSONArray) {
        JSONObject jSONObject;
        if (jSONArray != null) {
            try {
                if (C14017g4.m2835A()) {
                    int i = 0;
                    while (true) {
                        jSONObject = null;
                        if (i >= jSONArray.length()) {
                            break;
                        }
                        jSONObject = (JSONObject) jSONArray.get(i);
                        if (jSONObject.getJSONObject(Person.KEY_KEY).getInt("_type") == 1000) {
                            break;
                        }
                        i++;
                    }
                    if (jSONObject != null) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(C13032a.f29462d);
                        if (jSONObject2.has("pref_category_block")) {
                            C12998a.m4832k().m4839f(jSONObject2.getString("pref_category_block"));
                        }
                        if (jSONObject2.has("pref_block_other_ddd")) {
                            C13915b3.m3055b("pref_block_other_ddd", jSONObject2.getBoolean("pref_block_other_ddd"));
                        }
                        C12944k.m4955a(jSONObject2, "prefs_block_specific_ddd");
                        C14037j3.m2731a().mo2704a(new C14116p0());
                    }
                }
            } catch (JSONException e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: c */
    public static JSONObject m3789c(List<FavoriteListRealmObject> list, long j) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (FavoriteListRealmObject favoriteListRealmObject : list) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                String str = favoriteListRealmObject.get_parentid();
                String str2 = favoriteListRealmObject.get_e164();
                int intValue = favoriteListRealmObject.get_source().intValue();
                long j2 = favoriteListRealmObject.get_createtime();
                long j3 = favoriteListRealmObject.get_updatetime();
                try {
                    jSONObject3.put("_parentid", str);
                    jSONObject3.put("_e164", str2);
                    jSONObject4.put("_parentid", str);
                    jSONObject4.put("_e164", str2);
                    jSONObject4.put(FavoriteListRealmObject.SOURCE, intValue);
                    jSONObject4.put("_createtime", j2);
                    jSONObject4.put("_updatetime", j3);
                    jSONObject2.put(Person.KEY_KEY, jSONObject3);
                    jSONObject2.put(C13032a.f29462d, jSONObject4);
                    jSONObject2.put(LogsGroupRealmObject.UPDATETIME, j3 / 1000);
                    jSONObject2.put("version", C14017g4.m2807q());
                    jSONArray.put(jSONObject2);
                } catch (JSONException e) {
                    C13973d4.m2952a(e);
                }
            }
        }
        try {
            jSONObject.put("sync_time", j);
            jSONObject.put("data", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: c */
    public static void m3792c(Context context, String str) {
        if (str != null) {
            synchronized (f30576a) {
                List<MySpamRealmObject> a = C13175m.m4470a(C13193p.m4437a("_e164"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && !a.isEmpty()) {
                    for (MySpamRealmObject mySpamRealmObject : a) {
                        mySpamRealmObject.set_deleted(1);
                        mySpamRealmObject.set_updatetime(System.currentTimeMillis());
                        mySpamRealmObject.set_status(2);
                    }
                    C13175m.m4472a(a);
                }
                List<BlockListRealmObject> a2 = C13032a.m4748a(C13193p.m4437a("_e164", "_type", "_status"), C13193p.m4438a(str, 1, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
                if (a2 != null && !a2.isEmpty()) {
                    for (BlockListRealmObject blockListRealmObject : a2) {
                        blockListRealmObject.set_reason("");
                        blockListRealmObject.set_ccat(0);
                        blockListRealmObject.set_status(3);
                    }
                    C13032a.m4750a(a2);
                }
            }
            m3821a(context, 1);
        }
    }

    /* renamed from: c */
    public static void m3791c(Context context, String str, String str2) {
        synchronized (f30576a) {
            long currentTimeMillis = System.currentTimeMillis();
            C13198r.m4431a(new TagRealmObject(-1L, str, "", str2, 0, 0, 0, currentTimeMillis, currentTimeMillis, 1, 0));
        }
        m3821a(context, 4);
    }

    /* renamed from: c */
    public static void m3790c(String str, String str2) {
        m3786d(str, str2);
        C14037j3.m2731a().mo2704a(new C14193v0());
    }

    /* renamed from: d */
    public static Long m3787d(Context context, String str, String str2) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f30576a) {
            C13182n.m4460a(new NoteRealmObject(-1L, str, str2, currentTimeMillis, currentTimeMillis, 1));
        }
        m3821a(context, 5);
        return Long.valueOf(currentTimeMillis);
    }

    /* renamed from: d */
    public static JSONObject m3785d(List<NoteRealmObject> list, long j) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (NoteRealmObject noteRealmObject : list) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                String str = noteRealmObject.get_e164();
                String str2 = noteRealmObject.get_content();
                long j2 = noteRealmObject.get_createtime();
                long j3 = noteRealmObject.get_updatetime();
                try {
                    jSONObject3.put("_e164", str);
                    jSONObject3.put("_createtime", j2);
                    jSONObject4.put("_e164", str);
                    jSONObject4.put("_content", str2);
                    jSONObject4.put("_createtime", j2);
                    jSONObject4.put("_updatetime", j3);
                    jSONObject2.put(Person.KEY_KEY, jSONObject3);
                    jSONObject2.put(C13032a.f29462d, jSONObject4);
                    jSONObject2.put("version", C14017g4.m2807q());
                    jSONObject2.put(LogsGroupRealmObject.UPDATETIME, j3 / 1000);
                    jSONArray.put(jSONObject2);
                } catch (JSONException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
        try {
            jSONObject.put("sync_time", j);
            jSONObject.put("data", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: d */
    public static void m3788d(Context context, String str) {
        if (str != null) {
            synchronized (f30576a) {
                long currentTimeMillis = System.currentTimeMillis();
                List<TagRealmObject> a = C13198r.m4426a(C13193p.m4437a("_e164", "_type"), C13193p.m4438a(str, 0), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && !a.isEmpty()) {
                    for (TagRealmObject tagRealmObject : a) {
                        tagRealmObject.set_name("");
                        tagRealmObject.set_updatetime(currentTimeMillis);
                        tagRealmObject.set_status(2);
                    }
                    C13198r.m4428a(a);
                }
            }
            m3821a(context, 4);
        }
    }

    /* renamed from: d */
    public static void m3786d(String str, String str2) {
        if (!C14217x3.m2160b(str2)) {
            long currentTimeMillis = System.currentTimeMillis();
            synchronized (f30576a) {
                List<FavoriteListRealmObject> b = C13057d.m4679b(C13193p.m4437a("_e164"), C13193p.m4438a(str2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), "_createtime", Sort.DESCENDING);
                if (!C14217x3.m2173a(b)) {
                    FavoriteListRealmObject favoriteListRealmObject = b.get(0);
                    String str3 = favoriteListRealmObject.get_parentid();
                    favoriteListRealmObject.set_updatetime(currentTimeMillis);
                    favoriteListRealmObject.set_parentid(str);
                    favoriteListRealmObject.set_source(0);
                    favoriteListRealmObject.set_status(3);
                    C13057d.m4696a(favoriteListRealmObject);
                    C13057d.m4689a(str3, str, favoriteListRealmObject);
                }
            }
        }
    }

    /* renamed from: e */
    public static JSONObject m3782e(List<MySpamRealmObject> list, long j) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (MySpamRealmObject mySpamRealmObject : list) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                JSONObject jSONObject5 = new JSONObject();
                mySpamRealmObject.getId();
                String str = mySpamRealmObject.get_e164();
                String str2 = mySpamRealmObject.get_number();
                String str3 = mySpamRealmObject.get_reason();
                long j2 = mySpamRealmObject.get_createtime();
                Long valueOf = Long.valueOf(mySpamRealmObject.get_updatetime());
                int intValue = mySpamRealmObject.get_ctype().intValue();
                int intValue2 = mySpamRealmObject.get_ccat().intValue();
                int intValue3 = mySpamRealmObject.get_deleted().intValue();
                if (mySpamRealmObject.get_status().intValue() == 2) {
                    intValue3 = 1;
                }
                try {
                    jSONObject3.put("_e164", str);
                    jSONObject4.put("_e164", str);
                    jSONObject4.put("_number", str2);
                    jSONObject4.put("_reason", str3);
                    jSONObject4.put("_deleted", intValue3);
                    jSONObject4.put("_createtime", Long.valueOf(j2));
                    jSONObject4.put("_updatetime", valueOf);
                    jSONObject5.put("_ctype", intValue);
                    jSONObject5.put("_ccat", intValue2);
                    jSONObject2.put(Person.KEY_KEY, jSONObject3);
                    jSONObject2.put(C13032a.f29462d, jSONObject4);
                    jSONObject2.put(C13032a.f29464f, jSONObject5);
                    jSONObject2.put(LogsGroupRealmObject.UPDATETIME, valueOf.longValue() / 1000);
                    jSONObject2.put("version", C14017g4.m2807q());
                    jSONArray.put(jSONObject2);
                } catch (JSONException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
        try {
            jSONObject.put("sync_time", j);
            jSONObject.put("data", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: e */
    public static void m3784e(Context context, String str) {
        List<WhiteListRealmObject> a;
        long currentTimeMillis = System.currentTimeMillis();
        if (!(str == null || (a = C13217t.m4398a(C13193p.m4437a("_e164"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null)) == null)) {
            for (WhiteListRealmObject whiteListRealmObject : a) {
                whiteListRealmObject.set_updatetime(currentTimeMillis);
                whiteListRealmObject.set_deleted(1);
                whiteListRealmObject.set_status(2);
            }
            C13217t.m4400a(a);
            m3821a(context, 3);
        }
    }

    /* renamed from: e */
    public static void m3783e(Context context, String str, String str2) {
        if (str2.equals("")) {
            m3788d(context, str);
            return;
        }
        synchronized (f30576a) {
            if (C13198r.m4429a(str)) {
                m3772i(context, str, str2);
            } else {
                m3791c(context, str, str2);
            }
        }
    }

    /* renamed from: f */
    public static JSONObject m3779f(List<TagRealmObject> list, long j) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (TagRealmObject tagRealmObject : list) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                String str = tagRealmObject.get_e164();
                String str2 = tagRealmObject.get_name();
                long j2 = tagRealmObject.get_createtime();
                Long valueOf = Long.valueOf(tagRealmObject.get_updatetime());
                try {
                    jSONObject3.put("_e164", str);
                    jSONObject4.put("_e164", str);
                    jSONObject4.put("_name", str2);
                    jSONObject4.put("_createtime", Long.valueOf(j2));
                    jSONObject4.put("_updatetime", valueOf);
                    jSONObject2.put(Person.KEY_KEY, jSONObject3);
                    jSONObject2.put(C13032a.f29462d, jSONObject4);
                    jSONObject2.put("version", C14017g4.m2807q());
                    jSONObject2.put(LogsGroupRealmObject.UPDATETIME, valueOf.longValue() / 1000);
                    jSONArray.put(jSONObject2);
                } catch (JSONException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
        try {
            jSONObject.put("sync_time", j);
            jSONObject.put("data", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: f */
    public static void m3781f(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = null;
            JSONArray optJSONArray = jSONObject.optJSONObject("spam") != null ? jSONObject.getJSONObject("spam").optJSONArray("data") : null;
            JSONArray optJSONArray2 = jSONObject.optJSONObject("block_exception") != null ? jSONObject.getJSONObject("block_exception").optJSONArray("data") : null;
            JSONArray optJSONArray3 = jSONObject.optJSONObject("block") != null ? jSONObject.getJSONObject("block").optJSONArray("data") : null;
            JSONArray optJSONArray4 = jSONObject.optJSONObject("mytag") != null ? jSONObject.getJSONObject("mytag").optJSONArray("data") : null;
            JSONArray optJSONArray5 = jSONObject.optJSONObject("note") != null ? jSONObject.getJSONObject("note").optJSONArray("data") : null;
            JSONArray optJSONArray6 = jSONObject.optJSONObject("favorite_group") != null ? jSONObject.getJSONObject("favorite_group").optJSONArray("data") : null;
            if (jSONObject.optJSONObject("favorite_list") != null) {
                jSONArray = jSONObject.getJSONObject("favorite_list").optJSONArray("data");
            }
            C13032a.m4749a(optJSONArray3, new C13635i());
            C13217t.m4399a(optJSONArray2);
            C13175m.m4471a(optJSONArray);
            C13198r.m4427a(optJSONArray4);
            C13182n.m4457a(optJSONArray5);
            C13057d.m4686a(jSONArray, optJSONArray6);
            m3793b(optJSONArray3);
            m3801a(optJSONArray3);
            if (!C14217x3.m2172a(optJSONArray4) || !C14217x3.m2172a(optJSONArray5) || !C14217x3.m2172a(optJSONArray6) || !C14217x3.m2172a(jSONArray)) {
                C11052i.m10328e().m10337b();
            }
        } catch (Exception e) {
            C13973d4.m2952a(e);
        }
    }

    /* renamed from: f */
    public static void m3780f(Context context, String str, String str2) {
        m3777g(context, str, str2);
        C14037j3.m2731a().mo2704a(new C14186u0());
    }

    /* renamed from: g */
    public static JSONObject m3776g(List<WhiteListRealmObject> list, long j) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        if (list != null && !list.isEmpty()) {
            for (WhiteListRealmObject whiteListRealmObject : list) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                try {
                    jSONObject3.put("_e164", whiteListRealmObject.get_e164());
                    jSONObject4.put("_e164", whiteListRealmObject.get_e164());
                    jSONObject4.put("_deleted", whiteListRealmObject.get_status() == 2 ? 1 : whiteListRealmObject.get_deleted());
                    jSONObject4.put("_createtime", whiteListRealmObject.get_createtime());
                    jSONObject4.put("_updatetime", whiteListRealmObject.get_updatetime());
                    jSONObject2.put(Person.KEY_KEY, jSONObject3);
                    jSONObject2.put(C13032a.f29462d, jSONObject4);
                    jSONObject2.put(LogsGroupRealmObject.UPDATETIME, whiteListRealmObject.get_updatetime() / 1000);
                    jSONObject2.put("version", C14017g4.m2807q());
                    jSONArray.put(jSONObject2);
                } catch (JSONException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
        try {
            jSONObject.put("sync_time", j);
            jSONObject.put("data", jSONArray);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: g */
    public static void m3778g(Context context, String str) {
        m3775h(context, str);
        C14037j3.m2731a().mo2704a(new C14186u0());
    }

    /* renamed from: g */
    public static void m3777g(Context context, String str, String str2) {
        if (str != null) {
            boolean e = C14132r.m2393e(str);
            m3775h(context, str2);
            m3774h(context, str, str2);
            m3806a(context, str, true);
            if (e) {
                m3771j(context, str2);
            }
        }
    }

    /* renamed from: h */
    public static void m3775h(Context context, String str) {
        synchronized (f30576a) {
            long currentTimeMillis = System.currentTimeMillis();
            C13057d.m4697a(new FavoriteGroupRealmObject(-1L, str, "0", Integer.valueOf(C14099o3.m2510n().m2543a(str)), 0, currentTimeMillis, currentTimeMillis, 1, -1, null));
        }
    }

    /* renamed from: h */
    public static void m3774h(Context context, String str, String str2) {
        List<FavoriteListRealmObject> b;
        long currentTimeMillis = System.currentTimeMillis();
        if (!(str == null || str2 == null || (b = C13057d.m4679b(C13193p.m4437a("_parentid", "_status"), C13193p.m4438a(str, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null)) == null || b.isEmpty())) {
            for (FavoriteListRealmObject favoriteListRealmObject : b) {
                favoriteListRealmObject.set_parentid(str2);
                favoriteListRealmObject.set_updatetime(currentTimeMillis);
                favoriteListRealmObject.set_createtime(currentTimeMillis);
                favoriteListRealmObject.set_source(0);
                favoriteListRealmObject.set_status(1);
            }
            C13057d.m4681b(b);
            for (FavoriteListRealmObject favoriteListRealmObject2 : b) {
                C13057d.m4689a(str, str2, favoriteListRealmObject2);
            }
        }
    }

    /* renamed from: i */
    public static void m3773i(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        if (C13217t.m4402a(new WhiteListRealmObject(-1L, str, 0, currentTimeMillis, currentTimeMillis, 1, -1))) {
            m3821a(context, 3);
        }
    }

    /* renamed from: i */
    public static void m3772i(Context context, String str, String str2) {
        if (str != null) {
            synchronized (f30576a) {
                long currentTimeMillis = System.currentTimeMillis();
                List<TagRealmObject> a = C13198r.m4426a(C13193p.m4437a("_e164", "_type"), C13193p.m4438a(str, 0), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
                if (a != null && !a.isEmpty()) {
                    for (TagRealmObject tagRealmObject : a) {
                        tagRealmObject.set_name(str2);
                        tagRealmObject.set_updatetime(currentTimeMillis);
                        tagRealmObject.set_status(3);
                    }
                    C13198r.m4428a(a);
                }
            }
            m3821a(context, 4);
        }
    }

    /* renamed from: j */
    public static void m3771j(Context context, String str) {
        synchronized (f30576a) {
            long currentTimeMillis = System.currentTimeMillis();
            List<FavoriteGroupRealmObject> a = C13057d.m4685a(C13193p.m4437a(FavoriteGroupRealmObject.PINNED, "_status"), C13193p.m4438a(1, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a != null && !a.isEmpty()) {
                for (FavoriteGroupRealmObject favoriteGroupRealmObject : a) {
                    favoriteGroupRealmObject.set_pinned(0);
                    favoriteGroupRealmObject.set_updatetime(currentTimeMillis);
                    favoriteGroupRealmObject.set_status(3);
                }
                C13057d.m4688a(a);
            }
            List<FavoriteGroupRealmObject> a2 = C13057d.m4685a(C13193p.m4437a("_name", "_status"), C13193p.m4438a(str, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a2 != null && !a2.isEmpty()) {
                for (FavoriteGroupRealmObject favoriteGroupRealmObject2 : a2) {
                    favoriteGroupRealmObject2.set_pinned(1);
                    favoriteGroupRealmObject2.set_updatetime(currentTimeMillis);
                    favoriteGroupRealmObject2.set_status(3);
                }
                C13057d.m4688a(a2);
            }
        }
        C14037j3.m2731a().mo2704a(new C14186u0());
    }

    /* renamed from: k */
    public static void m3770k(Context context, String str) {
        synchronized (f30576a) {
            long currentTimeMillis = System.currentTimeMillis();
            List<FavoriteGroupRealmObject> a = C13057d.m4685a(C13193p.m4437a("_name", "_status"), C13193p.m4438a(str, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (a != null && !a.isEmpty()) {
                for (FavoriteGroupRealmObject favoriteGroupRealmObject : a) {
                    favoriteGroupRealmObject.set_pinned(0);
                    favoriteGroupRealmObject.set_updatetime(currentTimeMillis);
                    favoriteGroupRealmObject.set_status(3);
                }
                C13057d.m4688a(a);
            }
        }
        C14037j3.m2731a().mo2704a(new C14186u0());
    }

    /* renamed from: l */
    public static void m3769l(Context context, String str) {
        List<WhiteListRealmObject> a;
        long currentTimeMillis = System.currentTimeMillis();
        if (!(str == null || (a = C13217t.m4398a(C13193p.m4437a("_e164"), C13193p.m4438a(str), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null)) == null)) {
            for (WhiteListRealmObject whiteListRealmObject : a) {
                whiteListRealmObject.set_updatetime(currentTimeMillis);
                whiteListRealmObject.set_deleted(0);
                whiteListRealmObject.set_status(3);
            }
            C13217t.m4400a(a);
            m3821a(context, 3);
        }
    }
}
