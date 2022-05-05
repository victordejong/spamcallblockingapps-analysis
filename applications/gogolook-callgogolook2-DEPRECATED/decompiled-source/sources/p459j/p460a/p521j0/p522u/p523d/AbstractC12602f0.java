package p459j.p460a.p521j0.p522u.p523d;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import p459j.p460a.p521j0.p522u.p523d.C12664s0;
/* renamed from: j.a.j0.u.d.f0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/f0.class */
public abstract class AbstractC12602f0 {

    /* renamed from: a */
    public C12664s0 f28408a;

    /* renamed from: b */
    public Context f28409b;

    /* renamed from: a */
    public abstract View mo5560a(boolean z, int i, String str, String str2, long j);

    /* renamed from: a */
    public abstract FrameLayout.LayoutParams mo5572a();

    /* renamed from: a */
    public void m5826a(Context context) {
        this.f28409b = context;
    }

    /* renamed from: a */
    public void m5825a(C12664s0 s0Var) {
        this.f28408a = s0Var;
        this.f28409b = s0Var.m5621g();
    }

    /* renamed from: b */
    public abstract View mo5558b();

    /* renamed from: b */
    public View m5824b(boolean z, int i, String str, String str2, long j) {
        return this.f28408a.m5619h() == C12664s0.EnumC12676j.CALL_DIALOG ? mo5558b() : mo5560a(z, i, str, str2, j);
    }

    /* renamed from: c */
    public abstract FrameLayout.LayoutParams mo5554c();

    /* renamed from: d */
    public C12664s0 m5823d() {
        return this.f28408a;
    }

    /* renamed from: e */
    public FrameLayout.LayoutParams m5822e() {
        return this.f28408a.m5619h() == C12664s0.EnumC12676j.CALL_DIALOG ? mo5572a() : mo5554c();
    }
}
