package p193e.p194a.p195a.p200c;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18174n;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.p700d2.AbstractC13231h;
import p193e.p194a.p682e.p700d2.C13238o;
import s1.a.l;
import s1.s;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� b2\u00020\u00012\u00020\u0002:\u0001BB\u0007¢\u0006\u0004\ba\u0010\u0019J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010 \u001a\u00020\u001f2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0019J/\u0010)\u001a\u00020\u00052\u0006\u0010$\u001a\u00020#2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%2\b\u0010(\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b)\u0010*J\u0017\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b/\u0010\u0019J\u0017\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0019J7\u00109\u001a\u0002082\u0006\u00105\u001a\u00020&2\b\b\u0001\u00106\u001a\u00020\u001a2\u0014\u0010,\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0005\u0018\u000107H\u0002¢\u0006\u0004\b9\u0010:R\u001d\u0010@\u001a\u00020;8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\"\u0010H\u001a\u00020A8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\"\u0010P\u001a\u00020I8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010X\u001a\u00020Q8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bR\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010`\u001a\u00020Y8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_¨\u0006c"}, d2 = {"Le/a/a/c/m;", "Le/m/a/g/e/e;", "Le/a/a/c/u6;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "yg", "()V", "", "actionId", "titleRes", "G4", "(II)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onDetach", "Lcom/truecaller/messaging/data/types/Message;", "message", "", "", "emojiList", "pickedEmoji", "xe", "(Lcom/truecaller/messaging/data/types/Message;Ljava/util/List;Ljava/lang/String;)V", "Le/a/a/c/g3;", "action", "oq", "(Le/a/a/c/g3;)V", "ad", "Landroid/text/SpannableStringBuilder;", "text", "nA", "(Landroid/text/SpannableStringBuilder;)V", "jx", "title", "drawableRes", "Lkotlin/Function1;", "Landroidx/appcompat/widget/AppCompatTextView;", "QA", "(Ljava/lang/String;ILs1/z/b/l;)Landroidx/appcompat/widget/AppCompatTextView;", "Le/a/m3/n;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/n;", "binding", "Le/a/a/c/s4;", AbstractC2405c.f7629a, "Le/a/a/c/s4;", "PA", "()Le/a/a/c/s4;", "setMessagesPresenter", "(Le/a/a/c/s4;)V", "messagesPresenter", "Le/a/a/c/r6;", "d", "Le/a/a/c/r6;", "getPresenter", "()Le/a/a/c/r6;", "setPresenter", "(Le/a/a/c/r6;)V", "presenter", "Le/a/a/c/h3;", "a", "Le/a/a/c/h3;", "getActionModePresenter", "()Le/a/a/c/h3;", "setActionModePresenter", "(Le/a/a/c/h3;)V", "actionModePresenter", "Le/a/a/c/f4;", C22021b.f61237c, "Le/a/a/c/f4;", "getInputPresenter", "()Le/a/a/c/f4;", "setInputPresenter", "(Le/a/a/c/f4;)V", "inputPresenter", "<init>", "g", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.m */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/m.class */
public final class C5512m extends e implements AbstractC5778u6 {

    /* renamed from: f */
    public static final /* synthetic */ l[] f18680f = {C22128a.m8621g0(C5512m.class, "binding", "getBinding()Lcom/truecaller/databinding/BottomSheetMessageActionsBinding;", 0)};

    /* renamed from: g */
    public static final C5514c f18681g = new C5514c(null);
    @Inject

    /* renamed from: a */
    public AbstractC5336h3 f18682a;
    @Inject

    /* renamed from: b */
    public AbstractC5276f4 f18683b;
    @Inject

    /* renamed from: c */
    public AbstractC5719s4 f18684c;
    @Inject

    /* renamed from: d */
    public AbstractC5692r6 f18685d;

    /* renamed from: e */
    public final ViewBindingProperty f18686e = new C19350a(new C5513b());

    /* renamed from: e.a.a.c.m$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/m$b.class */
    public static final class C5513b extends m implements s1.z.b.l<C5512m, C18174n> {
        public C5513b() {
            super(1);
        }

