package com.truecaller.swish.p182ui.input;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.text.InputFilter;
import android.text.Spanned;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p765f5.p767f.C14053a;
import p193e.p194a.p765f5.p769h.p770a.AbstractC14063b;
import p193e.p194a.p765f5.p769h.p770a.AbstractC14065d;
import p193e.p194a.p765f5.p769h.p770a.C14066e;
import s1.f0.r;
import s1.f0.v;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b)\u0010\u001dJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0017\u0010\u000bJ\u0017\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001f\u0010\u0015J\u000f\u0010 \u001a\u00020\u0005H\u0014¢\u0006\u0004\b \u0010\u001dR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/truecaller/swish/ui/input/SwishInputActivity;", "Ln3/b/a/h;", "Le/a/f5/h/a/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", AnalyticsConstants.NAME, "H5", "(Ljava/lang/String;)V", "number", "q7", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarXConfig", "K8", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", "enabled", "A0", "(Z)V", "uri", "b8", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "v8", "()V", "visible", "j9", "onDestroy", "Le/a/b0/a/b/a;", "f", "Le/a/b0/a/b/a;", "avatarXPresenter", "Le/a/f5/f/a;", "e", "Le/a/f5/f/a;", "binding", "<init>", "swish-integration_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.swish.ui.input.SwishInputActivity */
/* loaded from: classes14-dex2jar.jar:com/truecaller/swish/ui/input/SwishInputActivity.class */
public final class SwishInputActivity extends AbstractC14063b implements AbstractC14065d {
    @Inject

    /* renamed from: d */
    public C14066e f15198d;

    /* renamed from: e */
    public C14053a f15199e;

    /* renamed from: f */
    public final C8243a f15200f = new C8243a(new C19235i0(this));

