package com.tmobile.services.nameid.scamBlock;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.airbnb.lottie.LottieAnimationView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MataErrorInterpreter;
import com.tmobile.services.nameid.utility.WidgetUtils;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bH\u0010\u0006J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0006J-\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0004H\u0016¢\u0006\u0004\b \u0010\u0006J\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\u0006J\u0017\u0010$\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\u00042\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u001f\u0010-\u001a\u00020\u00042\u0006\u0010*\u001a\u00020&2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0004H\u0016¢\u0006\u0004\b/\u0010\u0006J\u000f\u00100\u001a\u00020\u0004H\u0016¢\u0006\u0004\b0\u0010\u0006R\u0016\u00101\u001a\u00020+8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00104\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00107\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b9\u00108R\u0016\u0010:\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u00108R\u0016\u0010;\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u00108R\u0016\u0010<\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010?\u001a\u00020>8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010B\u001a\u00020A8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010E\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010G\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bG\u00108¨\u0006I"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockFragment;", "Lcom/tmobile/services/nameid/TabFragmentInterface;", "com/tmobile/services/nameid/scamBlock/ScamBlock$View", "Landroidx/fragment/app/Fragment;", "", "disableButton", "()V", "disableScamCounter", "enableButton", "enableScamCounter", "Lcom/tmobile/services/nameid/NameIDPage;", "getPage", "()Lcom/tmobile/services/nameid/NameIDPage;", "Lcom/tmobile/services/nameid/MainActivity$Tabs;", "getTabType", "()Lcom/tmobile/services/nameid/MainActivity$Tabs;", "goToDoMore", "goToScamBlockCounter", "loopPulseAnimation", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onResume", "playPulseAnimation", "setActive", "setInactive", "setPendingActive", "setPendingInactive", "", "n", "setScamCallCount", "(I)V", "", "visible", "setVisible", "(Z)V", "add", "", "errorCode", "showAddRemoveError", "(ZLjava/lang/String;)V", "showConfirmationDialog", "showEnableNotifications", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "activationButton", "Lcom/tmobile/services/nameid/ui/NameIDButton;", "Landroid/widget/TextView;", "countSub1TextView", "Landroid/widget/TextView;", "countSub2TextView", "countTextView", "disclaimer", "doMoreLink", "Landroid/view/View;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Presenter;", "presenter", "Lcom/tmobile/services/nameid/scamBlock/ScamBlock$Presenter;", "Lcom/airbnb/lottie/LottieAnimationView;", "scamPulseAnim", "Lcom/airbnb/lottie/LottieAnimationView;", "Landroid/widget/ImageView;", "scamRadarBackground", "Landroid/widget/ImageView;", "stateTextView", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockFragment.class */
public final class ScamBlockFragment extends Fragment implements TabFragmentInterface, ScamBlock.View {

    /* renamed from: f */
    private final String f13796f = "ScamBlockFragment#";

    /* renamed from: g */
    private ScamBlock.Presenter f13797g;

    /* renamed from: h */
    private ImageView f13798h;

    /* renamed from: i */
    private LottieAnimationView f13799i;

    /* renamed from: j */
    private TextView f13800j;

    /* renamed from: k */
    private TextView f13801k;

    /* renamed from: l */
    private TextView f13802l;

    /* renamed from: m */
    private TextView f13803m;

    /* renamed from: n */
    private NameIDButton f13804n;

    /* renamed from: o */
    private TextView f13805o;

    /* renamed from: p */
    private View f13806p;

    /* renamed from: q */
    private HashMap f13807q;

    /* renamed from: H0 */
    public static final /* synthetic */ ScamBlock.Presenter m6303H0(ScamBlockFragment scamBlockFragment) {
        ScamBlock.Presenter presenter = scamBlockFragment.f13797g;
        if (presenter != null) {
            return presenter;
        }
        Intrinsics.m1814u("presenter");
        throw null;
    }

    /* renamed from: K0 */
    private final void m6300K0() {
        NameIDButton nameIDButton = this.f13804n;
        if (nameIDButton != null) {
            nameIDButton.setOnClickListener(null);
            NameIDButton nameIDButton2 = this.f13804n;
            if (nameIDButton2 != null) {
                nameIDButton2.setClickable(false);
            } else {
                Intrinsics.m1814u("activationButton");
                throw null;
            }
        } else {
            Intrinsics.m1814u("activationButton");
            throw null;
        }
    }

