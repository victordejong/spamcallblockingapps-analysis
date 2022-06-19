package com.truecaller.startup_dialogs.fragments;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import com.truecaller.tcpermissions.PermissionPoller;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.C21846z1;
import p193e.p194a.p1011l.p1012a.AbstractC16599t;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1357x3.AbstractC21394a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e;
import p193e.p194a.p912i4.AbstractC15285o;
import p193e.p194a.p912i4.C15282l;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u00012\u00020\u0002:\u0001OB\u0007¢\u0006\u0004\bN\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0015¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0015¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\tJ-\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u00105\u001a\u00020.8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b?\u0010@R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010HR\u0016\u0010M\u001a\u00020J8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\bK\u0010L¨\u0006P"}, d2 = {"Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;", "Le/a/d5/g/e;", "Landroid/view/View$OnClickListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "QA", "()V", "RA", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onStart", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Le/a/i4/l;", "e", "Le/a/i4/l;", "getNotificationAccessRequester", "()Le/a/i4/l;", "setNotificationAccessRequester", "(Le/a/i4/l;)V", "notificationAccessRequester", "Le/a/p5/a0;", "d", "Le/a/p5/a0;", "getPermissionUtil", "()Le/a/p5/a0;", "setPermissionUtil", "(Le/a/p5/a0;)V", "permissionUtil", "Le/a/p5/g;", AbstractC2405c.f7629a, "Le/a/p5/g;", "getDeviceInfoUtil", "()Le/a/p5/g;", "setDeviceInfoUtil", "(Le/a/p5/g;)V", "deviceInfoUtil", "Le/a/i4/o;", "f", "Le/a/i4/o;", "getNotificationHandlerUtil", "()Le/a/i4/o;", "setNotificationHandlerUtil", "(Le/a/i4/o;)V", "notificationHandlerUtil", "Le/a/x3/a;", C22021b.f61237c, "Le/a/x3/a;", "getAppUpdateActionHelper", "()Le/a/x3/a;", "setAppUpdateActionHelper", "(Le/a/x3/a;)V", "appUpdateActionHelper", "Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;", "h", "Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;", "action", "Le/a/l/a/t;", "g", "Le/a/l/a/t;", "getPremiumNotificationAccessEventLogger", "()Le/a/l/a/t;", "setPremiumNotificationAccessEventLogger", "(Le/a/l/a/t;)V", "premiumNotificationAccessEventLogger", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "PA", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "<init>", "Action", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment.class */
public final class BottomPopupDialogFragment extends AbstractView$OnClickListenerC12621e implements View.OnClickListener {
    @Inject

    /* renamed from: b */
    public AbstractC21394a f14941b;
    @Inject

    /* renamed from: c */
    public AbstractC19230g f14942c;
    @Inject

    /* renamed from: d */
    public AbstractC19219a0 f14943d;
    @Inject

    /* renamed from: e */
    public C15282l f14944e;
    @Inject

    /* renamed from: f */
    public AbstractC15285o f14945f;
    @Inject

    /* renamed from: g */
    public AbstractC16599t f14946g;

