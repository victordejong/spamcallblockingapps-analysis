package p459j.p460a.p530k;

import android.content.Context;
import android.text.TextUtils;
import gogolook.callgogolook2.R$string;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p081h.p160h.p179e.p180a.p184j.C6367b;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p613z0.DialogC14628h;
@Deprecated
/* renamed from: j.a.k.b */
/* loaded from: classes2-dex2jar.jar:j/a/k/b.class */
public class AsyncTaskC12828b extends AbstractAsyncTaskC12818a {

    /* renamed from: l */
    public Context f28969l;

    /* renamed from: m */
    public String f28970m;

    /* renamed from: n */
    public String f28971n;

    /* renamed from: o */
    public String f28972o;

    /* renamed from: p */
    public DialogC14628h f28973p;

    public AsyncTaskC12828b(Context context, String str) {
        super(context, true, C14206w4.m2225a((int) R$string.commit_waiting));
        this.f28969l = context;
    }

    @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
    /* renamed from: a */
    public C12378a.C12380b doInBackground(Void... voidArr) {
        C12378a.C12380b bVar;
        Exception e;
        int a;
        if (!C14217x3.m2137h(this.f28969l)) {
            m5205a(true);
            return null;
        }
        try {
            C6367b a2 = C6367b.m22958a("whoscall", C14017g4.m2810n(), 2, this.f28970m, this.f28971n);
            if (!TextUtils.isEmpty(this.f28972o)) {
                a2.m22959a("fb_email", this.f28972o);
            }
            a = C6364a.m22987a(a2);
            bVar = new C12378a.C12380b();
        } catch (Exception e2) {
            e = e2;
            bVar = null;
        }
        try {
            bVar.f27921b = a;
            bVar = bVar;
            if (bVar.f27921b == -200) {
                m5205a(true);
                return null;
            }
        } catch (Exception e3) {
            e = e3;
            C14080m2.m2612a((Throwable) e);
            this.f28955j = e;
            return bVar;
        }
        return bVar;
    }

    @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
    /* renamed from: a */
    public C12378a mo2365a() throws Exception {
        return null;
    }

    /* renamed from: a */
    public void m5201a(String str, String str2, String str3) {
        this.f28970m = str;
        this.f28971n = str2;
        this.f28973p = new DialogC14628h(this.f28969l, (int) R$string.commit_waiting);
        this.f28973p.setCanceledOnTouchOutside(false);
        this.f28973p.setCancelable(true);
        this.f28973p.show();
        this.f28972o = str3;
        execute(new Void[0]);
    }

    @Override // p459j.p460a.p530k.AbstractAsyncTaskC12818a
    /* renamed from: b */
    public boolean mo2364b(C12378a.C12380b bVar) {
        if (bVar != null) {
            int i = bVar.f27921b;
            if (i == 200) {
                C14376j.m1462a(this.f28969l, 2, this.f28970m);
                return true;
            } else if (i == 403) {
                C14092n3.m2583b("userNumber", "");
                C13915b3.m3061a("is_owner_of_verified_number");
                return false;
            }
        }
        C14217x3.m2194a(this.f28973p);
        return false;
    }
}