        /* renamed from: d */
        public Object m32999d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131361889;
            AppCompatTextView appCompatTextView = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionContext);
            if (appCompatTextView != null) {
                i = 2131361890;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionCopy);
                if (appCompatTextView2 != null) {
                    i = 2131361891;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionDelete);
                    if (appCompatTextView3 != null) {
                        i = 2131361893;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionDownload);
                        if (appCompatTextView4 != null) {
                            i = 2131361894;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionEdit);
                            if (appCompatTextView5 != null) {
                                i = 2131361895;
                                AppCompatTextView appCompatTextView6 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionFeedback);
                                if (appCompatTextView6 != null) {
                                    i = 2131361896;
                                    AppCompatTextView appCompatTextView7 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionForward);
                                    if (appCompatTextView7 != null) {
                                        i = 2131361899;
                                        AppCompatTextView appCompatTextView8 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionInfo);
                                        if (appCompatTextView8 != null) {
                                            i = 2131361900;
                                            AppCompatTextView appCompatTextView9 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionMarkImportant);
                                            if (appCompatTextView9 != null) {
                                                i = 2131361903;
                                                AppCompatTextView appCompatTextView10 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionMultiSelect);
                                                if (appCompatTextView10 != null) {
                                                    i = 2131361905;
                                                    AppCompatTextView appCompatTextView11 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionNotImportant);
                                                    if (appCompatTextView11 != null) {
                                                        i = 2131361906;
                                                        AppCompatTextView appCompatTextView12 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionNotPromotional);
                                                        if (appCompatTextView12 != null) {
                                                            i = 2131361907;
                                                            AppCompatTextView appCompatTextView13 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionNotSpam);
                                                            if (appCompatTextView13 != null) {
                                                                i = 2131361910;
                                                                AppCompatTextView appCompatTextView14 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionPromotional);
                                                                if (appCompatTextView14 != null) {
                                                                    i = 2131361911;
                                                                    AppCompatTextView appCompatTextView15 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionReply);
                                                                    if (appCompatTextView15 != null) {
                                                                        i = 2131361912;
                                                                        AppCompatTextView appCompatTextView16 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionReschedule);
                                                                        if (appCompatTextView16 != null) {
                                                                            i = 2131361913;
                                                                            AppCompatTextView appCompatTextView17 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionResendSms);
                                                                            if (appCompatTextView17 != null) {
                                                                                i = 2131361917;
                                                                                AppCompatTextView appCompatTextView18 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionSendNow);
                                                                                if (appCompatTextView18 != null) {
                                                                                    i = 2131361918;
                                                                                    AppCompatTextView appCompatTextView19 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionShare);
                                                                                    if (appCompatTextView19 != null) {
                                                                                        i = 2131361919;
                                                                                        AppCompatTextView appCompatTextView20 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionShowInChat);
                                                                                        if (appCompatTextView20 != null) {
                                                                                            i = 2131361920;
                                                                                            AppCompatTextView appCompatTextView21 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionShowOriginal);
                                                                                            if (appCompatTextView21 != null) {
                                                                                                i = 2131361921;
                                                                                                AppCompatTextView appCompatTextView22 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionSpam);
                                                                                                if (appCompatTextView22 != null) {
                                                                                                    i = 2131361926;
                                                                                                    AppCompatTextView appCompatTextView23 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionTranslate);
                                                                                                    if (appCompatTextView23 != null) {
                                                                                                        i = 2131361927;
                                                                                                        AppCompatTextView appCompatTextView24 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.actionViewPdo);
                                                                                                        if (appCompatTextView24 != null) {
                                                                                                            i = 2131363368;
                                                                                                            View findViewById = requireView.findViewById(C2752R.C2754id.dividerActions);
                                                                                                            if (findViewById != null) {
                                                                                                                i = 2131363374;
                                                                                                                View findViewById2 = requireView.findViewById(C2752R.C2754id.dividerReactions);
                                                                                                                if (findViewById2 != null) {
                                                                                                                    i = 2131364566;
                                                                                                                    LinearLayout linearLayout = (LinearLayout) requireView.findViewById(C2752R.C2754id.layoutInner);
                                                                                                                    if (linearLayout != null) {
                                                                                                                        LinearLayout linearLayout2 = (LinearLayout) requireView;
                                                                                                                        i = 2131365557;
                                                                                                                        NestedScrollView findViewById3 = requireView.findViewById(2131365557);
                                                                                                                        if (findViewById3 != null) {
                                                                                                                            i = 2131366458;
                                                                                                                            AppCompatTextView appCompatTextView25 = (AppCompatTextView) requireView.findViewById(C2752R.C2754id.timestampText);
                                                                                                                            if (appCompatTextView25 != null) {
                                                                                                                                return new C18174n(linearLayout2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, appCompatTextView6, appCompatTextView7, appCompatTextView8, appCompatTextView9, appCompatTextView10, appCompatTextView11, appCompatTextView12, appCompatTextView13, appCompatTextView14, appCompatTextView15, appCompatTextView16, appCompatTextView17, appCompatTextView18, appCompatTextView19, appCompatTextView20, appCompatTextView21, appCompatTextView22, appCompatTextView23, appCompatTextView24, findViewById, findViewById2, linearLayout, linearLayout2, findViewById3, appCompatTextView25);
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.c.m$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/m$c.class */
    public static final class C5514c {
        public C5514c(f fVar) {
        }
    }

    /* renamed from: e.a.a.c.m$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/m$d.class */
    public static final class C5515d extends m implements s1.z.b.l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5515d() {
            super(1);
            C5512m.this = r4;
        }

        /* renamed from: d */
        public Object m32998d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "it");
            AbstractC5336h3 abstractC5336h3 = C5512m.this.f18682a;
            if (abstractC5336h3 != null) {
                abstractC5336h3.mo33219ye(view.getId());
                return s.a;
            }
            s1.z.c.l.l("actionModePresenter");
            throw null;
        }
    }

    /* renamed from: e.a.a.c.m$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/m$e.class */
    public static final class DialogInterface$OnShowListenerC5516e implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f18688a;

        /* renamed from: b */
        public final /* synthetic */ C5512m f18689b;

        /* renamed from: e.a.a.c.m$e$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/m$e$a.class */
        public static final class C5517a extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5517a() {
                super(0);
                DialogInterface$OnShowListenerC5516e.this = r4;
            }

            public Object invoke() {
                int i;
                int i2;
                BottomSheetBehavior<FrameLayout> m25915p0 = C10480a.m25915p0(DialogInterface$OnShowListenerC5516e.this.f18689b);
                if (m25915p0 != null) {
                    View view = DialogInterface$OnShowListenerC5516e.this.f18689b.getView();
                    View findViewById = view != null ? view.findViewById(C2752R.C2754id.actionInfo) : null;
                    if (findViewById == null || !C19286f.m13663p(findViewById)) {
                        Context context = DialogInterface$OnShowListenerC5516e.this.f18688a.getContext();
                        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
                        i = context.getResources().getDimensionPixelSize(C2752R.dimen.action_mode_bottom_sheet_peek);
                    } else {
                        s1.z.c.l.e(findViewById, "$this$getVerticalPosition");
                        int[] iArr = new int[2];
                        findViewById.getLocationInWindow(iArr);
                        int i3 = iArr[1];
                        View view2 = DialogInterface$OnShowListenerC5516e.this.f18689b.getView();
                        if (view2 != null) {
                            s1.z.c.l.e(view2, "$this$getVerticalPosition");
                            int[] iArr2 = new int[2];
                            view2.getLocationInWindow(iArr2);
                            i2 = iArr2[1];
                        } else {
                            i2 = 0;
                        }
                        i = ((findViewById.getMeasuredHeight() / 2) + i3) - i2;
                    }
                    m25915p0.L(i);
                }
                return s.a;
            }
        }

        public DialogInterface$OnShowListenerC5516e(Dialog dialog, C5512m c5512m) {
            this.f18688a = dialog;
            this.f18689b = c5512m;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            View view = this.f18689b.getView();
            if (view != null) {
                C19286f.m13654y(view, new C5517a());
            }
        }
    }

    /* renamed from: e.a.a.c.m$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/m$f.class */
    public static final class C5518f implements AbstractC13231h {

        /* renamed from: b */
        public final /* synthetic */ Message f18692b;

        /* renamed from: c */
        public final /* synthetic */ boolean f18693c;

        public C5518f(Message message, boolean z) {
            C5512m.this = r4;
            this.f18692b = message;
            this.f18693c = z;
        }

        @Override // p193e.p194a.p682e.p700d2.AbstractC13231h
        /* renamed from: a */
        public void mo21987a(String str) {
            AbstractC5276f4 abstractC5276f4 = C5512m.this.f18683b;
            if (abstractC5276f4 == null) {
                s1.z.c.l.l("inputPresenter");
                throw null;
            }
            abstractC5276f4.mo33373M9(str, this.f18692b, this.f18693c ? "addEmojiButton" : "longPress");
            AbstractC5336h3 abstractC5336h3 = C5512m.this.f18682a;
            if (abstractC5336h3 != null) {
                abstractC5336h3.mo32968e();
            } else {
                s1.z.c.l.l("actionModePresenter");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5778u6
    /* renamed from: G4 */
    public void mo32624G4(int i, int i2) {
        TextView textView;
        View view = getView();
        if (view == null || (textView = (TextView) view.findViewById(i)) == null) {
            return;
        }
        textView.setText(i2);
    }

    /* renamed from: OA */
    public final C18174n m33002OA() {
        return (C18174n) this.f18686e.m34468b(this, f18680f[0]);
    }

    /* renamed from: PA */
    public final AbstractC5719s4 m33001PA() {
        AbstractC5719s4 abstractC5719s4 = this.f18684c;
        if (abstractC5719s4 != null) {
            return abstractC5719s4;
        }
        s1.z.c.l.l("messagesPresenter");
        throw null;
    }

    /* renamed from: QA */
    public final AppCompatTextView m33000QA(String str, int i, s1.z.b.l<? super View, s> lVar) {
        AppCompatTextView appCompatTextView = m33002OA().f51349a;
        appCompatTextView.setVisibility(0);
        appCompatTextView.setText(str);
        appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(i, 0, 0, 0);
        appCompatTextView.setOnClickListener(new View$OnClickListenerC5680q6(lVar));
        s1.z.c.l.d(appCompatTextView, "binding.actionContext.ap…istener(action)\n        }");
        return appCompatTextView;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5778u6
    /* renamed from: ad */
    public void mo32623ad() {
        dismiss();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5778u6
    /* renamed from: jx */
    public void mo32622jx() {
        AppCompatTextView appCompatTextView = m33002OA().f51348B;
        s1.z.c.l.d(appCompatTextView, "binding.timestampText");
        C19286f.m13683U(appCompatTextView, false);
        View view = m33002OA().f51374z;
        s1.z.c.l.d(view, "binding.dividerReactions");
        C19286f.m13683U(view, false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5778u6
    /* renamed from: nA */
    public void mo32621nA(SpannableStringBuilder spannableStringBuilder) {
        s1.z.c.l.e(spannableStringBuilder, "text");
        AppCompatTextView appCompatTextView = m33002OA().f51348B;
        s1.z.c.l.d(appCompatTextView, "binding.timestampText");
        appCompatTextView.setText(spannableStringBuilder);
    }

    public void onAttach(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        C5512m.super.onAttach(context);
        AbstractC5784v3 mo33447z9 = ((AbstractC5275f3) context).mo33447z9();
        s1.z.c.l.d(mo33447z9, "(context as ComponentHolder).component");
        C5689r5 c5689r5 = (C5689r5) mo33447z9;
        this.f18682a = (AbstractC5336h3) c5689r5.f19055A.get();
        this.f18683b = (AbstractC5276f4) c5689r5.f19131v.get();
        this.f18684c = (AbstractC5719s4) c5689r5.f19137y.get();
        this.f18685d = (AbstractC5692r6) c5689r5.f19066F0.get();
    }

    public void onCancel(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C5512m.super.onCancel(dialogInterface);
        AbstractC5692r6 abstractC5692r6 = this.f18685d;
        if (abstractC5692r6 != null) {
            abstractC5692r6.mo32637f0();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = C5512m.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        onCreateDialog.setOnShowListener(new DialogInterface$OnShowListenerC5516e(onCreateDialog, this));
        return onCreateDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.bottom_sheet_message_actions, viewGroup, false);
    }

    public void onDetach() {
        C5512m.super.onDetach();
        AbstractC5692r6 abstractC5692r6 = this.f18685d;
        if (abstractC5692r6 != null) {
            abstractC5692r6.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5512m.super.onViewCreated(view, bundle);
        AbstractC5692r6 abstractC5692r6 = this.f18685d;
        if (abstractC5692r6 != null) {
            abstractC5692r6.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5778u6
    /* renamed from: oq */
    public void mo32620oq(C5312g3 c5312g3) {
        s1.z.c.l.e(c5312g3, "action");
        int i = c5312g3.f18171a;
        if (i == 0) {
            String string = getString((int) C2752R.string.ConversationCallNumber, new Object[]{c5312g3.f18172b});
            s1.z.c.l.d(string, "getString(R.string.Conve…nCallNumber, action.text)");
            m33000QA(string, 2131232403, new a(1, this, c5312g3));
        } else if (i == 1) {
            String string2 = getString((int) C2752R.string.ConversationTopSave);
            s1.z.c.l.d(string2, "getString(R.string.ConversationTopSave)");
            m33000QA(string2, 2131232431, new a(0, this, c5312g3));
        } else if (i == 2) {
            String string3 = getString((int) C2752R.string.ConversationOpenLink);
            s1.z.c.l.d(string3, "getString(R.string.ConversationOpenLink)");
            m33000QA(string3, 2131232421, new a(2, this, c5312g3));
        } else if (i != 3) {
        } else {
            String string4 = getString((int) C2752R.string.ConversationOpenMaps);
            s1.z.c.l.d(string4, "getString(R.string.ConversationOpenMaps)");
            m33000QA(string4, 2131232503, new a(3, this, c5312g3));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5778u6
    /* renamed from: xe */
    public void mo32619xe(Message message, List<String> list, String str) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(list, "emojiList");
        Bundle arguments = getArguments();
        boolean z = arguments != null ? arguments.getBoolean("args_show_reactions_tip") : false;
        String string = z ? getString((int) C2752R.string.reactions_tip) : null;
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            C13238o c13238o = new C13238o(context, null, 0, list, str, string);
            m33002OA().f51347A.addView(c13238o, 2);
            c13238o.setOnReactionPickListener(new C5518f(message, z));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5778u6
    /* renamed from: yg */
    public void mo32618yg() {
        Bundle arguments = getArguments();
        m33002OA().f51366r.setCompoundDrawablesRelativeWithIntrinsicBounds((arguments != null ? arguments.getInt("args_scheduled_transport") : 3) == 2 ? 2131232419 : 2131232655, 0, 0, 0);
        AppCompatTextView appCompatTextView = m33002OA().f51363o;
        s1.z.c.l.d(appCompatTextView, "binding.actionReply");
        Bundle arguments2 = getArguments();
        C19286f.m13683U(appCompatTextView, arguments2 != null ? arguments2.getBoolean("args_reply") : false);
        AppCompatTextView appCompatTextView2 = m33002OA().f51355g;
        s1.z.c.l.d(appCompatTextView2, "binding.actionForward");
        Bundle arguments3 = getArguments();
        C19286f.m13683U(appCompatTextView2, arguments3 != null ? arguments3.getBoolean("args_forward") : false);
        AppCompatTextView appCompatTextView3 = m33002OA().f51350b;
        s1.z.c.l.d(appCompatTextView3, "binding.actionCopy");
        Bundle arguments4 = getArguments();
        C19286f.m13683U(appCompatTextView3, arguments4 != null ? arguments4.getBoolean("args_copy") : false);
        AppCompatTextView appCompatTextView4 = m33002OA().f51367s;
        s1.z.c.l.d(appCompatTextView4, "binding.actionShare");
        Bundle arguments5 = getArguments();
        C19286f.m13683U(appCompatTextView4, arguments5 != null ? arguments5.getBoolean("args_share") : false);
        AppCompatTextView appCompatTextView5 = m33002OA().f51370v;
        s1.z.c.l.d(appCompatTextView5, "binding.actionSpam");
        Bundle arguments6 = getArguments();
        C19286f.m13683U(appCompatTextView5, arguments6 != null ? arguments6.getBoolean("args_spam") : false);
        AppCompatTextView appCompatTextView6 = m33002OA().f51356h;
        s1.z.c.l.d(appCompatTextView6, "binding.actionInfo");
        Bundle arguments7 = getArguments();
        C19286f.m13683U(appCompatTextView6, arguments7 != null ? arguments7.getBoolean("args_info") : false);
        AppCompatTextView appCompatTextView7 = m33002OA().f51352d;
        s1.z.c.l.d(appCompatTextView7, "binding.actionDownload");
        Bundle arguments8 = getArguments();
        C19286f.m13683U(appCompatTextView7, arguments8 != null ? arguments8.getBoolean("args_download") : false);
        AppCompatTextView appCompatTextView8 = m33002OA().f51361m;
        s1.z.c.l.d(appCompatTextView8, "binding.actionNotSpam");
        Bundle arguments9 = getArguments();
        C19286f.m13683U(appCompatTextView8, arguments9 != null ? arguments9.getBoolean("args_not_spam") : false);
        AppCompatTextView appCompatTextView9 = m33002OA().f51365q;
        s1.z.c.l.d(appCompatTextView9, "binding.actionResendSms");
        Bundle arguments10 = getArguments();
        C19286f.m13683U(appCompatTextView9, arguments10 != null ? arguments10.getBoolean("args_retry") : false);
        AppCompatTextView appCompatTextView10 = m33002OA().f51353e;
        s1.z.c.l.d(appCompatTextView10, "binding.actionEdit");
        Bundle arguments11 = getArguments();
        C19286f.m13683U(appCompatTextView10, arguments11 != null ? arguments11.getBoolean("args_edit") : false);
        AppCompatTextView appCompatTextView11 = m33002OA().f51354f;
        s1.z.c.l.d(appCompatTextView11, "binding.actionFeedback");
        Bundle arguments12 = getArguments();
        C19286f.m13683U(appCompatTextView11, arguments12 != null ? arguments12.getBoolean("args_send_feedback") : false);
        AppCompatTextView appCompatTextView12 = m33002OA().f51357i;
        s1.z.c.l.d(appCompatTextView12, "binding.actionMarkImportant");
        Bundle arguments13 = getArguments();
        C19286f.m13683U(appCompatTextView12, arguments13 != null ? arguments13.getBoolean("args_mark_important") : false);
        AppCompatTextView appCompatTextView13 = m33002OA().f51359k;
        s1.z.c.l.d(appCompatTextView13, "binding.actionNotImportant");
        Bundle arguments14 = getArguments();
        C19286f.m13683U(appCompatTextView13, arguments14 != null ? arguments14.getBoolean("args_not_important") : false);
        AppCompatTextView appCompatTextView14 = m33002OA().f51366r;
        s1.z.c.l.d(appCompatTextView14, "binding.actionSendNow");
        Bundle arguments15 = getArguments();
        C19286f.m13683U(appCompatTextView14, arguments15 != null ? arguments15.getBoolean("args_send_now") : false);
        AppCompatTextView appCompatTextView15 = m33002OA().f51364p;
        s1.z.c.l.d(appCompatTextView15, "binding.actionReschedule");
        Bundle arguments16 = getArguments();
        C19286f.m13683U(appCompatTextView15, arguments16 != null ? arguments16.getBoolean("args_reschedule") : false);
        AppCompatTextView appCompatTextView16 = m33002OA().f51368t;
        s1.z.c.l.d(appCompatTextView16, "binding.actionShowInChat");
        Bundle arguments17 = getArguments();
        C19286f.m13683U(appCompatTextView16, arguments17 != null ? arguments17.getBoolean("args_show_in_chat") : false);
        AppCompatTextView appCompatTextView17 = m33002OA().f51371w;
        s1.z.c.l.d(appCompatTextView17, "binding.actionTranslate");
        Bundle arguments18 = getArguments();
        C19286f.m13683U(appCompatTextView17, arguments18 != null ? arguments18.getBoolean("args_can_translate") : false);
        AppCompatTextView appCompatTextView18 = m33002OA().f51369u;
        s1.z.c.l.d(appCompatTextView18, "binding.actionShowOriginal");
        Bundle arguments19 = getArguments();
        C19286f.m13683U(appCompatTextView18, arguments19 != null ? arguments19.getBoolean("args_show_original") : false);
        AppCompatTextView appCompatTextView19 = m33002OA().f51372x;
        s1.z.c.l.d(appCompatTextView19, "binding.actionViewPdo");
        Bundle arguments20 = getArguments();
        C19286f.m13683U(appCompatTextView19, arguments20 != null ? arguments20.getBoolean("args_show_pdo_viewer") : false);
        AppCompatTextView appCompatTextView20 = m33002OA().f51362n;
        s1.z.c.l.d(appCompatTextView20, "binding.actionPromotional");
        Bundle arguments21 = getArguments();
        C19286f.m13683U(appCompatTextView20, arguments21 != null ? arguments21.getBoolean("args_mark_promotional") : false);
        AppCompatTextView appCompatTextView21 = m33002OA().f51360l;
        s1.z.c.l.d(appCompatTextView21, "binding.actionNotPromotional");
        Bundle arguments22 = getArguments();
        C19286f.m13683U(appCompatTextView21, arguments22 != null ? arguments22.getBoolean("args_mark_not_promotional") : false);
        C5515d c5515d = new C5515d();
        View view = C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, C22128a.m8564u1(c5515d, m33002OA().f51363o, this).f51355g, this).f51350b, this).f51367s, this).f51370v, this).f51356h, this).f51358j, this).f51351c, this).f51352d, this).f51361m, this).f51365q, this).f51353e, this).f51354f, this).f51357i, this).f51359k, this).f51366r, this).f51364p, this).f51368t, this).f51371w, this).f51369u, this).f51372x, this).f51362n, this).f51360l, this).f51373y;
        s1.z.c.l.d(view, "binding.dividerActions");
        AppCompatTextView appCompatTextView22 = m33002OA().f51349a;
        s1.z.c.l.d(appCompatTextView22, "binding.actionContext");
        int visibility = appCompatTextView22.getVisibility();
        AppCompatTextView appCompatTextView23 = m33002OA().f51363o;
        s1.z.c.l.d(appCompatTextView23, "binding.actionReply");
        int visibility2 = appCompatTextView23.getVisibility();
        AppCompatTextView appCompatTextView24 = m33002OA().f51355g;
        s1.z.c.l.d(appCompatTextView24, "binding.actionForward");
        int visibility3 = appCompatTextView24.getVisibility();
        AppCompatTextView appCompatTextView25 = m33002OA().f51350b;
        s1.z.c.l.d(appCompatTextView25, "binding.actionCopy");
        int visibility4 = appCompatTextView25.getVisibility();
        AppCompatTextView appCompatTextView26 = m33002OA().f51367s;
        s1.z.c.l.d(appCompatTextView26, "binding.actionShare");
        int visibility5 = appCompatTextView26.getVisibility();
        AppCompatTextView appCompatTextView27 = m33002OA().f51370v;
        s1.z.c.l.d(appCompatTextView27, "binding.actionSpam");
        int visibility6 = appCompatTextView27.getVisibility();
        AppCompatTextView appCompatTextView28 = m33002OA().f51352d;
        s1.z.c.l.d(appCompatTextView28, "binding.actionDownload");
        int visibility7 = appCompatTextView28.getVisibility();
        AppCompatTextView appCompatTextView29 = m33002OA().f51361m;
        s1.z.c.l.d(appCompatTextView29, "binding.actionNotSpam");
        int visibility8 = appCompatTextView29.getVisibility();
        AppCompatTextView appCompatTextView30 = m33002OA().f51365q;
        s1.z.c.l.d(appCompatTextView30, "binding.actionResendSms");
        int visibility9 = appCompatTextView30.getVisibility();
        AppCompatTextView appCompatTextView31 = m33002OA().f51354f;
        s1.z.c.l.d(appCompatTextView31, "binding.actionFeedback");
        int visibility10 = appCompatTextView31.getVisibility();
        AppCompatTextView appCompatTextView32 = m33002OA().f51357i;
        s1.z.c.l.d(appCompatTextView32, "binding.actionMarkImportant");
        int visibility11 = appCompatTextView32.getVisibility();
        AppCompatTextView appCompatTextView33 = m33002OA().f51359k;
        s1.z.c.l.d(appCompatTextView33, "binding.actionNotImportant");
        boolean z = false;
        if ((visibility2 & visibility & visibility3 & visibility4 & visibility5 & visibility6 & visibility7 & visibility8 & visibility9 & visibility10 & visibility11 & appCompatTextView33.getVisibility()) == 0) {
            z = true;
        }
        C19286f.m13683U(view, z);
    }
}
