package p459j.p460a.p604y0.p605c.p607d;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.p074ad.AdConstant;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p604y0.C14469a;
import p459j.p460a.p604y0.p605c.AbstractC14472a;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000bH\u0002J\"\u0010\u000f\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\n2\u0006\u0010\u0012\u001a\u00020\u0013J\u001a\u0010\u0014\u001a\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\nJ\u0016\u0010\u0015\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nJ\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0003J\u0006\u0010\u0017\u001a\u00020\bJ$\u0010\u0018\u001a\u00020\b2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/vas/data/util/VasSmsHelper;", "", "()V", "SMS_COL_ADDRESS", "", "SMS_COL_BODY", "SMS_COL_DATE", "deleteOldMessages", "", "callback", "Lgogolook/callgogolook2/vas/data/VasDataSource$VasCallback;", "", "getDaysAgoTimeMil", "Ljava/util/Date;", AdConstant.KEY_DAYS, "getLastScannedVasMessages", "", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "lastScannedTime", "", "getVasMessages", "loadVasMessagesFromNativeAsync", "loadVasMessagesFromNativeSync", "manageIfNeedToDeleteOldMessages", "saveVasMessages", "vasMessages", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.c.d.a */
/* loaded from: classes3-dex2jar.jar:j/a/y0/c/d/a.class */
public final class C14501a {

    /* renamed from: d */
    public static final C14501a f32415d = new C14501a();

    /* renamed from: a */
    public static final String f32412a = "address";

    /* renamed from: b */
    public static final String f32413b = "body";

    /* renamed from: c */
    public static final String f32414c = "date";

    /* renamed from: j.a.y0.c.d.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/d/a$a.class */
    public static final class C14502a implements AbstractC14472a.AbstractC14473a<Integer> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32416a;

        public C14502a(AbstractC14472a.AbstractC14473a aVar) {
            this.f32416a = aVar;
        }

        /* renamed from: a */
        public void m1217a(int i) {
            C13915b3.m3057b("vas_last_sweep_data_time", System.currentTimeMillis());
            AbstractC14472a.AbstractC14473a aVar = this.f32416a;
            if (aVar != null) {
                aVar.mo1175a((AbstractC14472a.AbstractC14473a) Integer.valueOf(i));
            }
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1175a(Integer num) {
            m1217a(num.intValue());
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public void mo1174a(Throwable th) {
            C15149k.m377b(th, "throwable");
            AbstractC14472a.AbstractC14473a aVar = this.f32416a;
            if (aVar != null) {
                aVar.mo1174a(th);
            }
        }
    }

    /* renamed from: j.a.y0.c.d.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/d/a$b.class */
    public static final class C14503b<T> implements Single.OnSubscribe<List<? extends VasMessageRealm>> {

        /* renamed from: a */
        public static final C14503b f32417a = new C14503b();

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends VasMessageRealm>> singleSubscriber) {
            singleSubscriber.onSuccess(C14501a.f32415d.m1227a());
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "", "it", "", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "kotlin.jvm.PlatformType", NotificationCompat.CATEGORY_CALL}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.y0.c.d.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/d/a$c.class */
    public static final class C14504c<T> implements Action1<List<? extends VasMessageRealm>> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32418a;

        /* renamed from: j.a.y0.c.d.a$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/y0/c/d/a$c$a.class */
        public static final class C14505a implements AbstractC14472a.AbstractC14473a<Integer> {
            public C14505a() {
            }

            /* renamed from: a */
            public void m1214a(int i) {
                AbstractC14472a.AbstractC14473a aVar = C14504c.this.f32418a;
                if (aVar != null) {
                    aVar.mo1175a((AbstractC14472a.AbstractC14473a) Integer.valueOf(i));
                }
            }

            @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
            /* renamed from: a */
            public /* bridge */ /* synthetic */ void mo1175a(Integer num) {
                m1214a(num.intValue());
            }

            @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
            /* renamed from: a */
            public void mo1174a(Throwable th) {
                C15149k.m377b(th, "error");
                AbstractC14472a.AbstractC14473a aVar = C14504c.this.f32418a;
                if (aVar != null) {
                    aVar.mo1174a(th);
                }
            }
        }

        public C14504c(AbstractC14472a.AbstractC14473a aVar) {
            this.f32418a = aVar;
        }

        /* renamed from: a */
        public final void call(List<? extends VasMessageRealm> list) {
            C14501a aVar = C14501a.f32415d;
            C15149k.m383a((Object) list, "it");
            aVar.m1221a(list, new C14505a());
        }
    }

    /* renamed from: j.a.y0.c.d.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/d/a$d.class */
    public static final class C14506d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32420a;

        public C14506d(AbstractC14472a.AbstractC14473a aVar) {
            this.f32420a = aVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC14472a.AbstractC14473a aVar = this.f32420a;
            if (aVar != null) {
                C15149k.m383a((Object) th, "it");
                aVar.mo1174a(th);
            }
        }
    }

    /* renamed from: a */
    public final Date m1226a(int i) {
        Date date = new Date();
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTime(date);
        gregorianCalendar.add(5, -i);
        Date time = gregorianCalendar.getTime();
        C15149k.m383a((Object) time, "cal.time");
        return time;
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0214, code lost:
        if (r27 != null) goto L_0x021f;
     */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0353 A[DONT_GENERATE] */
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<gogolook.callgogolook2.realm.obj.vas.VasMessageRealm> m1227a() {
        /*
            Method dump skipped, instructions count: 876
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p604y0.p605c.p607d.C14501a.m1227a():java.util.List");
    }

    /* renamed from: a */
    public final void m1225a(AbstractC14472a.AbstractC14473a<Integer> aVar) {
        Date a = m1226a(30);
        C14469a aVar2 = C14469a.f32370a;
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        aVar2.m1271a(o).mo1259a(a, new C14502a(aVar));
    }

    /* renamed from: a */
    public final void m1224a(AbstractC14472a.AbstractC14473a<List<VasMessageRealm>> aVar, long j) {
        C15149k.m377b(aVar, "callback");
        C14469a aVar2 = C14469a.f32370a;
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        aVar2.m1271a(o).mo1261a(aVar, j);
    }

    /* renamed from: a */
    public final void m1221a(List<? extends VasMessageRealm> list, AbstractC14472a.AbstractC14473a<Integer> aVar) {
        C14469a aVar2 = C14469a.f32370a;
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        aVar2.m1271a(o).mo1258a(list, aVar);
    }

    /* renamed from: b */
    public final void m1220b() {
        if (!C13915b3.m3059b("vas_first_scan")) {
            if (System.currentTimeMillis() - C13915b3.m3049d("vas_last_sweep_data_time") >= 1209600000) {
                m1225a((AbstractC14472a.AbstractC14473a<Integer>) null);
            }
        }
    }

    /* renamed from: b */
    public final void m1219b(AbstractC14472a.AbstractC14473a<List<VasMessageRealm>> aVar) {
        C15149k.m377b(aVar, "callback");
        C14469a aVar2 = C14469a.f32370a;
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        aVar2.m1271a(o).mo1262a(aVar);
    }

    /* renamed from: c */
    public final void m1218c(AbstractC14472a.AbstractC14473a<Integer> aVar) {
        Single.create(C14503b.f32417a).subscribeOn(Schedulers.m0io()).subscribe(new C14504c(aVar), new C14506d(aVar));
    }
}
