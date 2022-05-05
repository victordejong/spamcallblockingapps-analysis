package p459j.p460a.p582w0.p590x4.p591a0;

import com.facebook.appevents.C2271g;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p582w0.C14060l2;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.x4.a0.b */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/a0/b.class */
public final class C14233b implements AbstractC14238e {

    /* renamed from: a */
    public final String f31785a;

    public C14233b(String str) {
        C15149k.m377b(str, "eventName");
        this.f31785a = str;
    }

    @Override // p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e
    /* renamed from: a */
    public void mo2087a(C14231a aVar) {
        C15149k.m377b(aVar, "eventValues");
        try {
            C2271g.m35329b(MyApplication.m29013o()).m35331a(this.f31785a, aVar.m2096e());
        } catch (ClassCastException e) {
            C14060l2.m2705a(e);
        }
    }
}
