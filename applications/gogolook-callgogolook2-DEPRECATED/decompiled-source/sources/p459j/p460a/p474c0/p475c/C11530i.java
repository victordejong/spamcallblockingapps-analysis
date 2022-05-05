package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.telephony.SubscriptionManager;
import gogolook.callgogolook2.messaging.datamodel.action.FixupMessageStatusOnStartupAction;
import gogolook.callgogolook2.messaging.datamodel.action.ProcessPendingMessagesAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.util.ConnectivityUtil;
import p459j.p460a.p474c0.p475c.p476w.C11575b;
import p459j.p460a.p474c0.p475c.p476w.C11576c;
import p459j.p460a.p474c0.p475c.p478y.C11593a;
import p459j.p460a.p474c0.p475c.p478y.C11594b;
import p459j.p460a.p474c0.p475c.p478y.C11596c;
import p459j.p460a.p474c0.p475c.p478y.C11606d;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p475c.p478y.C11624k;
import p459j.p460a.p474c0.p475c.p478y.C11625l;
import p459j.p460a.p474c0.p475c.p478y.C11627m;
import p459j.p460a.p474c0.p475c.p478y.C11637r;
import p459j.p460a.p474c0.p488f.C11828f;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.c.i */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/i.class */
public class C11530i extends AbstractC11528g {

    /* renamed from: c */
    public final Context f25756c;

    /* renamed from: f */
    public final C11532j f25759f;

    /* renamed from: g */
    public final ConnectivityUtil f25760g;

    /* renamed from: d */
    public final C11575b f25757d = new C11575b();

    /* renamed from: e */
    public final C11576c f25758e = new C11576c();

    /* renamed from: h */
    public final C11565v f25761h = new C11565v();

    /* renamed from: j.a.c0.c.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/i$a.class */
    public class C11531a extends SubscriptionManager.OnSubscriptionsChangedListener {
        public C11531a(C11530i iVar) {
        }

        @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
        public void onSubscriptionsChanged() {
            C11828f.m8172u();
            C11560u.m9140h();
        }
    }

    public C11530i(Context context) {
        this.f25756c = context;
        this.f25759f = C11532j.m9238a(context);
        this.f25760g = new ConnectivityUtil(context);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11593a mo9258a() {
        return new C11593a();
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11594b mo9254a(Context context, C11594b.AbstractC11595a aVar) {
        return new C11594b(context, aVar);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11596c mo9253a(Context context, C11596c.AbstractC11599c cVar, String str, int i) {
        return new C11596c(context, cVar, str, i);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11606d mo9252a(Context context, C11606d.AbstractC11607a aVar, int i) {
        return new C11606d(context, aVar, i);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11617j mo9249a(String str) {
        return new C11617j(str);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11625l mo9250a(C11625l.AbstractC11626a aVar) {
        return new C11625l(aVar);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11627m mo9257a(Context context) {
        return new C11627m(context);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11637r mo9256a(Context context, Uri uri) {
        return new C11637r(context, uri);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public C11637r mo9255a(Context context, MessagePartData messagePartData) {
        return new C11637r(context, messagePartData);
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: a */
    public void mo9251a(SQLiteDatabase sQLiteDatabase) {
        C12153d0.m6981e("MessagingApp", "Rebuilt databases: reseting related state");
        C11565v.m9120f();
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: b */
    public C11624k mo9248b() {
        return new C11624k();
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: c */
    public C11575b mo9247c() {
        return this.f25757d;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: d */
    public C11576c mo9246d() {
        return this.f25758e;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: e */
    public ConnectivityUtil mo9245e() {
        return this.f25760g;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: f */
    public C11534l mo9244f() {
        C12151d.m7002b();
        return this.f25759f.m9240a();
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: g */
    public C11565v mo9243g() {
        return this.f25761h;
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: i */
    public void mo9242i() {
        this.f25761h.m9128b(this.f25756c);
        C11560u.m9142f();
    }

    @Override // p459j.p460a.p474c0.p475c.AbstractC11528g
    /* renamed from: j */
    public void mo9241j() {
        FixupMessageStatusOnStartupAction.m27714z();
        ProcessPendingMessagesAction.m27687C();
        C11565v.m9122e();
        if (C14017g4.m2804t()) {
            AbstractC12181l0.m6886t().m6888r().mo6884a(new C11531a(this));
        }
    }
}
