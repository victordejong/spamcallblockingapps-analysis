package p459j.p460a.p541n0;

import android.content.Context;
import gogolook.callgogolook2.realm.module.VasMessageModule;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import gogolook.callgogolook2.vas.data.local.VasDatabase;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p604y0.p605c.p606c.C14492d;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p626l.p641z.p643d.C15162x;
import p626l.p641z.p643d.C15164z;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\bJ \u0010\u0011\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/realm/VasRealmHelper;", "", "()V", "deleteOldMessages", "", "date", "Ljava/util/Date;", "getVasMessageLastScannedList", "", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "lastTime", "", "getVasMessageList", "migrateRoomDbToRealmDb", "", "context", "Landroid/content/Context;", "saveMessages", "messageList", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.s */
/* loaded from: classes3-dex2jar.jar:j/a/n0/s.class */
public final class C13207s {

    /* renamed from: b */
    public static final C13209b f29769b = new C13209b(null);

    /* renamed from: a */
    public static final AbstractC14974f f29768a = C14975g.m662a(C13208a.f29770a);

    /* renamed from: j.a.n0.s$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$a.class */
    public static final class C13208a extends AbstractC15150l implements AbstractC15107a<RealmConfiguration> {

        /* renamed from: a */
        public static final C13208a f29770a = new C13208a();

        public C13208a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final RealmConfiguration invoke() {
            return new RealmConfiguration.Builder().name("Vas").schemaVersion(1L).modules(new VasMessageModule(), new Object[0]).encryptionKey(C6430c.m22640b(512)).build();
        }
    }

    /* renamed from: j.a.n0.s$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$b.class */
    public static final class C13209b {

