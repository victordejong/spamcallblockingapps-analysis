package p299y8;

import com.raizlabs.android.dbflow.config.FlowManager;
import java.util.ArrayList;
import java.util.List;
import p034c9.AbstractC0859f;
import p034c9.C0854a;
import p034c9.C0860g;
import p267v8.C4655b;
import p267v8.EnumC4656c;
import p278w8.AbstractC4787n;
import p278w8.C4776g;
import p278w8.C4788o;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
/* renamed from: y8.a */
/* loaded from: classes2-dex2jar.jar:y8/a.class */
public class C5015a<TModel> extends AbstractC5016b {

    /* renamed from: a */
    public final Class<TModel> f15270a;

    /* renamed from: b */
    public C4655b f15271b;

    /* renamed from: c */
    public List<C4655b> f15272c;

    /* renamed from: d */
    public List<String> f15273d;

    public C5015a(Class<TModel> cls) {
        this.f15270a = cls;
    }

    @Override // p299y8.AbstractC5016b, p299y8.AbstractC5017c
    /* renamed from: a */
    public void mo135a() {
        this.f15271b = null;
        this.f15272c = null;
        this.f15273d = null;
    }

    @Override // p299y8.AbstractC5017c
    /* renamed from: b */
    public final void mo134b(AbstractC0859f abstractC0859f) {
        if (this.f15271b == null) {
            C4655b c4655b = new C4655b();
            c4655b.f14350a.append((Object) "ALTER");
            c4655b.m678c();
            c4655b.f14350a.append((Object) "TABLE");
            c4655b.m678c();
            this.f15271b = c4655b;
        }
        String mo238b = this.f15271b.mo238b();
        String m3904i = FlowManager.m3904i(this.f15270a);
        if (this.f15272c != null) {
            C4791r c4791r = new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), this.f15270a), new AbstractC4787n[0]);
            c4791r.f14724h = 0;
            C0860g mo457j = c4791r.mo457j(abstractC0859f);
            if (mo457j == null) {
                return;
            }
            try {
                C4655b c4655b2 = new C4655b(mo238b);
                c4655b2.f14350a.append((Object) m3904i);
                String mo238b2 = c4655b2.mo238b();
                for (int i = 0; i < this.f15272c.size(); i++) {
                    C4655b c4655b3 = this.f15272c.get(i);
                    if (mo457j.getColumnIndex(C4655b.m674h(this.f15273d.get(i))) == -1) {
                        ((C0854a) abstractC0859f).f3147a.execSQL(mo238b2 + " ADD COLUMN " + c4655b3.mo238b());
                    }
                }
            } finally {
                mo457j.close();
            }
        }
    }

    /* renamed from: d */
    public C5015a<TModel> m136d(EnumC4656c enumC4656c, String str) {
        if (this.f15272c == null) {
            this.f15272c = new ArrayList();
            this.f15273d = new ArrayList();
        }
        C4655b c4655b = new C4655b();
        c4655b.f14350a.append((Object) C4655b.m675g(str));
        c4655b.m678c();
        c4655b.f14350a.append((Object) enumC4656c.name());
        this.f15272c.add(c4655b);
        this.f15273d.add(str);
        return this;
    }
}
