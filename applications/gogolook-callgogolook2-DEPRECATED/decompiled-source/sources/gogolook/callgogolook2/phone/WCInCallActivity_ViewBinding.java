package gogolook.callgogolook2.phone;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Chronometer;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.main.dialer.DialpadView;
import gogolook.callgogolook2.view.FunctionButton;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity_ViewBinding.class */
public class WCInCallActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public WCInCallActivity f12240a;

    /* renamed from: b */
    public View f12241b;

    /* renamed from: c */
    public View f12242c;

    /* renamed from: d */
    public View f12243d;

    /* renamed from: e */
    public View f12244e;

    /* renamed from: f */
    public View f12245f;

    /* renamed from: g */
    public View f12246g;

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity_ViewBinding$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity_ViewBinding$a.class */
    public class C4958a extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WCInCallActivity f12247a;

        public C4958a(WCInCallActivity_ViewBinding wCInCallActivity_ViewBinding, WCInCallActivity wCInCallActivity) {
            this.f12247a = wCInCallActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12247a.onActionsClicked(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity_ViewBinding$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity_ViewBinding$b.class */
    public class C4959b extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WCInCallActivity f12248a;

        public C4959b(WCInCallActivity_ViewBinding wCInCallActivity_ViewBinding, WCInCallActivity wCInCallActivity) {
            this.f12248a = wCInCallActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12248a.onActionsClicked(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity_ViewBinding$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity_ViewBinding$c.class */
    public class C4960c extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WCInCallActivity f12249a;

        public C4960c(WCInCallActivity_ViewBinding wCInCallActivity_ViewBinding, WCInCallActivity wCInCallActivity) {
            this.f12249a = wCInCallActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12249a.onActionsClicked(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity_ViewBinding$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity_ViewBinding$d.class */
    public class C4961d extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WCInCallActivity f12250a;

        public C4961d(WCInCallActivity_ViewBinding wCInCallActivity_ViewBinding, WCInCallActivity wCInCallActivity) {
            this.f12250a = wCInCallActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12250a.onActionsClicked(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity_ViewBinding$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity_ViewBinding$e.class */
    public class C4962e extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WCInCallActivity f12251a;

        public C4962e(WCInCallActivity_ViewBinding wCInCallActivity_ViewBinding, WCInCallActivity wCInCallActivity) {
            this.f12251a = wCInCallActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12251a.onActionsClicked(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallActivity_ViewBinding$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallActivity_ViewBinding$f.class */
    public class C4963f extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ WCInCallActivity f12252a;

        public C4963f(WCInCallActivity_ViewBinding wCInCallActivity_ViewBinding, WCInCallActivity wCInCallActivity) {
            this.f12252a = wCInCallActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12252a.onActionsClicked(view);
        }
    }

    @UiThread
    public WCInCallActivity_ViewBinding(WCInCallActivity wCInCallActivity, View view) {
        this.f12240a = wCInCallActivity;
        wCInCallActivity.mBackground = (ViewGroup) Utils.findRequiredViewAsType(view, R$id.incall_background, "field 'mBackground'", ViewGroup.class);
        wCInCallActivity.mBackgroundDark = Utils.findRequiredView(view, R$id.incall_dark_background, "field 'mBackgroundDark'");
        wCInCallActivity.mOnHoldHint = (TextView) Utils.findRequiredViewAsType(view, R$id.call_on_hold_hint, "field 'mOnHoldHint'", TextView.class);
        wCInCallActivity.mMain = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.main, "field 'mMain'", LinearLayout.class);
        wCInCallActivity.mHeader = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.header, "field 'mHeader'", RelativeLayout.class);
        wCInCallActivity.mCallerIdSection = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.caller_id_section, "field 'mCallerIdSection'", RelativeLayout.class);
        wCInCallActivity.mCallerIdViewGroup = (ViewGroup) Utils.findRequiredViewAsType(view, R$id.caller_id, "field 'mCallerIdViewGroup'", ViewGroup.class);
        wCInCallActivity.mBasicFunctions = Utils.findRequiredView(view, R$id.basic_functions_layout, "field 'mBasicFunctions'");
        View findRequiredView = Utils.findRequiredView(view, R$id.mute_action_fab, "field 'mMuteActionFab' and method 'onActionsClicked'");
        wCInCallActivity.mMuteActionFab = (FunctionButton) Utils.castView(findRequiredView, R$id.mute_action_fab, "field 'mMuteActionFab'", FunctionButton.class);
        this.f12241b = findRequiredView;
        findRequiredView.setOnClickListener(new C4958a(this, wCInCallActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R$id.speaker_action_fab, "field 'mSpeakerActionFab' and method 'onActionsClicked'");
        wCInCallActivity.mSpeakerActionFab = (FunctionButton) Utils.castView(findRequiredView2, R$id.speaker_action_fab, "field 'mSpeakerActionFab'", FunctionButton.class);
        this.f12242c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C4959b(this, wCInCallActivity));
        wCInCallActivity.mInputDtmfActionFab = (FunctionButton) Utils.findRequiredViewAsType(view, R$id.input_dtmf_action_fab, "field 'mInputDtmfActionFab'", FunctionButton.class);
        wCInCallActivity.mCallManageFunctions = Utils.findRequiredView(view, R$id.call_manage_layout, "field 'mCallManageFunctions'");
        View findRequiredView3 = Utils.findRequiredView(view, R$id.add_call_action_fab, "field 'mAddCallActionFab' and method 'onActionsClicked'");
        wCInCallActivity.mAddCallActionFab = (FunctionButton) Utils.castView(findRequiredView3, R$id.add_call_action_fab, "field 'mAddCallActionFab'", FunctionButton.class);
        this.f12243d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C4960c(this, wCInCallActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R$id.hold_call_action_fab, "field 'mHoldCallActionFab' and method 'onActionsClicked'");
        wCInCallActivity.mHoldCallActionFab = (FunctionButton) Utils.castView(findRequiredView4, R$id.hold_call_action_fab, "field 'mHoldCallActionFab'", FunctionButton.class);
        this.f12244e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C4961d(this, wCInCallActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R$id.hangup_action_fab, "field 'mHangupActionFab' and method 'onActionsClicked'");
        wCInCallActivity.mHangupActionFab = (ViewGroup) Utils.castView(findRequiredView5, R$id.hangup_action_fab, "field 'mHangupActionFab'", ViewGroup.class);
        this.f12245f = findRequiredView5;
        findRequiredView5.setOnClickListener(new C4962e(this, wCInCallActivity));
        wCInCallActivity.mHangupImageView = (ImageView) Utils.findRequiredViewAsType(view, R$id.hangup_action_fab_image, "field 'mHangupImageView'", ImageView.class);
        wCInCallActivity.mHangupTextView = (TextView) Utils.findRequiredViewAsType(view, R$id.action_text_hangup, "field 'mHangupTextView'", TextView.class);
        View findRequiredView6 = Utils.findRequiredView(view, R$id.pickup_action_fab, "field 'mPickupActionFab' and method 'onActionsClicked'");
        wCInCallActivity.mPickupActionFab = (ViewGroup) Utils.castView(findRequiredView6, R$id.pickup_action_fab, "field 'mPickupActionFab'", ViewGroup.class);
        this.f12246g = findRequiredView6;
        findRequiredView6.setOnClickListener(new C4963f(this, wCInCallActivity));
        wCInCallActivity.mPickupTextView = (TextView) Utils.findRequiredViewAsType(view, R$id.action_text_pickup, "field 'mPickupTextView'", TextView.class);
        wCInCallActivity.mTopMargin = Utils.findRequiredView(view, R$id.top_margin, "field 'mTopMargin'");
        wCInCallActivity.mBottomMargin = Utils.findRequiredView(view, R$id.bottom_margin, "field 'mBottomMargin'");
        wCInCallActivity.mChronometer = (Chronometer) Utils.findRequiredViewAsType(view, 2131362069, "field 'mChronometer'", Chronometer.class);
        wCInCallActivity.mNumber = (TextView) Utils.findRequiredViewAsType(view, R$id.number, "field 'mNumber'", TextView.class);
        wCInCallActivity.mConnectionState = (TextView) Utils.findRequiredViewAsType(view, R$id.connection_state, "field 'mConnectionState'", TextView.class);
        wCInCallActivity.mControlpadLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.controlpad, "field 'mControlpadLayout'", RelativeLayout.class);
        wCInCallActivity.mDialpadHideTextView = (TextView) Utils.findRequiredViewAsType(view, R$id.btn_hide, "field 'mDialpadHideTextView'", TextView.class);
        wCInCallActivity.mDialpadViewLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.dialpad, "field 'mDialpadViewLayout'", LinearLayout.class);
        wCInCallActivity.mDialpadView = (DialpadView) Utils.findRequiredViewAsType(view, R$id.dialpad_view, "field 'mDialpadView'", DialpadView.class);
        wCInCallActivity.mCallActionLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R$id.call_action, "field 'mCallActionLayout'", ViewGroup.class);
        wCInCallActivity.mSwipeUpText = (TextView) Utils.findRequiredViewAsType(view, R$id.swipe_up_text, "field 'mSwipeUpText'", TextView.class);
        wCInCallActivity.mSwipeDownText = (TextView) Utils.findRequiredViewAsType(view, R$id.swipe_down_text, "field 'mSwipeDownText'", TextView.class);
        wCInCallActivity.mCallActionFab = (ViewGroup) Utils.findRequiredViewAsType(view, R$id.call_action_fab, "field 'mCallActionFab'", ViewGroup.class);
        wCInCallActivity.mCallActionPickup = (ImageView) Utils.findRequiredViewAsType(view, R$id.call_action_fab_pickup, "field 'mCallActionPickup'", ImageView.class);
        wCInCallActivity.mCallActionHangup = (ImageView) Utils.findRequiredViewAsType(view, R$id.call_action_fab_hangup, "field 'mCallActionHangup'", ImageView.class);
        wCInCallActivity.mSlideToBlock = (ViewGroup) Utils.findRequiredViewAsType(view, R$id.slide_to_block, "field 'mSlideToBlock'", ViewGroup.class);
        wCInCallActivity.mSlideToBlockMask = (ImageView) Utils.findRequiredViewAsType(view, R$id.slide_to_block_mask, "field 'mSlideToBlockMask'", ImageView.class);
        Context context = view.getContext();
        wCInCallActivity.mStateTextColorLight = ContextCompat.getColor(context, 2131099950);
        wCInCallActivity.mStateTextColorDark = ContextCompat.getColor(context, 2131099948);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WCInCallActivity wCInCallActivity = this.f12240a;
        if (wCInCallActivity != null) {
            this.f12240a = null;
            wCInCallActivity.mBackground = null;
            wCInCallActivity.mBackgroundDark = null;
            wCInCallActivity.mOnHoldHint = null;
            wCInCallActivity.mMain = null;
            wCInCallActivity.mHeader = null;
            wCInCallActivity.mCallerIdSection = null;
            wCInCallActivity.mCallerIdViewGroup = null;
            wCInCallActivity.mBasicFunctions = null;
            wCInCallActivity.mMuteActionFab = null;
            wCInCallActivity.mSpeakerActionFab = null;
            wCInCallActivity.mInputDtmfActionFab = null;
            wCInCallActivity.mCallManageFunctions = null;
            wCInCallActivity.mAddCallActionFab = null;
            wCInCallActivity.mHoldCallActionFab = null;
            wCInCallActivity.mHangupActionFab = null;
            wCInCallActivity.mHangupImageView = null;
            wCInCallActivity.mHangupTextView = null;
            wCInCallActivity.mPickupActionFab = null;
            wCInCallActivity.mPickupTextView = null;
            wCInCallActivity.mTopMargin = null;
            wCInCallActivity.mBottomMargin = null;
            wCInCallActivity.mChronometer = null;
            wCInCallActivity.mNumber = null;
            wCInCallActivity.mConnectionState = null;
            wCInCallActivity.mControlpadLayout = null;
            wCInCallActivity.mDialpadHideTextView = null;
            wCInCallActivity.mDialpadViewLayout = null;
            wCInCallActivity.mDialpadView = null;
            wCInCallActivity.mCallActionLayout = null;
            wCInCallActivity.mSwipeUpText = null;
            wCInCallActivity.mSwipeDownText = null;
            wCInCallActivity.mCallActionFab = null;
            wCInCallActivity.mCallActionPickup = null;
            wCInCallActivity.mCallActionHangup = null;
            wCInCallActivity.mSlideToBlock = null;
            wCInCallActivity.mSlideToBlockMask = null;
            this.f12241b.setOnClickListener(null);
            this.f12241b = null;
            this.f12242c.setOnClickListener(null);
            this.f12242c = null;
            this.f12243d.setOnClickListener(null);
            this.f12243d = null;
            this.f12244e.setOnClickListener(null);
            this.f12244e = null;
            this.f12245f.setOnClickListener(null);
            this.f12245f = null;
            this.f12246g.setOnClickListener(null);
            this.f12246g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
