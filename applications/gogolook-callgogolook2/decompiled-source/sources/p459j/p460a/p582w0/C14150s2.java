package p459j.p460a.p582w0;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14628h;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
import p660rx.functions.Action5;
import p660rx.functions.Func0;
import p660rx.functions.Func1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.s2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/s2.class */
public class C14150s2 {

    /* renamed from: a */
    public String f31653a;

    /* renamed from: b */
    public boolean f31654b;

    /* renamed from: c */
    public boolean f31655c;

    /* renamed from: d */
    public boolean f31656d;

    /* renamed from: e */
    public Context f31657e;

    /* renamed from: f */
    public boolean f31658f;

    /* renamed from: g */
    public Dialog f31659g;

    /* renamed from: h */
    public View f31660h;

    /* renamed from: i */
    public int f31661i = -1;

    /* renamed from: j */
    public Throwable f31662j;

    /* renamed from: k */
    public C12378a f31663k;

    /* renamed from: j.a.w0.s2$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$a.class */
    public class C14151a implements Action1<C14163k> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14158f f31664a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC14161i f31665b;

        public C14151a(AbstractC14158f fVar, AbstractC14161i iVar) {
            this.f31664a = fVar;
            this.f31665b = iVar;
        }

        /* renamed from: a */
        public void call(C14163k kVar) {
            C14150s2.this.m2351a(kVar.m2333a(), this.f31664a, this.f31665b);
        }
    }

    /* renamed from: j.a.w0.s2$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$b.class */
    public class C14152b implements Func1<C14163k, C14163k> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14162j f31667a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC14159g f31668b;

        public C14152b(AbstractC14162j jVar, AbstractC14159g gVar) {
            this.f31667a = jVar;
            this.f31668b = gVar;
        }

        /* renamed from: a */
        public C14163k call(C14163k kVar) {
            C14163k kVar2 = new C14163k(C14163k.EnumC14164a.PostExecuted);
            kVar2.m2332a(C14150s2.this.m2347a(this.f31667a, this.f31668b));
            return kVar2;
        }
    }

    /* renamed from: j.a.w0.s2$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$c.class */
    public class C14153c implements Single.OnSubscribe<C14163k> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC14160h f31670a;

        public C14153c(AbstractC14160h hVar) {
            this.f31670a = hVar;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super C14163k> singleSubscriber) {
            C14150s2.this.m2350a(this.f31670a);
            singleSubscriber.onSuccess(new C14163k(C14163k.EnumC14164a.PreExecuted));
        }
    }

    /* renamed from: j.a.w0.s2$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$d.class */
    public class DialogInterface$OnClickListenerC14154d implements DialogInterface.OnClickListener {

        /* renamed from: j.a.w0.s2$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$d$a.class */
        public class C14155a extends Thread {
            public C14155a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (C14150s2.this.f31663k != null) {
                    C14150s2.this.f31663k.m6280a();
                    C14150s2.this.f31655c = true;
                }
            }
        }

        public DialogInterface$OnClickListenerC14154d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            new C14155a().start();
        }
    }

    /* renamed from: j.a.w0.s2$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$e.class */
    public class DialogInterface$OnCancelListenerC14156e implements DialogInterface.OnCancelListener {

        /* renamed from: j.a.w0.s2$e$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$e$a.class */
        public class C14157a extends Thread {
            public C14157a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (C14150s2.this.f31663k != null) {
                    C14150s2.this.f31663k.m6280a();
                }
                C14150s2.this.f31655c = true;
            }
        }

        public DialogInterface$OnCancelListenerC14156e() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            new C14157a().start();
        }
    }

    /* renamed from: j.a.w0.s2$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$f.class */
    public static abstract class AbstractC14158f implements Func1<C12378a.C12380b, Boolean> {
        /* renamed from: a */
        public abstract Boolean mo1058a(C12378a.C12380b bVar);
    }

    /* renamed from: j.a.w0.s2$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$g.class */
    public static abstract class AbstractC14159g implements Action1<C12378a.C12380b> {
        /* renamed from: a */
        public abstract void mo1059a(C12378a.C12380b bVar);
    }

    /* renamed from: j.a.w0.s2$h */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$h.class */
    public static abstract class AbstractC14160h implements Action0 {
        @Override // p660rx.functions.Action0
        public abstract void call();
    }

    /* renamed from: j.a.w0.s2$i */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$i.class */
    public static abstract class AbstractC14161i implements Action5<Context, Throwable, C12378a.C12380b, Boolean, Boolean> {
        /* renamed from: a */
        public abstract void mo1057a(Context context, Throwable th, C12378a.C12380b bVar, Boolean bool, Boolean bool2);
    }

    /* renamed from: j.a.w0.s2$j */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$j.class */
    public static abstract class AbstractC14162j implements Func0<C12378a> {
        @Override // p660rx.functions.Func0, java.util.concurrent.Callable
        public abstract C12378a call();
    }

    /* renamed from: j.a.w0.s2$k */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$k.class */
    public static class C14163k {

        /* renamed from: a */
        public C12378a.C12380b f31676a;

        /* renamed from: j.a.w0.s2$k$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/s2$k$a.class */
        public enum EnumC14164a {
            PreExecuted,
            PostExecuted
        }

        public C14163k(EnumC14164a aVar) {
        }

        /* renamed from: a */
        public C12378a.C12380b m2333a() {
            return this.f31676a;
        }

        /* renamed from: a */
        public void m2332a(C12378a.C12380b bVar) {
            this.f31676a = bVar;
        }
    }

    /* renamed from: a */
    public static C14150s2 m2355a(Context context) {
        return m2352a(context, false, "", (View) null);
    }

    /* renamed from: a */
    public static C14150s2 m2353a(Context context, boolean z, String str) {
        return m2352a(context, z, str, (View) null);
    }

    /* renamed from: a */
    public static C14150s2 m2352a(Context context, boolean z, String str, View view) {
        C14150s2 s2Var = new C14150s2();
        s2Var.f31655c = false;
        s2Var.f31656d = false;
        s2Var.f31657e = context;
        s2Var.f31653a = str;
        s2Var.f31658f = z;
        s2Var.f31660h = view;
        return s2Var;
    }

    /* renamed from: a */
    public static String m2356a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m2338a(String str) {
        try {
            JSONArray jSONArray = new JSONObject(new JSONObject(str).getString("message")).getJSONArray("banned_words");
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < jSONArray.length(); i++) {
                sb.append(jSONArray.get(i));
                if (i != jSONArray.length() - 1) {
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                }
            }
            return sb.toString();
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
            return "";
        }
    }

    /* renamed from: a */
    public static void m2354a(Context context, Throwable th, C12378a.C12380b bVar, boolean z, boolean z2) {
        if (!z) {
            if (bVar != null) {
                int i = bVar.f27921b;
                if (i == 631) {
                    DialogC14618f fVar = new DialogC14618f(context);
                    fVar.m998b(String.format(m2356a((int) R$string.post_dialog_err_msg_ban_word), m2338a(bVar.f27922c)));
                    fVar.m991e(R$string.post_dialog_err_msg_ok);
                    fVar.show();
                } else if (i == 632) {
                    DialogC14618f fVar2 = new DialogC14618f(context);
                    fVar2.m998b(String.format(m2356a((int) R$string.post_dialog_err_msg_black_word), m2338a(bVar.f27922c)));
                    fVar2.m991e(R$string.post_dialog_err_msg_ok);
                    fVar2.show();
                } else {
                    C14687h.m861a(context, C12378a.m6279a(i), 1).m858c();
                }
            } else if (z2) {
                C14687h.m861a(context, m2356a((int) R$string.error_code_nointernet), 1).m858c();
            } else {
                C14687h.m861a(context, C12378a.m6270a(th), 1).m858c();
            }
        }
    }

    /* renamed from: a */
    public final C12378a.C12380b m2347a(AbstractC14162j jVar, AbstractC14159g gVar) {
        if (this.f31656d || this.f31655c) {
            return null;
        }
        if (!C14217x3.m2137h(this.f31657e)) {
            this.f31654b = true;
            return null;
        }
        C12378a.C12380b bVar = null;
        try {
            this.f31663k = jVar.call();
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            this.f31662j = e;
        }
        if (this.f31663k == null) {
            return null;
        }
        bVar = null;
        if (0 < 2) {
            bVar = this.f31663k.m6261c();
            bVar = bVar;
            if (gVar != null) {
                gVar.mo1059a(bVar);
                bVar = bVar;
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public final void m2351a(C12378a.C12380b bVar, AbstractC14158f fVar, AbstractC14161i iVar) {
        Dialog dialog;
        if (!this.f31656d) {
            if (this.f31658f && (dialog = this.f31659g) != null && dialog.isShowing()) {
                try {
                    this.f31659g.dismiss();
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
            boolean z = false;
            try {
                z = fVar.mo1058a(bVar).booleanValue();
            } catch (Exception e2) {
                C14080m2.m2612a((Throwable) e2);
                this.f31662j = e2;
            }
            if (z) {
                return;
            }
            if (iVar != null) {
                iVar.mo1057a(this.f31657e, this.f31662j, bVar, Boolean.valueOf(this.f31655c), Boolean.valueOf(this.f31654b));
            } else {
                m2354a(this.f31657e, this.f31662j, bVar, this.f31655c, this.f31654b);
            }
        }
    }

    /* renamed from: a */
    public final void m2350a(AbstractC14160h hVar) {
        if (this.f31657e != null) {
            if (hVar != null) {
                try {
                    hVar.call();
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                    this.f31656d = true;
                    return;
                }
            }
            if (this.f31658f) {
                if (this.f31660h != null) {
                    this.f31659g = new AlertDialog.Builder(this.f31657e).setView(this.f31660h).setTitle(m2356a((int) R$string.url_checking_title)).setCancelable(false).setPositiveButton(m2356a((int) R$string.cancel), new DialogInterface$OnClickListenerC14154d()).create();
                } else {
                    this.f31659g = new DialogC14628h(this.f31657e, this.f31653a);
                    this.f31659g.setCanceledOnTouchOutside(false);
                    this.f31659g.setCancelable(true);
                    this.f31659g.setOnCancelListener(new DialogInterface$OnCancelListenerC14156e());
                }
                if (!(this.f31657e instanceof Activity)) {
                    this.f31659g.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
                }
                C13878a3.m3244a(this.f31659g);
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    /* renamed from: a */
    public void m2349a(@NonNull AbstractC14162j jVar, @NonNull AbstractC14158f fVar) {
        m2344a(jVar, (AbstractC14160h) null, (AbstractC14159g) null, fVar, (AbstractC14161i) null);
    }

    /* renamed from: a */
    public void m2348a(@NonNull AbstractC14162j jVar, @NonNull AbstractC14158f fVar, @Nullable AbstractC14161i iVar) {
        m2344a(jVar, (AbstractC14160h) null, (AbstractC14159g) null, fVar, iVar);
    }

    /* renamed from: a */
    public void m2346a(@NonNull AbstractC14162j jVar, @Nullable AbstractC14159g gVar, @NonNull AbstractC14158f fVar, @Nullable AbstractC14161i iVar) {
        m2344a(jVar, (AbstractC14160h) null, gVar, fVar, iVar);
    }

    /* renamed from: a */
    public void m2345a(@NonNull AbstractC14162j jVar, @Nullable AbstractC14160h hVar, @NonNull AbstractC14158f fVar) {
        m2344a(jVar, hVar, (AbstractC14159g) null, fVar, (AbstractC14161i) null);
    }

    /* renamed from: a */
    public void m2344a(@NonNull AbstractC14162j jVar, @Nullable AbstractC14160h hVar, @Nullable AbstractC14159g gVar, @NonNull AbstractC14158f fVar, @Nullable AbstractC14161i iVar) {
        Single.create(new C14153c(hVar)).subscribeOn(AndroidSchedulers.mainThread()).observeOn(Schedulers.m0io()).delay(this.f31661i, TimeUnit.MILLISECONDS).map(new C14152b(jVar, gVar)).toObservable().observeOn(AndroidSchedulers.mainThread()).subscribe(new C14151a(fVar, iVar), C14081m3.m2611a());
    }

    /* renamed from: a */
    public void m2337a(Throwable th) {
        this.f31662j = th;
    }
}
