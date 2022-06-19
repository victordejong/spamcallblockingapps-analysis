package p086f;

import android.app.Dialog;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import p140k.AbstractC3295a;
import p163m0.C3571e;
import p226s.C4254c;
/* renamed from: f.r */
/* loaded from: classes-dex2jar.jar:f/r.class */
public class DialogC2674r extends Dialog implements AbstractC2652k {

    /* renamed from: a */
    public AbstractC2653l f9188a;

    /* renamed from: b */
    public final C3571e.AbstractC3572a f9189b;

    /* renamed from: f.r$a */
    /* loaded from: classes-dex2jar.jar:f/r$a.class */
    public class C2675a implements C3571e.AbstractC3572a {
        public C2675a() {
            DialogC2674r.this = r4;
        }

        @Override // p163m0.C3571e.AbstractC3572a
        /* renamed from: d */
        public boolean mo2141d(KeyEvent keyEvent) {
            return DialogC2674r.this.m3299b(keyEvent);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogC2674r(android.content.Context r6, int r7) {
        /*
            r5 = this;
            r0 = r7
            if (r0 != 0) goto L21
            android.util.TypedValue r0 = new android.util.TypedValue
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            android.content.res.Resources$Theme r0 = r0.getTheme()
            r1 = 2130968926(0x7f04015e, float:1.754652E38)
            r2 = r8
            r3 = 1
            boolean r0 = r0.resolveAttribute(r1, r2, r3)
            r0 = r8
            int r0 = r0.resourceId
            r9 = r0
            goto L24
        L21:
            r0 = r7
            r9 = r0
        L24:
            r0 = r5
            r1 = r6
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r5
            f.r$a r1 = new f.r$a
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.f9189b = r1
            r0 = r5
            f.l r0 = r0.m3300a()
            r10 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L5e
            android.util.TypedValue r0 = new android.util.TypedValue
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            android.content.res.Resources$Theme r0 = r0.getTheme()
            r1 = 2130968926(0x7f04015e, float:1.754652E38)
            r2 = r8
            r3 = 1
            boolean r0 = r0.resolveAttribute(r1, r2, r3)
            r0 = r8
            int r0 = r0.resourceId
            r9 = r0
        L5e:
            r0 = r10
            r1 = r9
            r0.mo3313z(r1)
            r0 = r10
            r1 = 0
            r0.mo3325m(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p086f.DialogC2674r.<init>(android.content.Context, int):void");
    }

    /* renamed from: a */
    public AbstractC2653l m3300a() {
        if (this.f9188a == null) {
            C4254c<WeakReference<AbstractC2653l>> c4254c = AbstractC2653l.f9096a;
            this.f9188a = new LayoutInflater$Factory2C2654m(getContext(), getWindow(), this, this);
        }
        return this.f9188a;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3300a().mo3335c(view, layoutParams);
    }

    /* renamed from: b */
    public boolean m3299b(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // p086f.AbstractC2652k
    /* renamed from: c */
    public void mo3298c(AbstractC3295a abstractC3295a) {
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m3300a().mo3324n();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C3571e.m2142b(this.f9189b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m3300a().mo3333e(i);
    }

    @Override // p086f.AbstractC2652k
    /* renamed from: h */
    public AbstractC3295a mo3297h(AbstractC3295a.AbstractC3296a abstractC3296a) {
        return null;
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m3300a().mo3327k();
    }

    @Override // p086f.AbstractC2652k
    /* renamed from: j */
    public void mo3296j(AbstractC3295a abstractC3295a) {
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m3300a().mo3328j();
        super.onCreate(bundle);
        m3300a().mo3325m(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        m3300a().mo3319s();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m3300a().mo3317v(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m3300a().mo3316w(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3300a().mo3315x(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m3300a().mo3362A(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m3300a().mo3362A(charSequence);
    }
}
