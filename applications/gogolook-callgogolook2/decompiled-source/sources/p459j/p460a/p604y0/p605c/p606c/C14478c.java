package p459j.p460a.p604y0.p605c.p606c;

import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13207s;
import p459j.p460a.p604y0.p605c.AbstractC14472a;
import p626l.C14989s;
import p626l.p632u.C15020l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0007\u0018�� \u00162\u00020\u0001:\u0001\u0016B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0016J&\u0010\f\u001a\u00020\u00062\u0014\u0010\t\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001e\u0010\u0011\u001a\u00020\u00062\u0014\u0010\t\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0018\u00010\nH\u0016J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000e2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0016J&\u0010\u0014\u001a\u00020\u00062\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/vas/data/local/VasLocalDataSource;", "Lgogolook/callgogolook2/vas/data/VasDataSource;", "vasRealmHelper", "Lgogolook/callgogolook2/realm/VasRealmHelper;", "(Lgogolook/callgogolook2/realm/VasRealmHelper;)V", "deleteOldMessages", "", "date", "Ljava/util/Date;", "callback", "Lgogolook/callgogolook2/vas/data/VasDataSource$VasCallback;", "", "getLastScannedVasMessages", "", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "lastScannedTime", "", "getVasMessages", "saveMessage", "message", "saveMessages", "messageList", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.c.c.c */
/* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c.class */
public final class C14478c implements AbstractC14472a {

    /* renamed from: b */
    public static C14478c f32379b;

    /* renamed from: c */
    public static final C14479a f32380c = new C14479a(null);

    /* renamed from: a */
    public final C13207s f32381a;

    /* renamed from: j.a.y0.c.c.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$a.class */
    public static final class C14479a {
        public C14479a() {
        }

        public /* synthetic */ C14479a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14478c m1256a(C13207s sVar) {
            C15149k.m377b(sVar, "vasRealmHelper");
            if (C14478c.f32379b == null) {
                synchronized (C14477b.f32378a) {
                    C14478c.f32379b = new C14478c(sVar, null);
                    C14989s sVar2 = C14989s.f33022a;
                }
            }
            C14478c cVar = C14478c.f32379b;
            if (cVar != null) {
                return cVar;
            }
            C15149k.m378b();
            throw null;
        }
    }

    /* renamed from: j.a.y0.c.c.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$b.class */
    public static final class C14480b<T> implements Single.OnSubscribe<Integer> {

        /* renamed from: b */
        public final /* synthetic */ Date f32383b;

        public C14480b(Date date) {
            this.f32383b = date;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Integer> singleSubscriber) {
            singleSubscriber.onSuccess(Integer.valueOf(C14478c.this.f32381a.m4412a(this.f32383b)));
        }
    }

    /* renamed from: j.a.y0.c.c.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$c.class */
    public static final class C14481c<T> implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32384a;

        public C14481c(AbstractC14472a.AbstractC14473a aVar) {
            this.f32384a = aVar;
        }

