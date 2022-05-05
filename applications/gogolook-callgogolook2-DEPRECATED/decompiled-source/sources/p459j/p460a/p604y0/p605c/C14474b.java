package p459j.p460a.p604y0.p605c;

import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p604y0.p605c.AbstractC14472a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0007\u0018�� \u00152\u00020\u0001:\u0001\u0015B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016J&\u0010\u000b\u001a\u00020\u00052\u0014\u0010\b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001e\u0010\u0010\u001a\u00020\u00052\u0014\u0010\b\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0018\u00010\tH\u0016J \u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\r2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016J&\u0010\u0013\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/vas/data/VasRepository;", "Lgogolook/callgogolook2/vas/data/VasDataSource;", "vasLocalDataSource", "(Lgogolook/callgogolook2/vas/data/VasDataSource;)V", "deleteOldMessages", "", "date", "Ljava/util/Date;", "callback", "Lgogolook/callgogolook2/vas/data/VasDataSource$VasCallback;", "", "getLastScannedVasMessages", "", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "lastScannedTime", "", "getVasMessages", "saveMessage", "message", "saveMessages", "messageList", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.c.b */
/* loaded from: classes3-dex2jar.jar:j/a/y0/c/b.class */
public final class C14474b implements AbstractC14472a {

    /* renamed from: b */
    public static C14474b f32375b;

    /* renamed from: c */
    public static final C14475a f32376c = new C14475a(null);

    /* renamed from: a */
    public final AbstractC14472a f32377a;

    /* renamed from: j.a.y0.c.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/c/b$a.class */
    public static final class C14475a {
        public C14475a() {
        }

        public /* synthetic */ C14475a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14474b m1265a(AbstractC14472a aVar) {
            C14474b bVar;
            C15149k.m377b(aVar, "vasLocalDataSource");
            C14474b bVar2 = C14474b.f32375b;
            if (bVar2 != null) {
                bVar = bVar2;
            } else {
                synchronized (C14474b.class) {
                    try {
                        C14474b bVar3 = C14474b.f32375b;
                        if (bVar3 != null) {
                            bVar = bVar3;
                        } else {
                            C14474b bVar4 = new C14474b(aVar);
                            C14474b.f32375b = bVar4;
                            bVar = bVar4;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return bVar;
        }
    }

    public C14474b(AbstractC14472a aVar) {
        C15149k.m377b(aVar, "vasLocalDataSource");
        this.f32377a = aVar;
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1263a(VasMessageRealm vasMessageRealm, AbstractC14472a.AbstractC14473a<Integer> aVar) {
        C15149k.m377b(vasMessageRealm, "message");
        this.f32377a.mo1263a(vasMessageRealm, aVar);
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1262a(AbstractC14472a.AbstractC14473a<List<VasMessageRealm>> aVar) {
        this.f32377a.mo1262a(aVar);
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1261a(AbstractC14472a.AbstractC14473a<List<VasMessageRealm>> aVar, long j) {
        this.f32377a.mo1261a(aVar, j);
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1259a(Date date, AbstractC14472a.AbstractC14473a<Integer> aVar) {
        C15149k.m377b(date, "date");
        this.f32377a.mo1259a(date, aVar);
    }

    @Override // p459j.p460a.p604y0.p605c.AbstractC14472a
    /* renamed from: a */
    public void mo1258a(List<? extends VasMessageRealm> list, AbstractC14472a.AbstractC14473a<Integer> aVar) {
        C15149k.m377b(list, "messageList");
        this.f32377a.mo1258a(list, aVar);
    }
}
