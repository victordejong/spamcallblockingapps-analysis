package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.action.Action;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.util.ConnectivityUtil;
import p459j.p460a.p474c0.AbstractC11516a;
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
/* renamed from: j.a.c0.c.g */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/g.class */
public abstract class AbstractC11528g {

    /* renamed from: a */
    public String f25754a;

    /* renamed from: b */
    public boolean f25755b;

    /* renamed from: a */
    public static final void m9265a(Action action) {
        m9259k().mo9247c().m9084a(action);
    }

    /* renamed from: a */
    public static final void m9264a(Action action, int i, long j) {
        m9259k().mo9247c().m9083a(action, i, j);
    }

    /* renamed from: k */
    public static AbstractC11528g m9259k() {
        return AbstractC11516a.m9413n().mo9403f();
    }

    /* renamed from: a */
    public abstract C11593a mo9258a();

    /* renamed from: a */
    public abstract C11594b mo9254a(Context context, C11594b.AbstractC11595a aVar);

    /* renamed from: a */
    public abstract C11596c mo9253a(Context context, C11596c.AbstractC11599c cVar, String str, int i);

    /* renamed from: a */
    public abstract C11606d mo9252a(Context context, C11606d.AbstractC11607a aVar, int i);

    /* renamed from: a */
    public abstract C11617j mo9249a(String str);

    /* renamed from: a */
    public abstract C11625l mo9250a(C11625l.AbstractC11626a aVar);

    /* renamed from: a */
    public abstract C11627m mo9257a(Context context);

    /* renamed from: a */
    public abstract C11637r mo9256a(Context context, Uri uri);

    /* renamed from: a */
    public abstract C11637r mo9255a(Context context, MessagePartData messagePartData);

    /* renamed from: a */
    public abstract void mo9251a(SQLiteDatabase sQLiteDatabase);

    /* renamed from: b */
    public abstract C11624k mo9248b();

    /* renamed from: b */
    public boolean m9263b(String str) {
        return !TextUtils.isEmpty(this.f25754a) && TextUtils.equals(this.f25754a, str);
    }

    /* renamed from: c */
    public abstract C11575b mo9247c();

    /* renamed from: c */
    public boolean m9262c(String str) {
        return m9260h() || m9263b(str);
    }

    /* renamed from: d */
    public abstract C11576c mo9246d();

    /* renamed from: d */
    public void m9261d(String str) {
        this.f25754a = str;
    }

    /* renamed from: e */
    public abstract ConnectivityUtil mo9245e();

    /* renamed from: f */
    public abstract C11534l mo9244f();

    /* renamed from: g */
    public abstract C11565v mo9243g();

    /* renamed from: h */
    public boolean m9260h() {
        return this.f25755b;
    }

    /* renamed from: i */
    public abstract void mo9242i();

    /* renamed from: j */
    public abstract void mo9241j();
}
