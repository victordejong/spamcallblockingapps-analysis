package com.truecaller.tcpermissions;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p851h5.AbstractC14935b;
import p193e.p194a.p851h5.AbstractC14936c;
import p193e.p194a.p851h5.AbstractC14940g;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p851h5.C14937d;
import p193e.p194a.p851h5.C14938e;
import p193e.p194a.p851h5.C14945l;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001c\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tR%\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR%\u0010\u0013\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u000fR\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/truecaller/tcpermissions/AccessContactsActivity;", "Ln3/b/a/h;", "Le/a/h5/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "Landroid/widget/Button;", "kotlin.jvm.PlatformType", "e", "Ls1/g;", "getDenyButton", "()Landroid/widget/Button;", "denyButton", "d", "getAllowButton", "allowButton", "Le/a/h5/b;", "f", "Le/a/h5/b;", "getPresenter", "()Le/a/h5/b;", "setPresenter", "(Le/a/h5/b;)V", "presenter", "<init>", "tc-permissions_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes14-dex2jar.jar:com/truecaller/tcpermissions/AccessContactsActivity.class */
public final class AccessContactsActivity extends AbstractC14940g implements AbstractC14936c {

    /* renamed from: d */
    public final g f15297d = C19286f.m13662q(this, C4616R.C4618id.allow_button);

    /* renamed from: e */
    public final g f15298e = C19286f.m13662q(this, C4616R.C4618id.deny_button);
    @Inject

    /* renamed from: f */
    public AbstractC14935b f15299f;

    /* renamed from: com.truecaller.tcpermissions.AccessContactsActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/tcpermissions/AccessContactsActivity$a.class */
    public static final class View$OnClickListenerC4614a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f15300a;

        /* renamed from: b */
        public final /* synthetic */ Object f15301b;

        public View$OnClickListenerC4614a(int i, Object obj) {
            this.f15300a = i;
            this.f15301b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f15300a;
            if (i == 0) {
                AbstractC14935b abstractC14935b = ((AccessContactsActivity) this.f15301b).f15299f;
                if (abstractC14935b == null) {
                    l.l("presenter");
                    throw null;
                }
                C14938e c14938e = (C14938e) abstractC14935b;
                d.w2(c14938e, (f) null, (j0) null, new C14937d(c14938e, null), 3, (Object) null);
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC14935b abstractC14935b2 = ((AccessContactsActivity) this.f15301b).f15299f;
                if (abstractC14935b2 == null) {
                    l.l("presenter");
                    throw null;
                }
                AbstractC14936c abstractC14936c = (AbstractC14936c) ((C14938e) abstractC14935b2).f57683a;
                if (abstractC14936c == null) {
                    return;
                }
                abstractC14936c.finish();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AccessContactsActivity.super.onCreate(bundle);
        setContentView(C4616R.layout.activity_access_contacts);
        AbstractC14935b abstractC14935b = this.f15299f;
        if (abstractC14935b == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC14935b).f57683a = this;
        ((Button) this.f15297d.getValue()).setOnClickListener(new View$OnClickListenerC4614a(0, this));
        ((Button) this.f15298e.getValue()).setOnClickListener(new View$OnClickListenerC4614a(1, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDestroy() {
        if (isFinishing()) {
            AbstractC14935b abstractC14935b = this.f15299f;
            if (abstractC14935b == null) {
                l.l("presenter");
                throw null;
            }
            C14938e c14938e = (C14938e) abstractC14935b;
            AbstractC14967y abstractC14967y = c14938e.f42666f;
            C14945l c14945l = c14938e.f42664d;
            if (c14945l == null) {
                c14945l = new C14945l(false, false, 2);
            }
            abstractC14967y.mo19336d(c14945l);
        }
        AccessContactsActivity.super.onDestroy();
    }
}