        /* renamed from: a */
        public static final /* synthetic */ AbstractC14906i[] f29771a;

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C13209b.class), "configuration", "getConfiguration()Lio/realm/RealmConfiguration;");
            C15131a0.m412a(sVar);
            f29771a = new AbstractC14906i[]{sVar};
        }

        public C13209b() {
        }

        public /* synthetic */ C13209b(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final RealmConfiguration m4408a() {
            AbstractC14974f fVar = C13207s.f29768a;
            AbstractC14906i iVar = f29771a[0];
            return (RealmConfiguration) fVar.getValue();
        }
    }

    /* renamed from: j.a.n0.s$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$c.class */
    public static final class C13210c implements Realm.Transaction {

        /* renamed from: a */
        public final /* synthetic */ Date f29772a;

        /* renamed from: b */
        public final /* synthetic */ C15162x f29773b;

        public C13210c(Date date, C15162x xVar) {
            this.f29772a = date;
            this.f29773b = xVar;
        }

        @Override // io.realm.Realm.Transaction
        public final void execute(Realm realm) {
            RealmQuery lessThan;
            RealmQuery where = realm.where(VasMessageRealm.class);
            RealmResults findAll = (where == null || (lessThan = where.lessThan("time", this.f29772a.getTime())) == null) ? null : lessThan.findAll();
            if (findAll != null) {
                this.f29773b.f33150a = findAll.size();
                findAll.deleteAllFromRealm();
            }
        }
    }

    /* renamed from: j.a.n0.s$d */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$d.class */
    public static final class C13211d implements Realm.Transaction {

        /* renamed from: a */
        public final /* synthetic */ C15164z f29774a;

        /* renamed from: b */
        public final /* synthetic */ long f29775b;

        public C13211d(C15164z zVar, long j) {
            this.f29774a = zVar;
            this.f29775b = j;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List, T] */
        @Override // io.realm.Realm.Transaction
        public final void execute(Realm realm) {
            RealmQuery lessThan;
            RealmQuery sort;
            C15164z zVar = this.f29774a;
            RealmQuery where = realm.where(VasMessageRealm.class);
            zVar.f33152a = realm.copyFromRealm((where == null || (lessThan = where.lessThan("time", this.f29775b)) == null || (sort = lessThan.sort("time", Sort.DESCENDING)) == null) ? null : sort.findAll());
        }
    }

    /* renamed from: j.a.n0.s$e */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$e.class */
    public static final class C13212e implements Realm.Transaction {

        /* renamed from: a */
        public final /* synthetic */ C15164z f29776a;

        public C13212e(C15164z zVar) {
            this.f29776a = zVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.realm.Realm.Transaction
        public final void execute(Realm realm) {
            C15164z zVar = this.f29776a;
            T t = 0;
            if (realm != null) {
                RealmQuery where = realm.where(VasMessageRealm.class);
                RealmResults realmResults = null;
                if (where != null) {
                    RealmQuery sort = where.sort("time", Sort.DESCENDING);
                    realmResults = null;
                    if (sort != null) {
                        realmResults = sort.findAll();
                    }
                }
                t = realm.copyFromRealm(realmResults);
            }
            zVar.f33152a = t;
        }
    }

    /* renamed from: j.a.n0.s$f */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$f.class */
    public static final class C13213f<T> implements Single.OnSubscribe<List<? extends C14492d>> {

        /* renamed from: a */
        public final /* synthetic */ Context f29777a;

        public C13213f(Context context) {
            this.f29777a = context;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<C14492d>> singleSubscriber) {
            singleSubscriber.onSuccess(VasDatabase.f12984d.m25981a(this.f29777a).mo25980a().mo1230a());
        }
    }

    /* renamed from: j.a.n0.s$g */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$g.class */
    public static final class C13214g<T> implements Action1<List<? extends C14492d>> {

        /* renamed from: b */
        public final /* synthetic */ Context f29779b;

        public C13214g(Context context) {
            this.f29779b = context;
        }

        /* renamed from: a */
        public final void call(List<C14492d> list) {
            ArrayList arrayList = new ArrayList();
            C15149k.m383a((Object) list, "it");
            for (C14492d dVar : list) {
                arrayList.add(new VasMessageRealm(dVar));
            }
            C13207s.this.m4410a(arrayList, this.f29779b);
        }
    }

    /* renamed from: j.a.n0.s$h */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$h.class */
    public static final class C13215h<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C13215h f29780a = new C13215h();

        /* renamed from: a */
        public final void call(Throwable th) {
        }
    }

    /* renamed from: j.a.n0.s$i */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/s$i.class */
    public static final class C13216i implements Realm.Transaction {

        /* renamed from: a */
        public final /* synthetic */ List f29781a;

        public C13216i(List list) {
            this.f29781a = list;
        }

        @Override // io.realm.Realm.Transaction
        public final void execute(Realm realm) {
            if (realm != null) {
                RealmQuery where = realm.where(VasMessageRealm.class);
                Number max = where != null ? where.max("id") : null;
                long longValue = (max != null ? max.longValue() : 0L) + 1;
                for (VasMessageRealm vasMessageRealm : this.f29781a) {
                    vasMessageRealm.setId(longValue);
                    longValue++;
                }
                realm.insertOrUpdate(this.f29781a);
            }
        }
    }

    /* renamed from: a */
    public final int m4412a(Date date) {
        C15149k.m377b(date, "date");
        Realm b = C13193p.m4436b(f29769b.m4408a());
        C15162x xVar = new C15162x();
        xVar.f33150a = 0;
        if (b != null) {
            b.executeTransaction(new C13210c(date, xVar));
            b.close();
        }
        return xVar.f33150a;
    }

    /* renamed from: a */
    public final int m4411a(List<? extends VasMessageRealm> list) {
        C15149k.m377b(list, "messageList");
        return m4410a(list, null);
    }

    /* renamed from: a */
    public final int m4410a(List<? extends VasMessageRealm> list, Context context) {
        Realm b = C13193p.m4436b(f29769b.m4408a());
        if (b != null) {
            b.executeTransaction(new C13216i(list));
            b.close();
        }
        return list.size();
    }

    /* renamed from: a */
    public final List<VasMessageRealm> m4416a() {
        C15164z zVar = new C15164z();
        zVar.f33152a = null;
        Realm b = C13193p.m4436b(f29769b.m4408a());
        if (b != null) {
            b.executeTransaction(new C13212e(zVar));
            b.close();
        }
        List<VasMessageRealm> list = (List) zVar.f33152a;
        if (list == null) {
            list = new ArrayList<>();
        }
        return list;
    }

    /* renamed from: a */
    public final List<VasMessageRealm> m4415a(long j) {
        C15164z zVar = new C15164z();
        zVar.f33152a = null;
        Realm b = C13193p.m4436b(f29769b.m4408a());
        if (b != null) {
            b.executeTransaction(new C13211d(zVar, j));
            b.close();
        }
        List<VasMessageRealm> list = (List) zVar.f33152a;
        if (list == null) {
            list = new ArrayList<>();
        }
        return list;
    }

    /* renamed from: a */
    public final void m4414a(Context context) {
        C15149k.m377b(context, "context");
        Single.create(new C13213f(context)).subscribeOn(Schedulers.m0io()).subscribe(new C13214g(context), C13215h.f29780a);
    }
}
