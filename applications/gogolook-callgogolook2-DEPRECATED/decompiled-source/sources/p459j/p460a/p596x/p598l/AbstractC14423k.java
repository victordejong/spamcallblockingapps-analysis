package p459j.p460a.p596x.p598l;

import android.content.Context;
import androidx.annotation.UiThread;
import kotlin.Metadata;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.p593y4.C14321a;
import p459j.p460a.p596x.C14376j;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b&\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0017J\b\u0010\u0011\u001a\u00020\u0006H&J\b\u0010\u0012\u001a\u00020\bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/intro/registration/RegistrationHelper;", "Lgogolook/callgogolook2/intro/registration/IRegistrationHelper;", "view", "Lgogolook/callgogolook2/intro/registration/IRegistrationView;", "(Lgogolook/callgogolook2/intro/registration/IRegistrationView;)V", "oAuthData", "Lgogolook/callgogolook2/intro/registration/OAuthData;", "handleAuthException", "", "throwable", "", "handleAuthResult", "context", "Landroid/content/Context;", "authData", "resultCode", "", "initializeAuthData", "registerAccount", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.x.l.k */
/* loaded from: classes2-dex2jar.jar:j/a/x/l/k.class */
public abstract class AbstractC14423k implements AbstractC14418f {

    /* renamed from: a */
    public C14422j f32267a;

    /* renamed from: b */
    public final AbstractC14419g f32268b;

    /* renamed from: j.a.x.l.k$a */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/k$a.class */
    public static final class C14424a<T> implements Single.OnSubscribe<Integer> {
        public C14424a() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Integer> singleSubscriber) {
            AbstractC14423k kVar = AbstractC14423k.this;
            kVar.f32267a = kVar.mo1367b();
            singleSubscriber.onSuccess(Integer.valueOf(C14321a.m1581a(AbstractC14423k.m1370a(AbstractC14423k.this))));
        }
    }

    /* renamed from: j.a.x.l.k$b */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/k$b.class */
    public static final class C14425b<T> implements Action1<Integer> {
        public C14425b() {
        }

        /* renamed from: a */
        public final void call(Integer num) {
            AbstractC14423k kVar = AbstractC14423k.this;
            Context context = kVar.f32268b.getContext();
            C14422j a = AbstractC14423k.m1370a(AbstractC14423k.this);
            C15149k.m383a((Object) num, "resultCode");
            kVar.mo1371a(context, a, num.intValue());
            AbstractC14423k.this.f32268b.mo1380a();
        }
    }

    /* renamed from: j.a.x.l.k$c */
    /* loaded from: classes2-dex2jar.jar:j/a/x/l/k$c.class */
    public static final class C14426c<T> implements Action1<Throwable> {
        public C14426c() {
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC14423k kVar = AbstractC14423k.this;
            C15149k.m383a((Object) th, "it");
            kVar.mo1368a(th);
            AbstractC14423k.this.f32268b.mo1380a();
        }
    }

    public AbstractC14423k(AbstractC14419g gVar) {
        C15149k.m377b(gVar, "view");
        this.f32268b = gVar;
    }

    /* renamed from: a */
    public static final /* synthetic */ C14422j m1370a(AbstractC14423k kVar) {
        C14422j jVar = kVar.f32267a;
        if (jVar != null) {
            return jVar;
        }
        C15149k.m373d("oAuthData");
        throw null;
    }

    @Override // p459j.p460a.p596x.p598l.AbstractC14418f
    /* renamed from: a */
    public void mo1372a() {
        this.f32268b.mo1379b();
        Single.create(new C14424a()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14425b(), new C14426c());
    }

    @UiThread
    /* renamed from: a */
    public void mo1371a(Context context, C14422j jVar, int i) {
        C15149k.m377b(context, "context");
        C15149k.m377b(jVar, "authData");
        if (i == 200) {
            C14376j.m1462a(context, jVar.m1375c(), jVar.m1376b());
        } else if (i != 403) {
            C14080m2.m2612a((Throwable) new C14408b(i));
        } else {
            C14092n3.m2583b("userNumber", "");
            C13915b3.m3061a("is_owner_of_verified_number");
            C14080m2.m2612a((Throwable) new C14408b(i));
        }
    }

    /* renamed from: a */
    public abstract void mo1368a(Throwable th);

    /* renamed from: b */
    public abstract C14422j mo1367b();
}
