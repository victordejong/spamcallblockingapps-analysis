package p459j.p460a.p463b0.p470w;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import kotlin.Metadata;
import p459j.p460a.p463b0.p470w.DialogC11427h;
import p459j.p460a.p521j0.p529x.C12754a;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14315y;
import p459j.p460a.p582w0.p587d5.C13980g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001)B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ,\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u001bH\u0002J\u0006\u0010\u001d\u001a\u00020\u001bJ\b\u0010\u001e\u001a\u00020\u001bH\u0002J\u0006\u0010\u001f\u001a\u00020\u001bJ\u0006\u0010 \u001a\u00020\u001bJ\u0006\u0010!\u001a\u00020\u001bJ\u0006\u0010\"\u001a\u00020\u001bJ\u0006\u0010#\u001a\u00020\u001bJ\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020%J\u0006\u0010'\u001a\u00020%J\u0006\u0010(\u001a\u00020%R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006*"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsFilterTrialTooltipHelper;", "", "context", "Landroid/content/Context;", "tvFilterSpam", "Landroid/view/View;", "clFilterParent", "dialogCallback", "Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDialog$Callback;", "onDismissListener", "Landroid/content/DialogInterface$OnDismissListener;", "(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDialog$Callback;Landroid/content/DialogInterface$OnDismissListener;)V", "settingTutorial", "Landroid/widget/PopupWindow;", "spamTagTutorial", "trialDetailDialog", "Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDetailDialog;", "trialDialog", "Lgogolook/callgogolook2/main/smslog/SmsFilterTrialDialog;", "getFilterTooltipWindow", "content", "", "layoutRes", "", "callback", "Lgogolook/callgogolook2/main/smslog/SmsFilterTrialTooltipHelper$TooltipCallback;", "isCompleted", "", "isIntroShowing", "isOnGoing", "isTipShowing", "shouldShowFilter", "shouldShowFilterSettingTooltip", "shouldShowHistoryInferHint", "shouldShowSmsFilterTrialDialog", "shouldShowSpamFilterTooltip", "showFilterSettingTooltip", "", "showSmsFilterTrialDetailDialog", "showSmsFilterTrialDialog", "showSpamFilterTooltip", "TooltipCallback", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.i */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/i.class */
public final class C11431i {

    /* renamed from: a */
    public DialogC11427h f25552a;

    /* renamed from: b */
    public DialogC11425g f25553b;

    /* renamed from: c */
    public PopupWindow f25554c;

    /* renamed from: d */
    public PopupWindow f25555d;

    /* renamed from: e */
    public final Context f25556e;

    /* renamed from: f */
    public final View f25557f;

    /* renamed from: g */
    public final View f25558g;

    /* renamed from: h */
    public final DialogC11427h.AbstractC11430c f25559h;

    /* renamed from: i */
    public final DialogInterface.OnDismissListener f25560i;

    /* renamed from: j.a.b0.w.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/i$a.class */
    public interface AbstractC11432a {
        void onDismiss();
    }

    /* renamed from: j.a.b0.w.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/i$b.class */
    public static final class View$OnClickListenerC11433b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ PopupWindow f25561a;

