package p459j.p460a.p521j0.p522u.p523d;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.view.CallDialogLinearLayout;
import gogolook.callgogolook2.view.MetaphorBadgeLayout;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14093n4;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0003\u0011\u0012\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/StandardCallViewHolderProvider;", "", "()V", "getCountryCodeHighlightedNumber", "Landroid/text/SpannableString;", "number", "", TtmlNode.ATTR_TTS_COLOR, "", "getLayoutView", "Lgogolook/callgogolook2/view/CallDialogLinearLayout;", "context", "Landroid/content/Context;", "callViewWrapper", "Lgogolook/callgogolook2/phone/call/dialog/CallViewWrapper;", "rowInfo", "Lgogolook/callgogolook2/gson/RowInfo;", "CallViewHolder", "CallWhoscallCardViewHolder", "CallWhoscallNumberViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.c1 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/c1.class */
public final class C12541c1 {

    /* renamed from: a */
    public static final C12541c1 f28241a = new C12541c1();

    /* renamed from: j.a.j0.u.d.c1$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/c1$a.class */
    public static abstract class AbstractC12542a {

        /* renamed from: a */
        public final CallDialogLinearLayout f28242a;

        public AbstractC12542a(CallDialogLinearLayout callDialogLinearLayout) {
            C15149k.m377b(callDialogLinearLayout, "view");
            this.f28242a = callDialogLinearLayout;
        }

        /* renamed from: a */
        public abstract ImageView mo5936a();

        /* renamed from: b */
        public abstract View mo5935b();

        /* renamed from: c */
        public abstract TextView mo5934c();

        /* renamed from: d */
        public abstract TextView mo5933d();

        /* renamed from: e */
        public abstract RecycleSafeImageView mo5932e();

        /* renamed from: f */
        public abstract TextView mo5931f();

        /* renamed from: g */
        public abstract TextView mo5930g();

        /* renamed from: h */
        public final CallDialogLinearLayout m5937h() {
            return this.f28242a;
        }
    }