    /* renamed from: com.truecaller.swish.ui.input.SwishInputActivity$a */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/swish/ui/input/SwishInputActivity$a.class */
    public static final class C4601a extends m implements l<CharSequence, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4601a() {
            super(1);
            SwishInputActivity.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
            if (r4 != null) goto L7;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m34626d(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = r4
                java.lang.CharSequence r0 = (java.lang.CharSequence) r0
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L15
                r0 = r4
                java.lang.String r0 = r0.toString()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L15
                goto L18
            L15:
                java.lang.String r0 = ""
                r4 = r0
            L18:
                r0 = r4
                int r0 = r0.length()
                if (r0 != 0) goto L24
                r0 = 1
                r5 = r0
                goto L26
            L24:
                r0 = 0
                r5 = r0
            L26:
                r0 = r5
                if (r0 == 0) goto L3d
                r0 = r3
                com.truecaller.swish.ui.input.SwishInputActivity r0 = com.truecaller.swish.p182ui.input.SwishInputActivity.this
                e.a.f5.f.a r0 = com.truecaller.swish.p182ui.input.SwishInputActivity.m34627pa(r0)
                android.widget.EditText r0 = r0.f40634b
                int r1 = com.truecaller.swish.C4591R.string.swish_input_dialog_hint_amount
                r0.setHint(r1)
                goto L54
            L3d:
                r0 = r3
                com.truecaller.swish.ui.input.SwishInputActivity r0 = com.truecaller.swish.p182ui.input.SwishInputActivity.this
                e.a.f5.f.a r0 = com.truecaller.swish.p182ui.input.SwishInputActivity.m34627pa(r0)
                android.widget.EditText r0 = r0.f40634b
                r4 = r0
                r0 = r4
                java.lang.String r1 = "binding.amountEditText"
                s1.z.c.l.d(r0, r1)
                r0 = r4
                java.lang.String r1 = ""
                r0.setHint(r1)
            L54:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.swish.p182ui.input.SwishInputActivity.C4601a.m34626d(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: com.truecaller.swish.ui.input.SwishInputActivity$b */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/swish/ui/input/SwishInputActivity$b.class */
    public static final class C4602b implements InputFilter {
        public C4602b() {
            SwishInputActivity.this = r4;
        }

        @Override // android.text.InputFilter
        public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            Double m20797Hj;
            C14066e c14066e = SwishInputActivity.this.f15198d;
            if (c14066e == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            s1.z.c.l.d(charSequence, "source");
            s1.z.c.l.d(spanned, "dest");
            s1.z.c.l.e(charSequence, "source");
            s1.z.c.l.e(spanned, "dest");
            String obj = charSequence.subSequence(i, i2).toString();
            String obj2 = spanned.subSequence(i3, i4).toString();
            StringBuilder m8728C = C22128a.m8728C(C22128a.m8543z2(spanned.subSequence(0, i3).toString(), obj));
            m8728C.append(spanned.subSequence(i4, spanned.length()).toString());
            String sb = m8728C.toString();
            if (c14066e.f40668c.d(sb) && (m20797Hj = c14066e.m20797Hj(sb)) != null && m20797Hj.doubleValue() >= 0 && m20797Hj.doubleValue() <= 150000) {
                AbstractC14065d abstractC14065d = (AbstractC14065d) c14066e.f57683a;
                if (abstractC14065d != null) {
                    abstractC14065d.mo20804A0(m20797Hj.doubleValue() >= ((double) 1));
                }
                AbstractC14065d abstractC14065d2 = (AbstractC14065d) c14066e.f57683a;
                if (abstractC14065d2 != null) {
                    abstractC14065d2.mo20800j9(sb.length() > 0);
                }
                obj2 = null;
                if (v.B(obj, StringConstant.DOT, false, 2)) {
                    obj2 = r.t(obj, StringConstant.DOT, ",", false, 4);
                }
            }
            return obj2;
        }
    }

    /* renamed from: com.truecaller.swish.ui.input.SwishInputActivity$c */
    /* loaded from: classes14-dex2jar.jar:com/truecaller/swish/ui/input/SwishInputActivity$c.class */
    public static final class View$OnClickListenerC4603c implements View.OnClickListener {
        public View$OnClickListenerC4603c() {
            SwishInputActivity.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0023, code lost:
            if (r10 != null) goto L7;
         */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r8) {
            /*
                Method dump skipped, instructions count: 285
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.swish.p182ui.input.SwishInputActivity.View$OnClickListenerC4603c.onClick(android.view.View):void");
        }
    }

    /* renamed from: pa */
    public static final /* synthetic */ C14053a m34627pa(SwishInputActivity swishInputActivity) {
        C14053a c14053a = swishInputActivity.f15199e;
        if (c14053a != null) {
            return c14053a;
        }
        s1.z.c.l.l("binding");
        throw null;
    }

    @Override // p193e.p194a.p765f5.p769h.p770a.AbstractC14065d
    /* renamed from: A0 */
    public void mo20804A0(boolean z) {
        C14053a c14053a = this.f15199e;
        if (c14053a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        Button button = c14053a.f40640h;
        s1.z.c.l.d(button, "binding.sendButton");
        button.setEnabled(z);
    }

    @Override // p193e.p194a.p765f5.p769h.p770a.AbstractC14065d
    /* renamed from: H5 */
    public void mo20803H5(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        C14053a c14053a = this.f15199e;
        if (c14053a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c14053a.f40638f;
        s1.z.c.l.d(textView, "binding.nameTextView");
        textView.setText(str);
    }

    @Override // p193e.p194a.p765f5.p769h.p770a.AbstractC14065d
    /* renamed from: K8 */
    public void mo20802K8(AvatarXConfig avatarXConfig) {
        s1.z.c.l.e(avatarXConfig, "avatarXConfig");
        C8243a.m28739ok(this.f15200f, avatarXConfig, false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p765f5.p769h.p770a.AbstractC14065d
    /* renamed from: b8 */
    public void mo20801b8(String str) {
        s1.z.c.l.e(str, "uri");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setPackage("se.bankgirot.swish");
        C8613t.m28198n(this, intent);
    }

    @Override // p193e.p194a.p765f5.p769h.p770a.AbstractC14065d
    /* renamed from: j9 */
    public void mo20800j9(boolean z) {
        C14053a c14053a = this.f15199e;
        if (c14053a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c14053a.f40636d;
        s1.z.c.l.d(textView, "binding.currencyTextView");
        textView.setVisibility(z ? 0 : 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x01bc, code lost:
        if (r21 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x023f, code lost:
        if (r30 != null) goto L65;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r21) {
        /*
            Method dump skipped, instructions count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.swish.p182ui.input.SwishInputActivity.onCreate(android.os.Bundle):void");
    }

    public void onDestroy() {
        C14066e c14066e = this.f15198d;
        if (c14066e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c14066e.f57683a = null;
        SwishInputActivity.super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        s1.z.c.l.e(menuItem, "item");
        if (menuItem.getItemId() != 16908332) {
            return SwishInputActivity.super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override // p193e.p194a.p765f5.p769h.p770a.AbstractC14065d
    /* renamed from: q7 */
    public void mo20799q7(String str) {
        s1.z.c.l.e(str, "number");
        C14053a c14053a = this.f15199e;
        if (c14053a == null) {
            s1.z.c.l.l("binding");
            throw null;
        }
        TextView textView = c14053a.f40639g;
        s1.z.c.l.d(textView, "binding.numberTextView");
        textView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p765f5.p769h.p770a.AbstractC14065d
    /* renamed from: v8 */
    public void mo20798v8() {
        try {
            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=se.bankgirot.swish")));
        } catch (ActivityNotFoundException e) {
            try {
                startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=se.bankgirot.swish")));
            } catch (ActivityNotFoundException e2) {
            }
        }
    }
}
