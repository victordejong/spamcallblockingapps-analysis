package p459j.p460a.p474c0.p475c.p478y;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import gogolook.callgogolook2.R$plurals;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import java.util.List;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11646d;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11672r;
import p459j.p460a.p474c0.p475c.p479z.C11647d0;
import p459j.p460a.p474c0.p475c.p479z.C11649e0;
import p459j.p460a.p474c0.p475c.p479z.C11651f0;
import p459j.p460a.p474c0.p475c.p479z.C11675t;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12155e;
/* renamed from: j.a.c0.c.y.r */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/r.class */
public class C11637r extends AbstractC11631n implements C11675t.AbstractC11679d<C11649e0> {

    /* renamed from: h */
    public static final Uri f26129h = C12155e.m6976a((Uri) null, (CharSequence) null, (String) null, (String) null);

    /* renamed from: c */
    public final Context f26130c;

    /* renamed from: d */
    public final Uri f26131d;

    /* renamed from: e */
    public String f26132e;

    /* renamed from: f */
    public final C11589c<AbstractC11646d<C11649e0>> f26133f;

    /* renamed from: g */
    public C11649e0 f26134g;

    public C11637r(Context context, Uri uri) {
        this.f26133f = AbstractC11590d.m9040a((Object) this);
        this.f26130c = context;
        this.f26132e = this.f26130c.getString(R$string.loading_vcard);
        this.f26131d = uri;
    }

    public C11637r(Context context, MessagePartData messagePartData) {
        this(context, messagePartData.m27567q());
        C12151d.m6999b(messagePartData.m27585A());
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo7924a(AbstractC11672r<C11649e0> rVar, C11649e0 e0Var, boolean z) {
        C12151d.m6999b(this.f26134g == null);
        this.f26133f.m9043d();
        this.f26132e = this.f26130c.getString(R$string.vcard_tap_hint);
        this.f26134g = e0Var;
        this.f26134g.m8617b();
        m8758m();
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11675t.AbstractC11679d
    /* renamed from: a */
    public void mo7923a(AbstractC11672r<C11649e0> rVar, Exception exc) {
        this.f26133f.m9043d();
        this.f26132e = this.f26130c.getString(R$string.failed_loading_vcard);
        m8759a(exc);
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: a */
    public void mo8736a(String str) {
        super.mo8736a(str);
        this.f26133f.mo9038b((C11589c<AbstractC11646d<C11649e0>>) new C11647d0(this.f26131d).m8658a(this.f26130c, this));
        C11675t.m8650b().m8648c(this.f26133f.mo9033b());
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: c */
    public void mo8735c(String str) {
        super.mo8735c(str);
        this.f26133f.m9042e();
        C11649e0 e0Var = this.f26134g;
        if (e0Var != null) {
            e0Var.m8606l();
            this.f26134g = null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11637r)) {
            return false;
        }
        return this.f26131d.equals(((C11637r) obj).f26131d);
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
    /* renamed from: f */
    public Uri mo7643f() {
        if (m8732p()) {
            List<C11651f0> n = this.f26134g.m8717n();
            C12151d.m6999b(n.size() > 0);
            if (n.size() == 1) {
                return n.get(0).m8711b();
            }
        }
        return f26129h;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
    /* renamed from: g */
    public Intent mo7642g() {
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
    /* renamed from: h */
    public long mo7641h() {
        return -1L;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
    /* renamed from: i */
    public String mo7640i() {
        return this.f26132e;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
    /* renamed from: j */
    public String mo7639j() {
        if (!m8732p()) {
            return null;
        }
        List<C11651f0> n = this.f26134g.m8717n();
        C12151d.m6999b(n.size() > 0);
        return n.size() == 1 ? n.get(0).m8707e() : this.f26130c.getResources().getQuantityString(R$plurals.vcard_multiple_display_name, n.size(), Integer.valueOf(n.size()));
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
    /* renamed from: k */
    public String mo7638k() {
        return null;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.AbstractC11631n
    /* renamed from: l */
    public String mo7637l() {
        return null;
    }

    /* renamed from: n */
    public C11649e0 m8734n() {
        return m8732p() ? this.f26134g : null;
    }

    /* renamed from: o */
    public Uri m8733o() {
        return m8732p() ? this.f26131d : null;
    }

    /* renamed from: p */
    public boolean m8732p() {
        return mo9044d() && this.f26134g != null;
    }
}