    /* renamed from: L0 */
    private final void m6299L0() {
        TextView textView = this.f13801k;
        if (textView != null) {
            textView.setClickable(false);
            TextView textView2 = this.f13802l;
            if (textView2 != null) {
                textView2.setClickable(false);
                TextView textView3 = this.f13803m;
                if (textView3 != null) {
                    textView3.setClickable(false);
                    TextView textView4 = this.f13801k;
                    if (textView4 != null) {
                        textView4.setTextColor(getResources().getColor(C1517R.C1518color.white));
                    } else {
                        Intrinsics.m1814u("countTextView");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("countSub2TextView");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("countSub1TextView");
                throw null;
            }
        } else {
            Intrinsics.m1814u("countTextView");
            throw null;
        }
    }

    /* renamed from: M0 */
    private final void m6297M0() {
        NameIDButton nameIDButton = this.f13804n;
        if (nameIDButton != null) {
            nameIDButton.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockFragment$enableButton$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScamBlockFragment.m6303H0(ScamBlockFragment.this).mo6282d(false);
                }
            });
        } else {
            Intrinsics.m1814u("activationButton");
            throw null;
        }
    }

    /* renamed from: N0 */
    private final void m6296N0() {
        TextView textView = this.f13801k;
        if (textView != null) {
            textView.setClickable(true);
            TextView textView2 = this.f13802l;
            if (textView2 != null) {
                textView2.setClickable(true);
                TextView textView3 = this.f13803m;
                if (textView3 != null) {
                    textView3.setClickable(true);
                    TextView textView4 = this.f13801k;
                    if (textView4 != null) {
                        textView4.setTextColor(getResources().getColor(C1517R.C1518color.magenta_or_gold_orange));
                    } else {
                        Intrinsics.m1814u("countTextView");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("countSub2TextView");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("countSub1TextView");
                throw null;
            }
        } else {
            Intrinsics.m1814u("countTextView");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public final void m6295O0() {
        FragmentActivity activity = getActivity();
        Intrinsics.m1832c(activity);
        EventManager.m5725a(activity, "Scam_Block_Do_More");
        AnalyticsWrapper.m5883E("ScamBlockFragment", "scam_block_do_more");
        FragmentActivity activity2 = getActivity();
        if (activity2 != null) {
            ((MainActivity) activity2).m7644E();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P0 */
    public final void m6294P0() {
        FragmentActivity activity = getActivity();
        Intrinsics.m1832c(activity);
        EventManager.m5725a(activity, "Scam_Block_Counter_Entered");
        AnalyticsWrapper.m5883E("ScamBlockFragment", "scam_block_counter");
        ScamBlock.Presenter presenter = this.f13797g;
        if (presenter != null) {
            ScamBlockCounterFragment scamBlockCounterFragment = new ScamBlockCounterFragment(presenter.getState());
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager != null && !fragmentManager.isDestroyed() && !fragmentManager.isStateSaved()) {
                scamBlockCounterFragment.show(fragmentManager, "SCAM_BLOCK_COUNTER");
                return;
            }
            return;
        }
        Intrinsics.m1814u("presenter");
        throw null;
    }

    /* renamed from: Q0 */
    private final void m6292Q0() {
        if (isAdded()) {
            LottieAnimationView lottieAnimationView = this.f13799i;
            if (lottieAnimationView != null) {
                lottieAnimationView.setAnimation("pulse_anim.json");
                LottieAnimationView lottieAnimationView2 = this.f13799i;
                if (lottieAnimationView2 != null) {
                    lottieAnimationView2.m16355r();
                    LottieAnimationView lottieAnimationView3 = this.f13799i;
                    if (lottieAnimationView3 != null) {
                        lottieAnimationView3.setRepeatCount(-1);
                    } else {
                        Intrinsics.m1814u("scamPulseAnim");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("scamPulseAnim");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("scamPulseAnim");
                throw null;
            }
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: A */
    public void mo6306A() {
        if (isAdded()) {
            LottieAnimationView lottieAnimationView = this.f13799i;
            if (lottieAnimationView != null) {
                lottieAnimationView.setAnimation("pulse_anim.json");
                LottieAnimationView lottieAnimationView2 = this.f13799i;
                if (lottieAnimationView2 != null) {
                    lottieAnimationView2.setRepeatCount(2);
                    LottieAnimationView lottieAnimationView3 = this.f13799i;
                    if (lottieAnimationView3 != null) {
                        lottieAnimationView3.m16355r();
                    } else {
                        Intrinsics.m1814u("scamPulseAnim");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("scamPulseAnim");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("scamPulseAnim");
                throw null;
            }
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    @NotNull
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SCAM_BLOCK;
    }

    /* renamed from: G0 */
    public void m6304G0() {
        HashMap hashMap = this.f13807q;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: M */
    public void mo6298M(boolean z, @NotNull String errorCode) {
        Intrinsics.m1830e(errorCode, "errorCode");
        if (isAdded()) {
            if (z) {
                mo6287p();
            } else {
                mo6288m0();
            }
            MataErrorInterpreter.MataAction mataAction = z ? MataErrorInterpreter.MataAction.ADD_SCAM_BLOCK : MataErrorInterpreter.MataAction.REMOVE_SCAM_BLOCK;
            if (getContext() == null || !isAdded()) {
                String str = this.f13796f;
                LogUtil.m5643d(str, "showAddRemoveError - cannot show dialog. Context = " + getContext() + ". isAdded = " + isAdded());
                return;
            }
            NameIDDialogBuilder.Templates templates = NameIDDialogBuilder.f13943m;
            Context context = getContext();
            Intrinsics.m1832c(context);
            Intrinsics.m1831d(context, "context!!");
            NameIDDialogBuilder j = templates.m6134j(mataAction, errorCode, context);
            FragmentActivity activity = getActivity();
            Intrinsics.m1832c(activity);
            Intrinsics.m1831d(activity, "activity!!");
            FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
            Intrinsics.m1831d(supportFragmentManager, "activity!!.supportFragmentManager");
            j.m6160b(supportFragmentManager);
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: Q */
    public void mo6293Q() {
        if (isAdded()) {
            NameIDDialogBuilder.Templates templates = NameIDDialogBuilder.f13943m;
            ScamBlock.Presenter presenter = this.f13797g;
            if (presenter != null) {
                NameIDDialogBuilder n = templates.m6130n(presenter);
                FragmentManager childFragmentManager = getChildFragmentManager();
                Intrinsics.m1831d(childFragmentManager, "childFragmentManager");
                n.m6160b(childFragmentManager);
                return;
            }
            Intrinsics.m1814u("presenter");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: V */
    public void mo6291V() {
        if (isAdded() && getContext() != null) {
            WidgetUtils.m5249X(getChildFragmentManager());
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: a */
    public void mo6290a(int i) {
        String str = this.f13796f;
        LogUtil.m5643d(str, "setScamCallCount = " + i);
        if (isAdded()) {
            TextView textView = this.f13801k;
            if (textView != null) {
                textView.setText(String.valueOf(i));
                if (i > 0) {
                    m6296N0();
                } else {
                    m6299L0();
                }
            } else {
                Intrinsics.m1814u("countTextView");
                throw null;
            }
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: h0 */
    public void mo6289h0() {
        if (isAdded()) {
            LogUtil.m5643d(this.f13796f, "setPendingActive");
            TextView textView = this.f13800j;
            if (textView != null) {
                textView.setText(getString(C1517R.string.scam_block_pending_on));
                TextView textView2 = this.f13802l;
                if (textView2 != null) {
                    textView2.setText(getString(C1517R.string.scam_block_pending_sub1));
                    TextView textView3 = this.f13803m;
                    if (textView3 != null) {
                        textView3.setText(getString(C1517R.string.scam_block_pending_sub2));
                        NameIDButton nameIDButton = this.f13804n;
                        if (nameIDButton != null) {
                            nameIDButton.setText(getString(C1517R.string.scam_block_turning_on));
                            m6300K0();
                            m6299L0();
                            ImageView imageView = this.f13798h;
                            if (imageView != null) {
                                imageView.setImageResource(C1517R.C1519drawable.ic_pulse_inactive);
                                LottieAnimationView lottieAnimationView = this.f13799i;
                                if (lottieAnimationView != null) {
                                    lottieAnimationView.setVisibility(0);
                                    m6292Q0();
                                    TextView textView4 = this.f13801k;
                                    if (textView4 != null) {
                                        textView4.setVisibility(4);
                                        TextView textView5 = this.f13803m;
                                        if (textView5 != null) {
                                            textView5.setTextColor(getResources().getColor(C1517R.C1518color.white));
                                            ColorStateList colorStateList = getResources().getColorStateList(C1517R.C1518color.scam_block_pending_button_tint);
                                            Intrinsics.m1831d(colorStateList, "resources.getColorStateL…lock_pending_button_tint)");
                                            NameIDButton nameIDButton2 = this.f13804n;
                                            if (nameIDButton2 != null) {
                                                nameIDButton2.setBackgroundTintList(colorStateList);
                                                NameIDButton nameIDButton3 = this.f13804n;
                                                if (nameIDButton3 != null) {
                                                    nameIDButton3.setTextColor(getResources().getColor(C1517R.C1518color.white_or_deep_purple));
                                                    NameIDButton nameIDButton4 = this.f13804n;
                                                    if (nameIDButton4 != null) {
                                                        nameIDButton4.setBackground(getResources().getDrawable(C1517R.C1519drawable.bg_rounded_button_background));
                                                        TextView textView6 = this.f13805o;
                                                        if (textView6 != null) {
                                                            textView6.setText(getString(C1517R.string.scam_block_disclaimer));
                                                        } else {
                                                            Intrinsics.m1814u("disclaimer");
                                                            throw null;
                                                        }
                                                    } else {
                                                        Intrinsics.m1814u("activationButton");
                                                        throw null;
                                                    }
                                                } else {
                                                    Intrinsics.m1814u("activationButton");
                                                    throw null;
                                                }
                                            } else {
                                                Intrinsics.m1814u("activationButton");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.m1814u("countSub2TextView");
                                            throw null;
                                        }
                                    } else {
                                        Intrinsics.m1814u("countTextView");
                                        throw null;
                                    }
                                } else {
                                    Intrinsics.m1814u("scamPulseAnim");
                                    throw null;
                                }
                            } else {
                                Intrinsics.m1814u("scamRadarBackground");
                                throw null;
                            }
                        } else {
                            Intrinsics.m1814u("activationButton");
                            throw null;
                        }
                    } else {
                        Intrinsics.m1814u("countSub2TextView");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("countSub1TextView");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("stateTextView");
                throw null;
            }
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: m0 */
    public void mo6288m0() {
        if (isAdded()) {
            LogUtil.m5643d(this.f13796f, "setActive");
            TextView textView = this.f13800j;
            if (textView != null) {
                textView.setText(getString(C1517R.string.scam_block_is_on));
                TextView textView2 = this.f13802l;
                if (textView2 != null) {
                    textView2.setText(getString(C1517R.string.scam_block_calls));
                    TextView textView3 = this.f13803m;
                    if (textView3 != null) {
                        textView3.setText(getString(C1517R.string.scam_block_calls_blocked));
                        NameIDButton nameIDButton = this.f13804n;
                        if (nameIDButton != null) {
                            nameIDButton.setText(getString(C1517R.string.scam_block_turn_off));
                            m6297M0();
                            m6296N0();
                            ImageView imageView = this.f13798h;
                            if (imageView != null) {
                                imageView.setImageResource(C1517R.C1519drawable.ic_pulse_active);
                                LottieAnimationView lottieAnimationView = this.f13799i;
                                if (lottieAnimationView != null) {
                                    lottieAnimationView.setVisibility(0);
                                    mo6306A();
                                    TextView textView4 = this.f13801k;
                                    if (textView4 != null) {
                                        textView4.setVisibility(0);
                                        TextView textView5 = this.f13803m;
                                        if (textView5 != null) {
                                            textView5.setTextColor(getResources().getColor(C1517R.C1518color.magenta_or_gold_orange));
                                            NameIDButton nameIDButton2 = this.f13804n;
                                            if (nameIDButton2 != null) {
                                                nameIDButton2.setBackgroundTintList(null);
                                                NameIDButton nameIDButton3 = this.f13804n;
                                                if (nameIDButton3 != null) {
                                                    nameIDButton3.setTextColor(getResources().getColor(C1517R.C1518color.white));
                                                    NameIDButton nameIDButton4 = this.f13804n;
                                                    if (nameIDButton4 != null) {
                                                        nameIDButton4.setBackground(getResources().getDrawable(C1517R.C1519drawable.scam_block_button_border));
                                                        TextView textView6 = this.f13805o;
                                                        if (textView6 != null) {
                                                            textView6.setText(getString(C1517R.string.scam_block_disclaimer_active));
                                                        } else {
                                                            Intrinsics.m1814u("disclaimer");
                                                            throw null;
                                                        }
                                                    } else {
                                                        Intrinsics.m1814u("activationButton");
                                                        throw null;
                                                    }
                                                } else {
                                                    Intrinsics.m1814u("activationButton");
                                                    throw null;
                                                }
                                            } else {
                                                Intrinsics.m1814u("activationButton");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.m1814u("countSub2TextView");
                                            throw null;
                                        }
                                    } else {
                                        Intrinsics.m1814u("countTextView");
                                        throw null;
                                    }
                                } else {
                                    Intrinsics.m1814u("scamPulseAnim");
                                    throw null;
                                }
                            } else {
                                Intrinsics.m1814u("scamRadarBackground");
                                throw null;
                            }
                        } else {
                            Intrinsics.m1814u("activationButton");
                            throw null;
                        }
                    } else {
                        Intrinsics.m1814u("countSub2TextView");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("countSub1TextView");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("stateTextView");
                throw null;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        LogUtil.m5643d(this.f13796f, "onCreateView started");
        View inflate = inflater.inflate(C1517R.layout.fragment_scam_block, viewGroup, false);
        View findViewById = inflate.findViewById(C1517R.C1520id.scam_radar_background);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.scam_radar_background)");
        this.f13798h = (ImageView) findViewById;
        View findViewById2 = inflate.findViewById(C1517R.C1520id.scam_radar_pulse);
        Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.scam_radar_pulse)");
        this.f13799i = (LottieAnimationView) findViewById2;
        View findViewById3 = inflate.findViewById(C1517R.C1520id.state_text);
        Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.state_text)");
        this.f13800j = (TextView) findViewById3;
        View findViewById4 = inflate.findViewById(C1517R.C1520id.count_text);
        Intrinsics.m1831d(findViewById4, "view.findViewById(R.id.count_text)");
        TextView textView = (TextView) findViewById4;
        this.f13801k = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockFragment$onCreateView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScamBlockFragment.this.m6294P0();
                }
            });
            View findViewById5 = inflate.findViewById(C1517R.C1520id.count_subtitle1);
            Intrinsics.m1831d(findViewById5, "view.findViewById(R.id.count_subtitle1)");
            TextView textView2 = (TextView) findViewById5;
            this.f13802l = textView2;
            if (textView2 != null) {
                textView2.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockFragment$onCreateView$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ScamBlockFragment.this.m6294P0();
                    }
                });
                View findViewById6 = inflate.findViewById(C1517R.C1520id.count_subtitle2);
                Intrinsics.m1831d(findViewById6, "view.findViewById(R.id.count_subtitle2)");
                TextView textView3 = (TextView) findViewById6;
                this.f13803m = textView3;
                if (textView3 != null) {
                    textView3.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockFragment$onCreateView$3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ScamBlockFragment.this.m6294P0();
                        }
                    });
                    View findViewById7 = inflate.findViewById(C1517R.C1520id.scam_activation_button);
                    Intrinsics.m1831d(findViewById7, "view.findViewById(R.id.scam_activation_button)");
                    this.f13804n = (NameIDButton) findViewById7;
                    View findViewById8 = inflate.findViewById(C1517R.C1520id.scam_block_disclaimer_text);
                    Intrinsics.m1831d(findViewById8, "view.findViewById(R.id.scam_block_disclaimer_text)");
                    this.f13805o = (TextView) findViewById8;
                    View findViewById9 = inflate.findViewById(C1517R.C1520id.do_more_text_conatiner);
                    Intrinsics.m1831d(findViewById9, "view.findViewById(R.id.do_more_text_conatiner)");
                    this.f13806p = findViewById9;
                    if (findViewById9 != null) {
                        findViewById9.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockFragment$onCreateView$4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                ScamBlockFragment.this.m6295O0();
                            }
                        });
                        mo6287p();
                        this.f13797g = new ScamBlockPresenter(this, ScamBlock.f13766d.m6335a());
                        return inflate;
                    }
                    Intrinsics.m1814u("doMoreLink");
                    throw null;
                }
                Intrinsics.m1814u("countSub2TextView");
                throw null;
            }
            Intrinsics.m1814u("countSub1TextView");
            throw null;
        }
        Intrinsics.m1814u("countTextView");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m6304G0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Context context = getContext();
        if (context != null) {
            MainActivity mainActivity = (MainActivity) context;
            mainActivity.m7565u0();
            View view = this.f13806p;
            if (view != null) {
                view.setVisibility(mainActivity.m7587j() ? 8 : 0);
            } else {
                Intrinsics.m1814u("doMoreLink");
                throw null;
            }
        } else {
            throw new NullPointerException("null cannot be cast to non-null type com.tmobile.services.nameid.MainActivity");
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: p */
    public void mo6287p() {
        if (isAdded()) {
            LogUtil.m5643d(this.f13796f, "setInactive");
            TextView textView = this.f13800j;
            if (textView != null) {
                textView.setText(getString(C1517R.string.scam_block_is_off));
                TextView textView2 = this.f13802l;
                if (textView2 != null) {
                    textView2.setText(getString(C1517R.string.scam_block_calls));
                    TextView textView3 = this.f13803m;
                    if (textView3 != null) {
                        textView3.setText(getString(C1517R.string.scam_block_calls_received));
                        NameIDButton nameIDButton = this.f13804n;
                        if (nameIDButton != null) {
                            nameIDButton.setText(getString(C1517R.string.scam_block_turn_on));
                            m6297M0();
                            m6296N0();
                            ImageView imageView = this.f13798h;
                            if (imageView != null) {
                                imageView.setImageResource(C1517R.C1519drawable.ic_pulse_inactive);
                                LottieAnimationView lottieAnimationView = this.f13799i;
                                if (lottieAnimationView != null) {
                                    lottieAnimationView.setVisibility(8);
                                    TextView textView4 = this.f13801k;
                                    if (textView4 != null) {
                                        textView4.setVisibility(0);
                                        TextView textView5 = this.f13803m;
                                        if (textView5 != null) {
                                            textView5.setTextColor(getResources().getColor(C1517R.C1518color.white));
                                            ColorStateList colorStateList = getResources().getColorStateList(C1517R.C1518color.scam_block_off_button_tint);
                                            Intrinsics.m1831d(colorStateList, "resources.getColorStateL…am_block_off_button_tint)");
                                            NameIDButton nameIDButton2 = this.f13804n;
                                            if (nameIDButton2 != null) {
                                                nameIDButton2.setBackgroundTintList(colorStateList);
                                                NameIDButton nameIDButton3 = this.f13804n;
                                                if (nameIDButton3 != null) {
                                                    nameIDButton3.setTextColor(getResources().getColor(C1517R.C1518color.white));
                                                    NameIDButton nameIDButton4 = this.f13804n;
                                                    if (nameIDButton4 != null) {
                                                        nameIDButton4.setBackground(getResources().getDrawable(C1517R.C1519drawable.bg_rounded_button_background));
                                                        TextView textView6 = this.f13805o;
                                                        if (textView6 != null) {
                                                            textView6.setText(getString(C1517R.string.scam_block_disclaimer));
                                                        } else {
                                                            Intrinsics.m1814u("disclaimer");
                                                            throw null;
                                                        }
                                                    } else {
                                                        Intrinsics.m1814u("activationButton");
                                                        throw null;
                                                    }
                                                } else {
                                                    Intrinsics.m1814u("activationButton");
                                                    throw null;
                                                }
                                            } else {
                                                Intrinsics.m1814u("activationButton");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.m1814u("countSub2TextView");
                                            throw null;
                                        }
                                    } else {
                                        Intrinsics.m1814u("countTextView");
                                        throw null;
                                    }
                                } else {
                                    Intrinsics.m1814u("scamPulseAnim");
                                    throw null;
                                }
                            } else {
                                Intrinsics.m1814u("scamRadarBackground");
                                throw null;
                            }
                        } else {
                            Intrinsics.m1814u("activationButton");
                            throw null;
                        }
                    } else {
                        Intrinsics.m1814u("countSub2TextView");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("countSub1TextView");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("stateTextView");
                throw null;
            }
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        String str = this.f13796f;
        LogUtil.m5643d(str, "setVisible called with visible = " + z);
        if (z) {
            MainActivity.m7572q0(getString(C1517R.string.con_desc_scam_block), getContext());
        }
        ScamBlock.Presenter presenter = this.f13797g;
        if (presenter != null) {
            presenter.mo6283c(z);
        } else {
            Intrinsics.m1814u("presenter");
            throw null;
        }
    }

    @Override // com.tmobile.services.nameid.scamBlock.ScamBlock.View
    /* renamed from: t0 */
    public void mo6286t0() {
        if (isAdded()) {
            LogUtil.m5643d(this.f13796f, "setPendingInactive");
            TextView textView = this.f13800j;
            if (textView != null) {
                textView.setText(getString(C1517R.string.scam_block_pending_off));
                TextView textView2 = this.f13802l;
                if (textView2 != null) {
                    textView2.setText(getString(C1517R.string.scam_block_pending_sub1));
                    TextView textView3 = this.f13803m;
                    if (textView3 != null) {
                        textView3.setText(getString(C1517R.string.scam_block_pending_sub2));
                        NameIDButton nameIDButton = this.f13804n;
                        if (nameIDButton != null) {
                            nameIDButton.setText(getString(C1517R.string.scam_block_turning_off));
                            m6300K0();
                            m6299L0();
                            ImageView imageView = this.f13798h;
                            if (imageView != null) {
                                imageView.setImageResource(C1517R.C1519drawable.ic_pulse_inactive);
                                LottieAnimationView lottieAnimationView = this.f13799i;
                                if (lottieAnimationView != null) {
                                    lottieAnimationView.setVisibility(0);
                                    m6292Q0();
                                    TextView textView4 = this.f13801k;
                                    if (textView4 != null) {
                                        textView4.setVisibility(4);
                                        TextView textView5 = this.f13803m;
                                        if (textView5 != null) {
                                            textView5.setTextColor(getResources().getColor(C1517R.C1518color.white));
                                            ColorStateList colorStateList = getResources().getColorStateList(C1517R.C1518color.scam_block_pending_button_tint);
                                            Intrinsics.m1831d(colorStateList, "resources.getColorStateL…lock_pending_button_tint)");
                                            NameIDButton nameIDButton2 = this.f13804n;
                                            if (nameIDButton2 != null) {
                                                nameIDButton2.setBackgroundTintList(colorStateList);
                                                NameIDButton nameIDButton3 = this.f13804n;
                                                if (nameIDButton3 != null) {
                                                    nameIDButton3.setTextColor(getResources().getColor(C1517R.C1518color.white_or_deep_purple));
                                                    NameIDButton nameIDButton4 = this.f13804n;
                                                    if (nameIDButton4 != null) {
                                                        nameIDButton4.setBackground(getResources().getDrawable(C1517R.C1519drawable.bg_rounded_button_background));
                                                        TextView textView6 = this.f13805o;
                                                        if (textView6 != null) {
                                                            textView6.setText(getString(C1517R.string.scam_block_disclaimer_active));
                                                        } else {
                                                            Intrinsics.m1814u("disclaimer");
                                                            throw null;
                                                        }
                                                    } else {
                                                        Intrinsics.m1814u("activationButton");
                                                        throw null;
                                                    }
                                                } else {
                                                    Intrinsics.m1814u("activationButton");
                                                    throw null;
                                                }
                                            } else {
                                                Intrinsics.m1814u("activationButton");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.m1814u("countSub2TextView");
                                            throw null;
                                        }
                                    } else {
                                        Intrinsics.m1814u("countTextView");
                                        throw null;
                                    }
                                } else {
                                    Intrinsics.m1814u("scamPulseAnim");
                                    throw null;
                                }
                            } else {
                                Intrinsics.m1814u("scamRadarBackground");
                                throw null;
                            }
                        } else {
                            Intrinsics.m1814u("activationButton");
                            throw null;
                        }
                    } else {
                        Intrinsics.m1814u("countSub2TextView");
                        throw null;
                    }
                } else {
                    Intrinsics.m1814u("countSub1TextView");
                    throw null;
                }
            } else {
                Intrinsics.m1814u("stateTextView");
                throw null;
            }
        }
    }
}
