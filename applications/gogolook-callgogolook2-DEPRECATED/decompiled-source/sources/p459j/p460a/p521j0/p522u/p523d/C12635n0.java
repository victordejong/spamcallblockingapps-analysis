package p459j.p460a.p521j0.p522u.p523d;

import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.p590x4.C14299q;
import p660rx.functions.Action1;
/* renamed from: j.a.j0.u.d.n0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/n0.class */
public class C12635n0 implements Action1<String> {

    /* renamed from: a */
    public final /* synthetic */ String f28471a;

    /* renamed from: j.a.j0.u.d.n0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/n0$a.class */
    public class HandlerC12636a extends HandlerC12947l {
        public HandlerC12636a(C12635n0 n0Var) {
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: a */
        public void mo4945a() {
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: a */
        public void mo4944a(Object obj) {
            C14299q.m1734c("CED", TextUtils.equals("0", (String) obj) ? 2.0d : 0.0d);
        }
    }

    public C12635n0(C12640p0 p0Var, String str) {
        this.f28471a = str;
    }

    /* renamed from: a */
    public void call(String str) {
        C12860e.m5132a(MyApplication.m29013o(), this.f28471a, str, false, C12640p0.class.getSimpleName(), (HandlerC12947l) new HandlerC12636a(this));
    }
}