        /* renamed from: a */
        public final void call(Integer num) {
            AbstractC14472a.AbstractC14473a aVar = this.f32384a;
            if (aVar != null) {
                C15149k.m383a((Object) num, "it");
                aVar.mo1175a((AbstractC14472a.AbstractC14473a) num);
            }
        }
    }

    /* renamed from: j.a.y0.c.c.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$d.class */
    public static final class C14482d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32385a;

        public C14482d(AbstractC14472a.AbstractC14473a aVar) {
            this.f32385a = aVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC14472a.AbstractC14473a aVar = this.f32385a;
            if (aVar != null) {
                C15149k.m383a((Object) th, "it");
                aVar.mo1174a(th);
            }
        }
    }

    /* renamed from: j.a.y0.c.c.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$e.class */
    public static final class C14483e<T> implements Single.OnSubscribe<List<? extends VasMessageRealm>> {

        /* renamed from: b */
        public final /* synthetic */ long f32387b;

        public C14483e(long j) {
            this.f32387b = j;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends VasMessageRealm>> singleSubscriber) {
            singleSubscriber.onSuccess(C14478c.this.f32381a.m4415a(this.f32387b));
        }
    }

    /* renamed from: j.a.y0.c.c.c$f */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$f.class */
    public static final class C14484f<T> implements Action1<List<? extends VasMessageRealm>> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32388a;

        public C14484f(AbstractC14472a.AbstractC14473a aVar) {
            this.f32388a = aVar;
        }

        /* renamed from: a */
        public final void call(List<? extends VasMessageRealm> list) {
            AbstractC14472a.AbstractC14473a aVar = this.f32388a;
            if (aVar != null) {
                C15149k.m383a((Object) list, "it");
                aVar.mo1175a((AbstractC14472a.AbstractC14473a) list);
            }
        }
    }

    /* renamed from: j.a.y0.c.c.c$g */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$g.class */
    public static final class C14485g<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32389a;

        public C14485g(AbstractC14472a.AbstractC14473a aVar) {
            this.f32389a = aVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC14472a.AbstractC14473a aVar = this.f32389a;
            if (aVar != null) {
                C15149k.m383a((Object) th, "it");
                aVar.mo1174a(th);
            }
        }
    }

    /* renamed from: j.a.y0.c.c.c$h */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$h.class */
    public static final class C14486h<T> implements Single.OnSubscribe<List<? extends VasMessageRealm>> {
        public C14486h() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends VasMessageRealm>> singleSubscriber) {
            singleSubscriber.onSuccess(C14478c.this.f32381a.m4416a());
        }
    }

    /* renamed from: j.a.y0.c.c.c$i */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$i.class */
    public static final class C14487i<T> implements Action1<List<? extends VasMessageRealm>> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32391a;

        public C14487i(AbstractC14472a.AbstractC14473a aVar) {
            this.f32391a = aVar;
        }

        /* renamed from: a */
        public final void call(List<? extends VasMessageRealm> list) {
            AbstractC14472a.AbstractC14473a aVar = this.f32391a;
            if (aVar != null) {
                C15149k.m383a((Object) list, "it");
                aVar.mo1175a((AbstractC14472a.AbstractC14473a) list);
            }
        }
    }

    /* renamed from: j.a.y0.c.c.c$j */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$j.class */
    public static final class C14488j<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32392a;

        public C14488j(AbstractC14472a.AbstractC14473a aVar) {
            this.f32392a = aVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC14472a.AbstractC14473a aVar = this.f32392a;
            if (aVar != null) {
                C15149k.m383a((Object) th, "it");
                aVar.mo1174a(th);
            }
        }
    }

    /* renamed from: j.a.y0.c.c.c$k */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$k.class */
    public static final class C14489k<T> implements Single.OnSubscribe<Integer> {

        /* renamed from: b */
        public final /* synthetic */ List f32394b;

        public C14489k(List list) {
            this.f32394b = list;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Integer> singleSubscriber) {
            singleSubscriber.onSuccess(Integer.valueOf(C14478c.this.f32381a.m4411a(this.f32394b)));
        }
    }

    /* renamed from: j.a.y0.c.c.c$l */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$l.class */
    public static final class C14490l<T> implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32395a;

        public C14490l(AbstractC14472a.AbstractC14473a aVar) {
            this.f32395a = aVar;
        }

        /* renamed from: a */
        public final void call(Integer num) {
            AbstractC14472a.AbstractC14473a aVar = this.f32395a;
            if (aVar != null) {
                C15149k.m383a((Object) num, "it");
                aVar.mo1175a((AbstractC14472a.AbstractC14473a) num);
            }
        }
    }

    /* renamed from: j.a.y0.c.c.c$m */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/c/c$m.class */
    public static final class C14491m<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14472a.AbstractC14473a f32396a;

        public C14491m(AbstractC14472a.AbstractC14473a aVar) {
            this.f32396a = aVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC14472a.AbstractC14473a aVar = this.f32396a;
            if (aVar != null) {
                C15149k.m383a((Object) th, "it");
                aVar.mo1174a(th);
            }
        }
    }

    public C14478c(C13207s sVar) {
        this.f32381a = sVar;
    }

    public /* synthetic */ C14478c(C13207s sVar, C15145g gVar) {
        this(sVar);
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1263a(VasMessageRealm vasMessageRealm, AbstractC14472a.AbstractC14473a<Integer> aVar) {
        C15149k.m377b(vasMessageRealm, "message");
        mo1258a(C15020l.m567a(vasMessageRealm), aVar);
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1262a(AbstractC14472a.AbstractC14473a<List<VasMessageRealm>> aVar) {
        Single.create(new C14486h()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14487i(aVar), new C14488j(aVar));
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1261a(AbstractC14472a.AbstractC14473a<List<VasMessageRealm>> aVar, long j) {
        Single.create(new C14483e(j)).subscribeOn(Schedulers.m0io()).subscribe(new C14484f(aVar), new C14485g(aVar));
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1259a(Date date, AbstractC14472a.AbstractC14473a<Integer> aVar) {
        C15149k.m377b(date, "date");
        Single.create(new C14480b(date)).subscribeOn(Schedulers.m0io()).subscribe(new C14481c(aVar), new C14482d(aVar));
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1258a(List<? extends VasMessageRealm> list, AbstractC14472a.AbstractC14473a<Integer> aVar) {
        C15149k.m377b(list, "messageList");
        Single.create(new C14489k(list)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14490l(aVar), new C14491m(aVar));
    }
}
