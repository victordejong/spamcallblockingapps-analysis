package p459j.p460a.p461a0;

import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.myspam.MySpamRealmObject;
import gogolook.callgogolook2.realm.obj.note.NoteRealmObject;
import gogolook.callgogolook2.realm.obj.tag.TagRealmObject;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import p459j.p460a.p461a0.AbstractC11043c;
import p459j.p460a.p541n0.C13175m;
import p459j.p460a.p541n0.C13182n;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p564s.C13598x;
import p626l.C14979k;
import p626l.C14989s;
import p626l.p632u.C15029u;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.AbstractC15078m;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0096D¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/loader/CustomizedInfoLoader;", "Lgogolook/callgogolook2/loader/INumberInfoLoader;", "e164", "", "listener", "Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;", "(Ljava/lang/String;Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;)V", "getListener", "()Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;", "setListener", "(Lgogolook/callgogolook2/loader/INumberInfoLoader$OnLoadListener;)V", "timeoutMillis", "", "getTimeoutMillis", "()J", "load", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.a0.a */
/* loaded from: classes2-dex2jar.jar:j/a/a0/a.class */
public final class C11038a implements AbstractC11043c {

    /* renamed from: a */
    public final long f24829a = 5000;

    /* renamed from: b */
    public final String f24830b;

    /* renamed from: c */
    public AbstractC11043c.AbstractC11044a f24831c;

    @AbstractC15070f(m473c = "gogolook/callgogolook2/loader/CustomizedInfoLoader$load$1", m472f = "CustomizedInfoLoader.kt", m471l = {28, 30}, m470m = "invokeSuspend")
    /* renamed from: j.a.a0.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/a$a.class */
    public static final class C11039a extends AbstractC15078m implements AbstractC15122p<CoroutineScope, AbstractC15044d<? super C14989s>, Object> {

        /* renamed from: a */
        public CoroutineScope f24832a;

        /* renamed from: b */
        public int f24833b;

        public C11039a(AbstractC15044d dVar) {
            super(2, dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final AbstractC15044d<C14989s> create(Object obj, AbstractC15044d<?> dVar) {
            C15149k.m377b(dVar, "completion");
            C11039a aVar = new C11039a(dVar);
            aVar.f24832a = (CoroutineScope) obj;
            return aVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(CoroutineScope coroutineScope, AbstractC15044d<? super C14989s> dVar) {
            return ((C11039a) create(coroutineScope, dVar)).invokeSuspend(C14989s.f33022a);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            C14989s sVar;
            Object a = C15064c.m478a();
            int i = this.f24833b;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else if (obj instanceof C14979k.C14981b) {
                    throw ((C14979k.C14981b) obj).f33014a;
                }
            } else if (!(obj instanceof C14979k.C14981b)) {
                long a2 = C13598x.m3860g().m3868a(C11038a.class);
                this.f24833b = 1;
                if (DelayKt.delay(a2, this) == a) {
                    return a;
                }
            } else {
                throw ((C14979k.C14981b) obj).f33014a;
            }
            AbstractC11043c.AbstractC11044a listener = C11038a.this.getListener();
            if (listener != null) {
                NumberInfo b = C13598x.m3860g().m3865b(C11038a.class);
                C15149k.m383a((Object) b, "FakeDataManager.getInsta…edInfoLoader::class.java)");
                listener.mo10314a(b);
                sVar = C14989s.f33022a;
            } else {
                sVar = null;
            }
            return sVar;
        }
    }

    public C11038a(String str, AbstractC11043c.AbstractC11044a aVar) {
        C15149k.m377b(str, "e164");
        this.f24830b = str;
        this.f24831c = aVar;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    /* renamed from: a */
    public long mo10308a() {
        return this.f24829a;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    /* renamed from: a */
    public void mo10306a(AbstractC11043c.AbstractC11044a aVar) {
        this.f24831c = aVar;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    public AbstractC11043c.AbstractC11044a getListener() {
        return this.f24831c;
    }

    @Override // p459j.p460a.p461a0.AbstractC11043c
    public void load() {
        TagRealmObject tagRealmObject;
        MySpamRealmObject mySpamRealmObject;
        AbstractC11043c.AbstractC11044a listener = getListener();
        if (listener != null) {
            listener.onStart();
        }
        C13565v g = C13565v.m3921g();
        C15149k.m383a((Object) g, "DevelopMode.getInstance()");
        if (!g.m23335b() || !CallStats.m28533i()) {
            NumberInfo numberInfo = new NumberInfo();
            List<MySpamRealmObject> a = C13175m.m4470a(C13193p.m4437a("_e164", "_status"), C13193p.m4438a(this.f24830b, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (!(a == null || (mySpamRealmObject = (MySpamRealmObject) C15029u.m523e((List<? extends Object>) a)) == null)) {
                NumberInfo.Whoscall whoscall = numberInfo.whoscall;
                String str = mySpamRealmObject.get_reason();
                Integer num = mySpamRealmObject.get_ccat();
                if (num != null) {
                    whoscall.mySpam = new NumberInfo.Whoscall.Spam(str, num.intValue(), mySpamRealmObject.get_updatetime() < 0 ? System.currentTimeMillis() : mySpamRealmObject.get_updatetime());
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            String[] a2 = C13193p.m4437a("_e164", "_type", "_status");
            Object[] a3 = C13193p.m4438a(this.f24830b, 0, 2);
            C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
            List<TagRealmObject> a4 = C13198r.m4426a(a2, a3, C13193p.m4439a(aVar, aVar, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
            if (!(a4 == null || (tagRealmObject = (TagRealmObject) C15029u.m523e((List<? extends Object>) a4)) == null)) {
                numberInfo.whoscall.myTag = new NumberInfo.Whoscall.Tag(tagRealmObject.get_name(), tagRealmObject.get_updatetime());
            }
            if (numberInfo.whoscall.myTag == null) {
                numberInfo.m28341d();
                List<NoteRealmObject> a5 = C13182n.m4456a(C13193p.m4437a("_e164", "_status"), C13193p.m4438a(this.f24830b, 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
                if (a5 != null) {
                    for (NoteRealmObject noteRealmObject : a5) {
                        numberInfo.m28359a(noteRealmObject.get_content(), noteRealmObject.get_createtime(), noteRealmObject.get_updatetime());
                    }
                }
            }
            AbstractC11043c.AbstractC11044a listener2 = getListener();
            if (listener2 != null) {
                listener2.mo10314a(numberInfo);
                return;
            }
            return;
        }
        BuildersKt__BuildersKt.runBlocking$default(null, new C11039a(null), 1, null);
    }
}
