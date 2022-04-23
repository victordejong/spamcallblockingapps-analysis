package p459j.p460a.p530k;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.view.View;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.UserProfile;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14150s2;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14628h;
import p459j.p460a.p613z0.p617p.C14687h;
@Deprecated
/* renamed from: j.a.k.a */
/* loaded from: classes2-dex2jar.jar:j/a/k/a.class */
public abstract class AbstractAsyncTaskC12818a extends AsyncTask<Void, Void, C12378a.C12380b> {

    /* renamed from: a */
    public String f28946a;

    /* renamed from: b */
    public boolean f28947b;

    /* renamed from: c */
    public boolean f28948c;

    /* renamed from: d */
    public boolean f28949d;

    /* renamed from: e */
    public Context f28950e;

    /* renamed from: f */
    public boolean f28951f;

    /* renamed from: g */
    public Dialog f28952g;

    /* renamed from: h */
    public View f28953h;

    /* renamed from: i */
    public int f28954i;

    /* renamed from: j */
    public Throwable f28955j;

    /* renamed from: k */
    public C12378a f28956k;

    /* renamed from: j.a.k.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/k/a$a.class */
    public class DialogInterface$OnClickListenerC12819a implements DialogInterface.OnClickListener {

        /* renamed from: j.a.k.a$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/k/a$a$a.class */
        public class C12820a extends Thread {
            public C12820a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (AbstractAsyncTaskC12818a.this.f28956k != null) {
                    AbstractAsyncTaskC12818a.this.f28956k.m6280a();
                    AbstractAsyncTaskC12818a.this.f28948c = true;
                }
            }
        }