    /* renamed from: h */
    public Action f14947h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B/\b\u0002\u0012\b\b\u0001\u0010\f\u001a\u00020\u0007\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u0007\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011B!\b\u0012\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR\u0019\u0010\u000e\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000bj\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;", "", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "getAnalyticsType", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "", "accept", "I", "getAccept", "()I", RemoteMessageConst.Notification.ICON, "getIcon", "text", "getText", "<init>", "(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V", "(Ljava/lang/String;IIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V", "MISSED_CALL_NOTIFICATION", "REQUEST_LOCATION_PERMISSION", "REQUEST_DRAW_PERMISSION", "SOFTWARE_UPDATE", "REQUEST_DO_NOT_DISTURB_ACCESS", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes12-dex2jar.jar:com/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action.class */
    public enum Action {
        MISSED_CALL_NOTIFICATION(C2752R.C2753drawable.ic_allow_notifications, C2752R.string.TipTruecallerNotificationsText, StartupDialogEvent.Type.MissedCalls),
        REQUEST_LOCATION_PERMISSION(C2752R.C2753drawable.ic_location_permission, C2752R.string.PermissionBanner_Location, 2131887190, StartupDialogEvent.Type.AccessLocation),
        REQUEST_DRAW_PERMISSION(C2752R.C2753drawable.ic_draw_permission, C2752R.string.PermissionBanner_Draw, 2131887190, StartupDialogEvent.Type.DrawOverlay),
        SOFTWARE_UPDATE(C2752R.C2753drawable.ic_update, C2752R.string.CallerUpdateAvailable, 2131889114, StartupDialogEvent.Type.SoftwareUpdate),
        REQUEST_DO_NOT_DISTURB_ACCESS(C2752R.C2753drawable.ic_ring_silent, C2752R.string.PermissionBanner_Do_Not_Disturb, 2131887190, StartupDialogEvent.Type.RingSilent);
        
        private final int accept;
        private final StartupDialogEvent.Type analyticsType;
        private final int icon;
        private final int text;

        Action(int i, int i2, int i3, StartupDialogEvent.Type type) {
            this.icon = i;
            this.text = i2;
            this.accept = i3;
            this.analyticsType = type;
        }

        Action(int i, int i2, StartupDialogEvent.Type type) {
            this(i, i2, -1, type);
        }

        public final int getAccept() {
            return this.accept;
        }

        public final StartupDialogEvent.Type getAnalyticsType() {
            return this.analyticsType;
        }

        public final int getIcon() {
            return this.icon;
        }

        public final int getText() {
            return this.text;
        }
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e
    /* renamed from: PA */
    public StartupDialogEvent.Type mo22805PA() {
        Action action = this.f14947h;
        if (action != null) {
            return action.getAnalyticsType();
        }
        l.l("action");
        throw null;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e
    /* renamed from: QA */
    public void mo22816QA() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        arguments.putString("StartupDialogDismissReason", StartupDialogDismissReason.USER_PRESSED_DISMISS_BUTTON.name());
        setArguments(arguments);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.content.Context, com.truecaller.ui.TruecallerInit, android.app.Activity] */
    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e
    /* renamed from: RA */
    public void mo22811RA() {
        Action action = this.f14947h;
        if (action == null) {
            l.l("action");
            throw null;
        }
        n3.r.a.l activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof TruecallerInit)) {
            lVar = null;
        }
        ?? r0 = (TruecallerInit) lVar;
        if (r0 == 0) {
            return;
        }
        int ordinal = action.ordinal();
        if (ordinal == 0) {
            C15282l c15282l = this.f14944e;
            if (c15282l == 0) {
                l.l("notificationAccessRequester");
                throw null;
            } else if (c15282l.m18958a(r0, NotificationAccessSource.BOTTOM_BAR_MISSED_CALL_NOTIFICATION, C2752R.string.EnhancedNotificationToastAllowAccess)) {
            } else {
                dismissAllowingStateLoss();
            }
        } else if (ordinal == 1) {
            if (!C19291g.m13502w0(r0, "android.permission.ACCESS_COARSE_LOCATION")) {
                C19291g.m13558d1(this, "android.permission.ACCESS_COARSE_LOCATION", 1, true);
                dismissAllowingStateLoss();
                return;
            }
            C21846z1 c21846z1 = new C21846z1(r0, C2752R.string.PermissionDialog_makePersonal, C2752R.string.PermissionDialog_location);
            FragmentManager childFragmentManager = getChildFragmentManager();
            l.d(childFragmentManager, "childFragmentManager");
            c21846z1.m8995cB(childFragmentManager);
        } else if (ordinal == 2) {
            C19291g.m13495y1(r0);
            r0.m34583Fa().m34618a(PermissionPoller.Permission.DRAW_OVERLAY);
        } else if (ordinal == 3) {
            InternalTruecallerNotification m18667m = new C15569f(r0).m18667m();
            if (m18667m == null) {
                return;
            }
            AbstractC21394a abstractC21394a = this.f14941b;
            if (abstractC21394a == 0) {
                l.l("appUpdateActionHelper");
                throw null;
            }
            l.d(m18667m, "it");
            abstractC21394a.mo9777c(r0, m18667m.m34840s(), "startupDialog");
        } else if (ordinal != 4) {
        } else {
            AbstractC19230g abstractC19230g = this.f14942c;
            if (abstractC19230g == null) {
                l.l("deviceInfoUtil");
                throw null;
            } else if (abstractC19230g.mo13780q() < 24) {
            } else {
                C8613t.m28198n(r0, new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"));
                Toast.makeText((Context) r0, (int) C2752R.string.toast_allow_notification_access_ring_silent, 1).show();
                AbstractC16599t abstractC16599t = this.f14946g;
                if (abstractC16599t != null) {
                    abstractC16599t.mo17202a(NotificationAccessSource.BOTTOM_BAR_RING_SILENT);
                } else {
                    l.l("premiumNotificationAccessEventLogger");
                    throw null;
                }
            }
        }
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractView$OnClickListenerC12621e
    public void onCreate(Bundle bundle) {
        String string;
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("action")) == null) {
            throw new IllegalStateException("Action is missed");
        }
        l.d(string, "arguments?.getString(ARG…ption(\"Action is missed\")");
        this.f14947h = Action.valueOf(string);
        super.onCreate(bundle);
        AbstractC16444k2.f46188a.m17389a().mo11391b(this);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = BottomPopupDialogFragment.super.onCreateDialog(bundle);
        l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        Window window = onCreateDialog.getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        return onCreateDialog;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C2752R.layout.dialog_popup_action, viewGroup, false);
        TextView textView = (TextView) inflate.findViewById(C2752R.C2754id.button_accept);
        textView.setOnClickListener(this);
        Action action = this.f14947h;
        if (action == null) {
            l.l("action");
            throw null;
        }
        if (action.getAccept() >= 0) {
            Action action2 = this.f14947h;
            if (action2 == null) {
                l.l("action");
                throw null;
            }
            textView.setText(action2.getAccept());
        }
        inflate.findViewById(C2752R.C2754id.button_dismiss).setOnClickListener(this);
        TextView textView2 = (TextView) inflate.findViewById(2131364714);
        Action action3 = this.f14947h;
        if (action3 == null) {
            l.l("action");
            throw null;
        }
        textView2.setText(action3.getText());
        ImageView imageView = (ImageView) inflate.findViewById(2131364203);
        Action action4 = this.f14947h;
        if (action4 != null) {
            imageView.setImageResource(action4.getIcon());
            return inflate;
        }
        l.l("action");
        throw null;
    }

    public void onStart() {
        Window window;
        BottomPopupDialogFragment.super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setDimAmount(0.0f);
            l.d(window, "it");
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            attributes.gravity = 80;
            attributes.windowAnimations = C2752R.style.SlideUpAnimation;
            window.setAttributes(attributes);
        }
        Action action = this.f14947h;
        if (action == null) {
            l.l("action");
            throw null;
        } else if (action.ordinal() != 0) {
        } else {
            AbstractC15285o abstractC15285o = this.f14945f;
            if (abstractC15285o == null) {
                l.l("notificationHandlerUtil");
                throw null;
            } else if (!abstractC15285o.mo18956a()) {
            } else {
                dismissAllowingStateLoss();
            }
        }
    }
}
