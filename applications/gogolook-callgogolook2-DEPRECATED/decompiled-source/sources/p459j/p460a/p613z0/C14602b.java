package p459j.p460a.p613z0;

import android.app.Dialog;
import android.content.DialogInterface;
import androidx.annotation.NonNull;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14128q1;
import p660rx.Subscription;
import p660rx.functions.Action1;
/* renamed from: j.a.z0.b */
/* loaded from: classes3-dex2jar.jar:j/a/z0/b.class */
public class C14602b {

    /* renamed from: a */
    public Dialog f32607a;

    /* renamed from: b */
    public Subscription f32608b = null;

    /* renamed from: c */
    public DialogInterface.OnShowListener f32609c = null;

    /* renamed from: d */
    public DialogInterface.OnShowListener f32610d = null;

    /* renamed from: e */
    public DialogInterface.OnDismissListener f32611e = null;

    /* renamed from: f */
    public DialogInterface.OnDismissListener f32612f = null;

    /* renamed from: j.a.z0.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/b$a.class */
    public class DialogInterface$OnShowListenerC14603a implements DialogInterface.OnShowListener {
        public DialogInterface$OnShowListenerC14603a() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            if (C14602b.this.f32609c != null) {
                C14602b.this.f32609c.onShow(dialogInterface);
            }
            C14602b.this.m1033c();
        }
    }

    /* renamed from: j.a.z0.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/b$b.class */
    public class DialogInterface$OnDismissListenerC14604b implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC14604b() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (C14602b.this.f32611e != null) {
                C14602b.this.f32611e.onDismiss(dialogInterface);
            }
            C14602b.this.m1031d();
        }
    }

    /* renamed from: j.a.z0.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/b$c.class */
    public class C14605c implements Action1<Object> {
        public C14605c() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if ((obj instanceof C14128q1) && C14602b.this.f32607a != null && C14602b.this.f32607a.isShowing()) {
                C14602b.this.f32607a.dismiss();
            }
        }
    }

    public C14602b(@NonNull Dialog dialog) {
        this.f32607a = null;
        this.f32607a = dialog;
    }

    /* renamed from: a */
    public DialogInterface.OnDismissListener m1037a() {
        if (this.f32612f == null) {
            this.f32612f = new DialogInterface$OnDismissListenerC14604b();
        }
        return this.f32612f;
    }

    /* renamed from: b */
    public DialogInterface.OnShowListener m1035b() {
        if (this.f32610d == null) {
            this.f32610d = new DialogInterface$OnShowListenerC14603a();
        }
        return this.f32610d;
    }

    /* renamed from: c */
    public final void m1033c() {
        this.f32608b = C14037j3.m2731a().mo2703a((Action1) new C14605c());
    }

    /* renamed from: d */
    public final void m1031d() {
        Subscription subscription = this.f32608b;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f32608b.unsubscribe();
        }
    }

    /* renamed from: e */
    public Dialog m1029e() {
        this.f32607a.setOnShowListener(m1035b());
        this.f32607a.setOnDismissListener(m1037a());
        return this.f32607a;
    }
}
