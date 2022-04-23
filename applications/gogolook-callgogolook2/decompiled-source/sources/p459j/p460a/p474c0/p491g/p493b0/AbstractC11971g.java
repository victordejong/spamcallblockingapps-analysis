package p459j.p460a.p474c0.p491g.p493b0;

import android.content.Context;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import androidx.core.util.Pair;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.p078ui.conversation.SimSelectorView;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12204q0;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.g.b0.g */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/g.class */
public abstract class AbstractC11971g extends AbstractC11958d {

    /* renamed from: c */
    public SimSelectorView f26842c;

    /* renamed from: d */
    public Pair<Boolean, Boolean> f26843d;

    /* renamed from: e */
    public boolean f26844e;

    /* renamed from: f */
    public String f26845f;

    /* renamed from: j.a.c0.g.b0.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/g$a.class */
    public class RunnableC11972a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f26846a;

        /* renamed from: b */
        public final /* synthetic */ boolean f26847b;

        public RunnableC11972a(boolean z, boolean z2) {
            this.f26846a = z;
            this.f26847b = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11971g gVar = AbstractC11971g.this;
            gVar.f26814b.mo7753a(gVar, this.f26846a, this.f26847b);
        }
    }

    /* renamed from: j.a.c0.g.b0.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/g$b.class */
    public class C11973b implements SimSelectorView.AbstractC4775d {
        public C11973b() {
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.conversation.SimSelectorView.AbstractC4775d
        /* renamed from: a */
        public void mo7691a(C11634p.C11635a aVar) {
            AbstractC11971g.this.mo7701a(aVar);
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.conversation.SimSelectorView.AbstractC4775d
        /* renamed from: a */
        public void mo7690a(boolean z) {
            AbstractC11971g.this.m7759b(z);
        }
    }

    public AbstractC11971g(AbstractC11958d.AbstractC11959a aVar) {
        super(aVar, false);
    }

    /* renamed from: a */
    public abstract void mo7701a(C11634p.C11635a aVar);

    /* renamed from: a */
    public void m7700a(C11634p pVar) {
        m7694d();
        this.f26842c.m27072a(pVar);
        this.f26844e = pVar != null && pVar.m8746b();
        if (this.f26843d != null && this.f26844e) {
            C12151d.m6999b(C14017g4.m2804t());
            C12204q0.m6814a().post(new RunnableC11972a(this.f26843d.first.booleanValue(), this.f26843d.second.booleanValue()));
            this.f26843d = null;
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
    /* renamed from: a */
    public boolean mo7699a(boolean z) {
        return m7698a(false, z);
    }

    /* renamed from: a */
    public final boolean m7698a(boolean z, boolean z2) {
        boolean z3 = false;
        if (!C14017g4.m2804t()) {
            return false;
        }
        if (this.f26844e) {
            this.f26842c.m27071a(z, z2);
            if (this.f26842c.m27077a() == z) {
                z3 = true;
            }
            return z3;
        }
        this.f26843d = Pair.create(Boolean.valueOf(z), Boolean.valueOf(z2));
        return false;
    }

    /* renamed from: b */
    public void m7697b(C11634p.C11635a aVar) {
        this.f26845f = aVar == null ? null : aVar.f26120d;
    }

    /* renamed from: c */
    public final void m7696c() {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (C12143b.m7032a(a) && !TextUtils.isEmpty(this.f26845f)) {
            C12143b.m7027a(this.f26842c, (AccessibilityManager) null, a.getString(R$string.selected_sim_content_message, this.f26845f));
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p493b0.AbstractC11958d
    /* renamed from: c */
    public boolean mo7695c(boolean z) {
        m7696c();
        return m7698a(true, z);
    }

    /* renamed from: d */
    public final void m7694d() {
        if (this.f26842c == null) {
            this.f26842c = mo7692f();
            this.f26842c.m27076a(mo7693e());
            this.f26842c.m27075a(new C11973b());
        }
    }

    /* renamed from: e */
    public abstract int mo7693e();

    /* renamed from: f */
    public abstract SimSelectorView mo7692f();
}