        public DialogInterface$OnClickListenerC12819a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            new C12820a().start();
        }
    }

    /* renamed from: j.a.k.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/k/a$b.class */
    public class DialogInterface$OnCancelListenerC12821b implements DialogInterface.OnCancelListener {

        /* renamed from: j.a.k.a$b$a */
        /* loaded from: classes2-dex2jar.jar:j/a/k/a$b$a.class */
        public class C12822a extends Thread {
            public C12822a() {
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (AbstractAsyncTaskC12818a.this.f28956k != null) {
                    AbstractAsyncTaskC12818a.this.f28956k.m6280a();
                    AbstractAsyncTaskC12818a.this.f28948c = true;
                }
            }
        }

        public DialogInterface$OnCancelListenerC12821b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            new C12822a().start();
        }
    }

    /* renamed from: j.a.k.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/k/a$c.class */
    public class C12823c extends C14150s2.AbstractC14162j {

        /* renamed from: a */
        public final /* synthetic */ C14150s2 f28961a;

        public C12823c(C14150s2 s2Var) {
            this.f28961a = s2Var;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14162j, p660rx.functions.Func0, java.util.concurrent.Callable
        public C12378a call() {
            try {
                return AbstractAsyncTaskC12818a.this.mo2365a();
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
                this.f28961a.m2337a(e);
                return null;
            }
        }
    }

    /* renamed from: j.a.k.a$d */
    /* loaded from: classes2-dex2jar.jar:j/a/k/a$d.class */
    public class C12824d extends C14150s2.AbstractC14160h {
        public C12824d() {
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14160h, p660rx.functions.Action0
        public void call() {
            AbstractAsyncTaskC12818a.this.m5204b();
        }
    }

    /* renamed from: j.a.k.a$e */
    /* loaded from: classes2-dex2jar.jar:j/a/k/a$e.class */
    public class C12825e extends C14150s2.AbstractC14159g {

        /* renamed from: a */
        public final /* synthetic */ C14150s2 f28964a;

        public C12825e(C14150s2 s2Var) {
            this.f28964a = s2Var;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14159g
        /* renamed from: a */
        public void call(C12378a.C12380b bVar) {
            try {
                AbstractAsyncTaskC12818a.this.m5202c(bVar);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
                this.f28964a.m2337a(e);
            }
        }
    }

    /* renamed from: j.a.k.a$f */
    /* loaded from: classes2-dex2jar.jar:j/a/k/a$f.class */
    public class C12826f extends C14150s2.AbstractC14158f {

        /* renamed from: a */
        public final /* synthetic */ C14150s2 f28966a;

        public C12826f(C14150s2 s2Var) {
            this.f28966a = s2Var;
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14158f
        /* renamed from: a */
        public Boolean call(C12378a.C12380b bVar) {
            try {
                return Boolean.valueOf(AbstractAsyncTaskC12818a.this.mo2364b(bVar));
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
                this.f28966a.m2337a(e);
                return false;
            }
        }
    }

    /* renamed from: j.a.k.a$g */
    /* loaded from: classes2-dex2jar.jar:j/a/k/a$g.class */
    public class C12827g extends C14150s2.AbstractC14161i {
        public C12827g() {
        }

        @Override // p459j.p460a.p582w0.C14150s2.AbstractC14161i
        /* renamed from: a */
        public void mo1057a(Context context, Throwable th, C12378a.C12380b bVar, Boolean bool, Boolean bool2) {
            AbstractAsyncTaskC12818a.this.m5210a(context, th, bVar, bool.booleanValue(), bool2.booleanValue());
        }
    }

    public AbstractAsyncTaskC12818a(Context context, boolean z, int i) {
        this(context, z, C14206w4.m2225a(i), null);
    }

    public AbstractAsyncTaskC12818a(Context context, boolean z, String str) {
        this(context, z, str, null);
    }

    public AbstractAsyncTaskC12818a(Context context, boolean z, String str, View view) {
        this.f28954i = -1;
        this.f28948c = false;
        this.f28949d = false;
        this.f28950e = context;
        this.f28946a = str;
        this.f28951f = z;
        this.f28953h = view;
    }

    /* renamed from: a */
    public static String m5211a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m5206a(String str) {
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
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    public C12378a.C12380b doInBackground(Void... voidArr) {
        C12378a.C12380b bVar = null;
        if (this.f28949d) {
            return null;
        }
        int i = this.f28954i;
        if (i > 0) {
            try {
                Thread.sleep(i);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        if (!C14217x3.m2137h(this.f28950e)) {
            this.f28947b = true;
            return null;
        }
        try {
            this.f28956k = mo2365a();
            bVar = null;
            if (0 < 2) {
                bVar = this.f28956k.m6261c();
                m5202c(bVar);
                bVar = bVar;
            }
        } catch (Exception e2) {
            C14080m2.m2612a((Throwable) e2);
            this.f28955j = e2;
        }
        return bVar;
    }

    /* renamed from: a */
    public abstract C12378a mo2365a() throws Exception;

    /* renamed from: a */
    public void m5210a(Context context, Throwable th, C12378a.C12380b bVar, boolean z, boolean z2) {
        if (!z) {
            if (bVar != null) {
                int i = bVar.f27921b;
                if (i == 631) {
                    DialogC14618f fVar = new DialogC14618f(context);
                    fVar.m998b(String.format(m5211a((int) R$string.post_dialog_err_msg_ban_word), m5206a(bVar.f27922c)));
                    fVar.m991e(R$string.post_dialog_err_msg_ok);
                    fVar.show();
                } else if (i == 632) {
                    DialogC14618f fVar2 = new DialogC14618f(context);
                    fVar2.m998b(String.format(m5211a((int) R$string.post_dialog_err_msg_black_word), m5206a(bVar.f27922c)));
                    fVar2.m991e(R$string.post_dialog_err_msg_ok);
                    fVar2.show();
                } else {
                    C14687h.m861a(context, C12378a.m6279a(i), 1).m858c();
                }
            } else if (z2) {
                C14687h.m861a(context, m5211a((int) R$string.error_code_nointernet), 1).m858c();
            } else {
                C14687h.m861a(context, C12378a.m6270a(th), 1).m858c();
            }
        }
    }

    /* renamed from: a */
    public final void onPostExecute(C12378a.C12380b bVar) {
        Dialog dialog;
        super.onPostExecute(bVar);
        if (!this.f28949d) {
            if (this.f28951f && (dialog = this.f28952g) != null && dialog.isShowing()) {
                try {
                    this.f28952g.dismiss();
                } catch (Exception e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
            boolean z = false;
            try {
                z = mo2364b(bVar);
            } catch (Exception e2) {
                C14080m2.m2612a((Throwable) e2);
                this.f28955j = e2;
            }
            if (!z) {
                m5210a(this.f28950e, this.f28955j, bVar, this.f28948c, this.f28947b);
            }
        }
    }

    /* renamed from: a */
    public void m5205a(boolean z) {
        this.f28947b = z;
    }

    /* renamed from: b */
    public void m5204b() {
    }

    /* renamed from: b */
    public abstract boolean mo2364b(C12378a.C12380b bVar) throws Exception;

    /* renamed from: c */
    public void m5203c() {
        C14150s2 a = C14150s2.m2352a(this.f28950e, this.f28951f, this.f28946a, this.f28953h);
        a.m2344a(new C12823c(a), new C12824d(), new C12825e(a), new C12826f(a), new C12827g());
    }

    /* renamed from: c */
    public void m5202c(C12378a.C12380b bVar) throws Exception {
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        if (this.f28950e != null) {
            try {
                m5204b();
                if (this.f28951f) {
                    if (this.f28953h != null) {
                        this.f28952g = new AlertDialog.Builder(this.f28950e).setView(this.f28953h).setTitle(m5211a((int) R$string.url_checking_title)).setCancelable(false).setPositiveButton(m5211a((int) R$string.cancel), new DialogInterface$OnClickListenerC12819a()).create();
                    } else {
                        this.f28952g = new DialogC14628h(this.f28950e, this.f28946a);
                        this.f28952g.setCanceledOnTouchOutside(false);
                        this.f28952g.setCancelable(true);
                        this.f28952g.setOnCancelListener(new DialogInterface$OnCancelListenerC12821b());
                    }
                    if (!(this.f28950e instanceof Activity)) {
                        this.f28952g.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
                    }
                    C13878a3.m3244a(this.f28952g);
                }
            } catch (Exception e) {
                e.printStackTrace();
                this.f28949d = true;
            }
            super.onPreExecute();
            return;
        }
        throw new RuntimeException();
    }
}