        public View$OnClickListenerC11433b(PopupWindow popupWindow) {
            this.f25561a = popupWindow;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f25561a.dismiss();
        }
    }

    /* renamed from: j.a.b0.w.i$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/i$c.class */
    public static final class C11434c implements PopupWindow.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC11432a f25562a;

        public C11434c(AbstractC11432a aVar) {
            this.f25562a = aVar;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            AbstractC11432a aVar = this.f25562a;
            if (aVar != null) {
                aVar.onDismiss();
            }
        }
    }

    /* renamed from: j.a.b0.w.i$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/i$d.class */
    public static final class C11435d implements AbstractC11432a {
        public C11435d() {
        }

        @Override // p459j.p460a.p463b0.p470w.C11431i.AbstractC11432a
        public void onDismiss() {
            C13980g.f31390a.m9459a("has_sms_filter_spam_tooltip_shown", (String) true);
            C11431i.this.m9642j();
        }
    }

    public C11431i(Context context, View view, View view2, DialogC11427h.AbstractC11430c cVar, DialogInterface.OnDismissListener onDismissListener) {
        C15149k.m377b(view, "tvFilterSpam");
        C15149k.m377b(view2, "clFilterParent");
        C15149k.m377b(cVar, "dialogCallback");
        C15149k.m377b(onDismissListener, "onDismissListener");
        this.f25556e = context;
        this.f25557f = view;
        this.f25558g = view2;
        this.f25559h = cVar;
        this.f25560i = onDismissListener;
    }

    /* renamed from: a */
    public static /* synthetic */ PopupWindow m9651a(C11431i iVar, Context context, String str, int i, AbstractC11432a aVar, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            aVar = null;
        }
        return iVar.m9652a(context, str, i, aVar);
    }

    /* renamed from: a */
    public final PopupWindow m9652a(Context context, String str, int i, AbstractC11432a aVar) {
        View inflate = LayoutInflater.from(context).inflate(i, (ViewGroup) null);
        C15149k.m383a((Object) inflate, "LayoutInflater.from(cont….inflate(layoutRes, null)");
        TextView textView = (TextView) inflate.findViewById(R$id.tvContent);
        PopupWindow popupWindow = new PopupWindow(context);
        popupWindow.setContentView(inflate);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setHeight(-2);
        popupWindow.setWidth(context.getResources().getDimensionPixelSize(R$dimen.popup_menu_width));
        C15149k.m383a((Object) textView, "tvContent");
        textView.setText(str);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tvConfirm);
        if (textView2 != null) {
            textView2.setOnClickListener(new View$OnClickListenerC11433b(popupWindow));
        }
        popupWindow.setOnDismissListener(new C11434c(aVar));
        return popupWindow;
    }

    /* renamed from: a */
    public final boolean m9653a() {
        return C13980g.f31390a.m9462a("has_sms_filter_setting_tooltip_shown", (Boolean) false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.isShowing() != true) goto L_0x0015;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9650b() {
        /*
            r3 = this;
            r0 = r3
            j.a.b0.w.h r0 = r0.f25552a
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isShowing()
            r1 = 1
            if (r0 == r1) goto L_0x002d
        L_0x0015:
            r0 = r3
            j.a.b0.w.g r0 = r0.f25553b
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002b
            r0 = r4
            boolean r0 = r0.isShowing()
            r1 = 1
            if (r0 != r1) goto L_0x002b
            r0 = r5
            r6 = r0
            goto L_0x002d
        L_0x002b:
            r0 = 0
            r6 = r0
        L_0x002d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p470w.C11431i.m9650b():boolean");
    }

    /* renamed from: c */
    public final boolean m9649c() {
        return m9650b() || m9648d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.isShowing() != true) goto L_0x0015;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9648d() {
        /*
            r3 = this;
            r0 = r3
            android.widget.PopupWindow r0 = r0.f25554c
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0015
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0.isShowing()
            r1 = 1
            if (r0 == r1) goto L_0x002d
        L_0x0015:
            r0 = r3
            android.widget.PopupWindow r0 = r0.f25555d
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002b
            r0 = r4
            boolean r0 = r0.isShowing()
            r1 = 1
            if (r0 != r1) goto L_0x002b
            r0 = r5
            r6 = r0
            goto L_0x002d
        L_0x002b:
            r0 = 0
            r6 = r0
        L_0x002d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p470w.C11431i.m9648d():boolean");
    }

    /* renamed from: e */
    public final boolean m9647e() {
        return C12758e.m5413c() || C12754a.m5431a();
    }

    /* renamed from: f */
    public final boolean m9646f() {
        boolean z = false;
        if (C12758e.m5413c()) {
            z = false;
            if (C12758e.m5411e()) {
                z = false;
                if (C12758e.m5407i()) {
                    z = false;
                    if (!C13980g.f31390a.m9462a("has_sms_filter_setting_tooltip_shown", (Boolean) false)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    public final boolean m9645g() {
        return C12758e.m5405k() && !C12758e.m5411e();
    }

    /* renamed from: h */
    public final boolean m9644h() {
        return C12758e.m5405k() && !C12758e.m5407i();
    }

    /* renamed from: i */
    public final boolean m9643i() {
        boolean z = false;
        if (C12758e.m5413c()) {
            z = false;
            if (C12758e.m5411e()) {
                z = false;
                if (C12758e.m5407i()) {
                    z = false;
                    if (!C13980g.f31390a.m9462a("has_sms_filter_spam_tooltip_shown", (Boolean) false)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: j */
    public final void m9642j() {
        Context context = this.f25556e;
        if (context != null) {
            PopupWindow popupWindow = this.f25555d;
            if (popupWindow == null) {
                String string = context.getString(R$string.sms_filter_setting_tutorial);
                C15149k.m383a((Object) string, "getString(R.string.sms_filter_setting_tutorial)");
                popupWindow = m9651a(this, context, string, R$layout.sms_filter_setting_tooltip_layout, null, 8, null);
                this.f25555d = popupWindow;
            }
            popupWindow.showAsDropDown(this.f25558g, (int) context.getResources().getDimension(R$dimen.sms_log_filter_setting_tooltip_left_margin), -((int) context.getResources().getDimension(R$dimen.sms_log_filter_parent_height)), GravityCompat.START);
            C13980g.f31390a.m9459a("has_sms_filter_setting_tooltip_shown", (String) true);
        }
    }

    /* renamed from: k */
    public final void m9641k() {
        Context context = this.f25556e;
        if (context != null) {
            DialogC11425g gVar = new DialogC11425g(context);
            gVar.setOnDismissListener(this.f25560i);
            this.f25553b = gVar;
            C14315y.m1603b(gVar);
        }
    }

    /* renamed from: l */
    public final void m9640l() {
        Context context = this.f25556e;
        if (context != null) {
            DialogC11427h hVar = this.f25552a;
            if (hVar == null) {
                hVar = new DialogC11427h(context, this.f25559h);
                this.f25552a = hVar;
            }
            C14315y.m1603b(hVar);
        }
    }

    /* renamed from: m */
    public final void m9639m() {
        Context context = this.f25556e;
        if (context != null) {
            float dimension = context.getResources().getDimension(R$dimen.sms_log_filter_tooltip_width);
            float dimension2 = (((context.getResources().getDimension(R$dimen.sms_log_filter_item_height) + dimension) - context.getResources().getDimension(R$dimen.sms_log_filter_item_width)) - context.getResources().getDimension(R$dimen.sms_log_filter_item_margin)) / 2;
            PopupWindow popupWindow = this.f25554c;
            if (popupWindow == null) {
                String string = context.getString(R$string.sms_filter_spam_tag_tutorial_fraud);
                C15149k.m383a((Object) string, "getString(R.string.sms_f…_spam_tag_tutorial_fraud)");
                popupWindow = m9652a(context, string, R$layout.sms_filter_spam_tooltip_layout, new C11435d());
                this.f25554c = popupWindow;
            }
            popupWindow.showAsDropDown(this.f25557f, -((int) dimension2), C14217x3.m2201a(4.0f), GravityCompat.START);
        }
    }
}
