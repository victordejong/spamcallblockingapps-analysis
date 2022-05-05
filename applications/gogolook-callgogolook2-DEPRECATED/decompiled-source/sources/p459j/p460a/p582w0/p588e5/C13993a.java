package p459j.p460a.p582w0.p588e5;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.Window;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.gson.CallAction;
import gogolook.callgogolook2.phone.SettingResultActivity;
import gogolook.callgogolook2.receiver.CheckTeaserNotificationReceiver;
import gogolook.callgogolook2.view.SimpleInAppDialog;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14315y;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R \u0010\u0005\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m815d2 = {"Lgogolook/callgogolook2/util/promotion/PromoteDefaultAppManager;", "", "()V", CallAction.DONE_TAG, "", "roleDialogMap", "", "Ljava/lang/ref/WeakReference;", "Landroid/app/Dialog;", "clearPromotion", "", "showDialog", "dialog", "Lgogolook/callgogolook2/util/promotion/PromoteDefaultAppManager$PromoteDefaultAppDialog;", "PromoteDefaultAppDialog", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.e5.a */
/* loaded from: classes3-dex2jar.jar:j/a/w0/e5/a.class */
public final class C13993a {

    /* renamed from: a */
    public static final Map<String, WeakReference<Dialog>> f31406a = new LinkedHashMap();

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0083\u000e¢\u0006\n\n\u0002\u0010\u000b\u0012\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/util/promotion/PromoteDefaultAppManager$PromoteDefaultAppDialog;", "Lgogolook/callgogolook2/view/SimpleInAppDialog;", "context", "Landroid/content/Context;", "roleName", "", "(Landroid/content/Context;Ljava/lang/String;)V", "gfSource", "", "gfSource$annotations", "()V", "Ljava/lang/Integer;", "getRoleName", "()Ljava/lang/String;", "setPositive", "", "resId", "listener", "Landroid/view/View$OnClickListener;", "Builder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.w0.e5.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/e5/a$a.class */
    public static final class DialogC13994a extends SimpleInAppDialog {

        /* renamed from: b */
        public Integer f31407b;

        /* renamed from: c */
        public final String f31408c;

        /* renamed from: j.a.w0.e5.a$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/e5/a$a$a.class */
        public static final class C13995a {

            /* renamed from: a */
            public final DialogC13994a f31409a;

            /* renamed from: b */
            public final String f31410b;

            public C13995a(Context context, String str) {
                C15149k.m377b(context, "context");
                C15149k.m377b(str, "roleName");
                this.f31410b = str;
                this.f31409a = new DialogC13994a(context, this.f31410b);
            }

            /* renamed from: a */
            public final C13995a m2913a(int i) {
                this.f31409a.f31407b = Integer.valueOf(i);
                return this;
            }

            /* renamed from: a */
            public final C13995a m2912a(@StringRes int i, View.OnClickListener onClickListener) {
                this.f31409a.m25876a(i, onClickListener);
                return this;
            }

            /* renamed from: a */
            public final C13995a m2911a(DialogInterface.OnShowListener onShowListener) {
                this.f31409a.setOnShowListener(onShowListener);
                return this;
            }

            /* renamed from: a */
            public final C13995a m2910a(View.OnClickListener onClickListener) {
                this.f31409a.m25875a(onClickListener);
                return this;
            }

            /* renamed from: a */
            public final DialogC13994a m2914a() {
                return this.f31409a;
            }

            /* renamed from: b */
            public final C13995a m2909b(@DrawableRes int i) {
                this.f31409a.m25868b(i);
                return this;
            }

            /* renamed from: b */
            public final C13995a m2908b(@StringRes int i, View.OnClickListener onClickListener) {
                this.f31409a.mo2915b(i, onClickListener);
                return this;
            }

            /* renamed from: c */
            public final C13995a m2907c(@StringRes int i) {
                this.f31409a.m25858e(i);
                return this;
            }

            /* renamed from: d */
            public final C13995a m2906d(@StringRes int i) {
                this.f31409a.setTitle(i);
                return this;
            }
        }

        /* renamed from: j.a.w0.e5.a$a$b */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/e5/a$a$b.class */
        public static final class View$OnClickListenerC13996b implements View.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ View.OnClickListener f31412b;

            public View$OnClickListenerC13996b(View.OnClickListener onClickListener) {
                this.f31412b = onClickListener;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingResultActivity.m26746b(DialogC13994a.this.getContext(), DialogC13994a.this.m2916b(), DialogC13994a.this.f31407b);
                View.OnClickListener onClickListener = this.f31412b;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DialogC13994a(Context context, String str) {
            super(context);
            C15149k.m377b(context, "context");
            C15149k.m377b(str, "roleName");
            this.f31408c = str;
            m25859d(true);
            m25878a(R$drawable.icon_close_white);
            m25862c(ContextCompat.getColor(context, 2131099842));
        }

        /* renamed from: b */
        public final String m2916b() {
            return this.f31408c;
        }

        @Override // gogolook.callgogolook2.view.SimpleInAppDialog
        /* renamed from: b */
        public void mo2915b(int i, View.OnClickListener onClickListener) {
            super.mo2915b(i, new View$OnClickListenerC13996b(onClickListener));
        }
    }

    static {
        new C13993a();
    }

    /* renamed from: a */
    public static final void m2920a() {
        C13978e.f31386a.m9456a("block_page_default_phone_promoted_count", "pref_in_call_tutorial_blocked_failed_display_count", "pref_in_call_tutorial_blocked_failed_never_show", "pref_in_call_tutorial_popup_too_long_display_time", "offlinedb_page_default_phone_promoted");
    }

    /* renamed from: a */
    public static final void m2919a(DialogC13994a aVar) {
        Dialog dialog;
        C15149k.m377b(aVar, "dialog");
        WeakReference<Dialog> weakReference = f31406a.get(aVar.m2916b());
        if (!(weakReference == null || (dialog = weakReference.get()) == null)) {
            C14315y.m1604a(dialog);
        }
        f31406a.put(aVar.m2916b(), new WeakReference<>(aVar));
        if (C14191v.m2255b(aVar.getContext())) {
            aVar.show();
            return;
        }
        Window window = aVar.getWindow();
        if (window != null) {
            window.setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        }
        if (!C13878a3.m3244a(aVar)) {
            CheckTeaserNotificationReceiver.m26396b(aVar.getContext());
        }
    }
}