    /* renamed from: j.a.j0.u.d.c1$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/c1$b.class */
    public static final class C12543b extends AbstractC12542a {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C12543b(android.content.Context r5) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r1 = "context"
                p626l.p641z.p643d.C15149k.m377b(r0, r1)
                r0 = r5
                android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
                r1 = 2131558525(0x7f0d007d, float:1.8742368E38)
                r2 = 0
                android.view.View r0 = r0.inflate(r1, r2)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001e
                r0 = r4
                r1 = r5
                gogolook.callgogolook2.view.CallDialogLinearLayout r1 = (gogolook.callgogolook2.view.CallDialogLinearLayout) r1
                r0.<init>(r1)
                return
            L_0x001e:
                l.p r0 = new l.p
                r1 = r0
                java.lang.String r2 = "null cannot be cast to non-null type gogolook.callgogolook2.view.CallDialogLinearLayout"
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12541c1.C12543b.<init>(android.content.Context):void");
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: a */
        public ImageView mo5936a() {
            View findViewById = m5937h().findViewById(R$id.iv_card_spam_icon);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.iv_card_spam_icon)");
            return (ImageView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: b */
        public View mo5935b() {
            View findViewById = m5937h().findViewById(R$id.call_btn_close);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.call_btn_close)");
            return findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: c */
        public TextView mo5934c() {
            View findViewById = m5937h().findViewById(2131363467);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_first)");
            return (TextView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: d */
        public TextView mo5933d() {
            View findViewById = m5937h().findViewById(R$id.tv_fourth);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_fourth)");
            return (TextView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: e */
        public RecycleSafeImageView mo5932e() {
            View findViewById = m5937h().findViewById(R$id.iv_metaphor);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.iv_metaphor)");
            return (RecycleSafeImageView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: f */
        public TextView mo5931f() {
            View findViewById = m5937h().findViewById(2131363555);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_second)");
            return (TextView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: g */
        public TextView mo5930g() {
            View findViewById = m5937h().findViewById(R$id.tv_third);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_third)");
            return (TextView) findViewById;
        }
    }

    /* renamed from: j.a.j0.u.d.c1$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/c1$c.class */
    public static final class C12544c extends AbstractC12542a {

        /* renamed from: b */
        public final MetaphorBadgeLayout f28243b;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C12544c(android.content.Context r5) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r1 = "context"
                p626l.p641z.p643d.C15149k.m377b(r0, r1)
                r0 = r5
                android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
                r1 = 2131558524(0x7f0d007c, float:1.8742366E38)
                r2 = 0
                android.view.View r0 = r0.inflate(r1, r2)
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0036
                r0 = r4
                r1 = r5
                gogolook.callgogolook2.view.CallDialogLinearLayout r1 = (gogolook.callgogolook2.view.CallDialogLinearLayout) r1
                r0.<init>(r1)
                r0 = r4
                gogolook.callgogolook2.view.CallDialogLinearLayout r0 = r0.m5937h()
                r1 = 2131362807(0x7f0a03f7, float:1.8345405E38)
                android.view.View r0 = r0.findViewById(r1)
                r5 = r0
                r0 = r5
                java.lang.String r1 = "view.findViewById(R.id.mbl_metaphor)"
                p626l.p641z.p643d.C15149k.m383a(r0, r1)
                r0 = r4
                r1 = r5
                gogolook.callgogolook2.view.MetaphorBadgeLayout r1 = (gogolook.callgogolook2.view.MetaphorBadgeLayout) r1
                r0.f28243b = r1
                return
            L_0x0036:
                l.p r0 = new l.p
                r1 = r0
                java.lang.String r2 = "null cannot be cast to non-null type gogolook.callgogolook2.view.CallDialogLinearLayout"
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12541c1.C12544c.<init>(android.content.Context):void");
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: a */
        public ImageView mo5936a() {
            return this.f28243b.m25913a();
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: b */
        public View mo5935b() {
            View findViewById = m5937h().findViewById(R$id.call_btn_close);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.call_btn_close)");
            return findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: c */
        public TextView mo5934c() {
            View findViewById = m5937h().findViewById(2131363467);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_first)");
            return (TextView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: d */
        public TextView mo5933d() {
            View findViewById = m5937h().findViewById(R$id.tv_fourth);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_fourth)");
            return (TextView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: e */
        public RecycleSafeImageView mo5932e() {
            return this.f28243b.m25911b();
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: f */
        public TextView mo5931f() {
            View findViewById = m5937h().findViewById(2131363555);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_second)");
            return (TextView) findViewById;
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12541c1.AbstractC12542a
        /* renamed from: g */
        public TextView mo5930g() {
            View findViewById = m5937h().findViewById(R$id.tv_third);
            C15149k.m383a((Object) findViewById, "view.findViewById(R.id.tv_third)");
            return (TextView) findViewById;
        }
    }

    /* renamed from: j.a.j0.u.d.c1$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/c1$d.class */
    public static final class View$OnClickListenerC12545d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C12680t0 f28244a;

        public View$OnClickListenerC12545d(C12680t0 t0Var) {
            this.f28244a = t0Var;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            CallStats h = CallStats.m28534h();
            C15149k.m383a((Object) h, "CallStats.getInstance()");
            CallStats.Call c = h.m28539c();
            C15149k.m383a((Object) c, "CallStats.getInstance().last");
            if (c.m28478y()) {
                this.f28244a.m5556b(true);
            } else {
                this.f28244a.m5561a(false);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x023d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final gogolook.callgogolook2.view.CallDialogLinearLayout m5939a(android.content.Context r6, p459j.p460a.p521j0.p522u.p523d.C12680t0 r7, gogolook.callgogolook2.gson.RowInfo r8) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12541c1.m5939a(android.content.Context, j.a.j0.u.d.t0, gogolook.callgogolook2.gson.RowInfo):gogolook.callgogolook2.view.CallDialogLinearLayout");
    }

    /* renamed from: a */
    public final SpannableString m5938a(String str, int i) {
        SpannableString spannableString = new SpannableString(str);
        String b = C14093n4.m2575b(str);
        if (b != null) {
            spannableString.setSpan(new ForegroundColorSpan(i), 0, b.length(), 33);
        }
        return spannableString;
    }
}
