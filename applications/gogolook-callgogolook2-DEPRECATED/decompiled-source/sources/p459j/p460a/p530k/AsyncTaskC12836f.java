package p459j.p460a.p530k;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import p065f.p066a.p068b.p069a.p070r.C4271e;
import p065f.p066a.p068b.p069a.p070r.C4276j;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p541n0.C13171l;
import p459j.p460a.p582w0.C14020h1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14042j4;
import p459j.p460a.p582w0.C14073m;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14289m;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.k.f */
/* loaded from: classes2-dex2jar.jar:j/a/k/f.class */
public class AsyncTaskC12836f extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public C12942i f28999a;

    /* renamed from: b */
    public int f29000b;

    /* renamed from: c */
    public C4276j f29001c;

    /* renamed from: j.a.k.f$a */
    /* loaded from: classes2-dex2jar.jar:j/a/k/f$a.class */
    public class C12837a extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ String f29002d;

        /* renamed from: j.a.k.f$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/k/f$a$a.class */
        public class C12838a implements Single.OnSubscribe<Object> {

            /* renamed from: a */
            public final /* synthetic */ String f29004a;

            /* renamed from: b */
            public final /* synthetic */ NumberInfo f29005b;

            public C12838a(String str, NumberInfo numberInfo) {
                this.f29004a = str;
                this.f29005b = numberInfo;
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Object> singleSubscriber) {
                String a = C14042j4.m2727a(C12837a.this.f29002d);
                C14289m.m1890a(this.f29004a, C12837a.this.f29002d, this.f29005b.m28383M(), C14217x3.m2133i(MyApplication.m29013o(), C12837a.this.f29002d), this.f29005b.m28381O() > 0, this.f29005b.m28393C(), !TextUtils.isEmpty(a), a, AsyncTaskC12836f.this.f28999a.f29291c);
                singleSubscriber.onSuccess(null);
            }
        }

        public C12837a(String str) {
            this.f29002d = str;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (numberInfo.m28296s0()) {
                Single.create(new C12838a(str, numberInfo)).subscribeOn(Schedulers.m0io()).subscribe(Actions.empty(), C14081m3.m2611a());
            }
        }
    }

    public AsyncTaskC12836f(Context context, int i, C4276j jVar, C12942i iVar) {
        this.f28999a = iVar;
        this.f29000b = i;
        this.f29001c = jVar;
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        long currentTimeMillis = System.currentTimeMillis();
        C4271e d = this.f29001c.m29149d();
        String e = (d == null || TextUtils.isEmpty(d.m29155e())) ? "" : d.m29155e();
        String l = C14108o4.m2474l(e);
        C4271e f = this.f29001c.m29147f();
        String obj = f != null ? f.toString() : null;
        int i = this.f29000b;
        C12942i iVar = this.f28999a;
        C13041b.m4726a(new BlockLogRealmObject(-1L, e, l, obj, 2, i, currentTimeMillis, currentTimeMillis, 1, iVar.f29289a, iVar.f29290b));
        C14073m.m2633a(1);
        C14092n3.m2583b("block_history_newest_name", l);
        C13171l.m4479a(new MmsBlockLogRealmObject(C13041b.m4720c(), new String(this.f29001c.m29151b()), Long.valueOf(this.f29001c.m29148e()), Long.valueOf(this.f29001c.m29150c() * 1000), f != null ? Integer.valueOf(f.m29156d()) : null, d != null ? Integer.valueOf(d.m29156d()) : null));
        C11052i.m10328e().m10340a(e, new C12837a(l), 0, EnumC11047e.Other);
        return null;
    }

    /* renamed from: a */
    public void onPostExecute(Void r4) {
        try {
            C14037j3.m2731a().mo2704a(new C14020h1(true));
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        super.onPostExecute(r4);
    }
}
