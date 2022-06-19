package p1727n3.p1734b.p1735a;

import android.app.Dialog;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1788g.C26177c;
import p1727n3.p1807k.p1821i.C26581f;
/* renamed from: n3.b.a.p */
/* loaded from: classes-dex2jar.jar:n3/b/a/p.class */
public class DialogC25424p extends Dialog implements AbstractC25406i {

    /* renamed from: a */
    public AbstractC25407j f70947a;

    /* renamed from: b */
    public final C26581f.AbstractC26582a f70948b;

    /* renamed from: n3.b.a.p$a */
    /* loaded from: classes-dex2jar.jar:n3/b/a/p$a.class */
    public class C25425a implements C26581f.AbstractC26582a {
        public C25425a() {
            DialogC25424p.this = r4;
        }

        @Override // p1727n3.p1807k.p1821i.C26581f.AbstractC26582a
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return DialogC25424p.this.m3586b(keyEvent);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogC25424p(android.content.Context r6, int r7) {
        /*
            r5 = this;
            r0 = r7
            if (r0 != 0) goto L22
            android.util.TypedValue r0 = new android.util.TypedValue
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            android.content.res.Resources$Theme r0 = r0.getTheme()
            int r1 = androidx.appcompat.C0032R.attr.dialogTheme
            r2 = r8
            r3 = 1
            boolean r0 = r0.resolveAttribute(r1, r2, r3)
            r0 = r8
            int r0 = r0.resourceId
            r9 = r0
            goto L25
        L22:
            r0 = r7
            r9 = r0
        L25:
            r0 = r5
            r1 = r6
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r5
            n3.b.a.p$a r1 = new n3.b.a.p$a
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.f70948b = r1
            r0 = r5
            n3.b.a.j r0 = r0.m3587a()
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            if (r0 != 0) goto L62
            android.util.TypedValue r0 = new android.util.TypedValue
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r6
            android.content.res.Resources$Theme r0 = r0.getTheme()
            int r1 = androidx.appcompat.C0032R.attr.dialogTheme
            r2 = r10
            r3 = 1
            boolean r0 = r0.resolveAttribute(r1, r2, r3)
            r0 = r10
            int r0 = r0.resourceId
            r9 = r0
        L62:
            r0 = r8
            r1 = r9
            r0.mo3600z(r1)
            r0 = r8
            r1 = 0
            r0.mo3612m(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1735a.DialogC25424p.<init>(android.content.Context, int):void");
    }

    /* renamed from: a */
    public AbstractC25407j m3587a() {
        if (this.f70947a == null) {
            C26177c<WeakReference<AbstractC25407j>> c26177c = AbstractC25407j.f70858a;
            this.f70947a = new LayoutInflater$Factory2C25408k(getContext(), getWindow(), this, this);
        }
        return this.f70947a;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3587a().mo3622c(view, layoutParams);
    }

    /* renamed from: b */
    public boolean m3586b(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    /* renamed from: c */
    public boolean m3585c(int i) {
        return m3587a().mo3605u(i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        m3587a().mo3611n();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C26581f.m1631b(this.f70948b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) m3587a().mo3620e(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        m3587a().mo3614k();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        m3587a().mo3615j();
        super.onCreate(bundle);
        m3587a().mo3612m(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        m3587a().mo3606s();
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25406i
    public void onSupportActionModeFinished(AbstractC25450a abstractC25450a) {
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25406i
    public void onSupportActionModeStarted(AbstractC25450a abstractC25450a) {
    }

    @Override // p1727n3.p1734b.p1735a.AbstractC25406i
    public AbstractC25450a onWindowStartingSupportActionMode(AbstractC25450a.AbstractC25451a abstractC25451a) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        m3587a().mo3604v(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        m3587a().mo3603w(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3587a().mo3602x(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        m3587a().mo3650A(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m3587a().mo3650A(charSequence);
    }
}
