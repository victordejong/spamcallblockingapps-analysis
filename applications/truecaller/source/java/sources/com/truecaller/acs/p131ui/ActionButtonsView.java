package com.truecaller.acs.p131ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.acs.C2778R;
import com.truecaller.common.p156ui.textview.GoldShineTextView;
import java.util.List;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p773g.p774a.C14187f;
import s1.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001J\u001b\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\b\b\u0001\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\f\u0010\u000bJ+\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00032\b\b\u0001\u0010\u000e\u001a\u00020\b2\b\b\u0001\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/truecaller/acs/ui/ActionButtonsView;", "Landroid/widget/LinearLayout;", "", "Le/a/g/a/f;", "actionButtons", "Ls1/s;", "setActionButtons", "(Ljava/util/List;)V", "", RemoteMessageConst.Notification.COLOR, "setActionButtonTheme", "(I)V", "setActionButtonColor", "actionButton", "text", RemoteMessageConst.Notification.ICON, "Landroidx/constraintlayout/widget/ConstraintLayout;", "a", "(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/view/LayoutInflater;", "Landroid/view/LayoutInflater;", "inflater", "acs_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.acs.ui.ActionButtonsView */
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/ActionButtonsView.class */
public final class ActionButtonsView extends LinearLayout {

    /* renamed from: a */
    public LayoutInflater f9717a;

    /* renamed from: com.truecaller.acs.ui.ActionButtonsView$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/ui/ActionButtonsView$a.class */
    public static final class View$OnClickListenerC2798a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C14187f f9718a;

        public View$OnClickListenerC2798a(C14187f c14187f, int i, int i2) {
            this.f9718a = c14187f;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14187f c14187f = this.f9718a;
            c14187f.f40939b.mo20435bg(c14187f.f40938a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActionButtonsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        this.f9717a = from;
    }

    /* renamed from: a */
    public final ConstraintLayout m36006a(C14187f c14187f, int i, int i2) {
        View inflate = this.f9717a.inflate(C2778R.layout.view_action_button, (ViewGroup) this, false);
        int i3 = C2778R.C2780id.image_icon;
        ImageView imageView = (ImageView) inflate.findViewById(i3);
        if (imageView != null) {
            i3 = C2778R.C2780id.text_name;
            GoldShineTextView goldShineTextView = (GoldShineTextView) inflate.findViewById(i3);
            if (goldShineTextView != null) {
                i3 = C2778R.C2780id.view_promo;
                TextView textView = (TextView) inflate.findViewById(i3);
                if (textView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                    l.d(constraintLayout, "root");
                    constraintLayout.setTag(c14187f.f40938a);
                    constraintLayout.setOnClickListener(new View$OnClickListenerC2798a(c14187f, i2, i));
                    imageView.setImageResource(i2);
                    l.d(textView, "viewPromo");
                    C19286f.m13683U(textView, c14187f.f40940c);
                    goldShineTextView.setText(i);
                    l.d(constraintLayout, "ViewActionButtonBinding.….setText(text)\n    }.root");
                    return constraintLayout;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
    }

    public final void setActionButtonColor(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            ((TextView) childAt.findViewById(C2778R.C2780id.text_name)).setTextColor(i);
            View findViewById = childAt.findViewById(C2778R.C2780id.image_icon);
            l.d(findViewById, "findViewById<ImageView>(R.id.image_icon)");
            ((ImageView) findViewById).setImageTintList(ColorStateList.valueOf(i));
        }
    }

    public final void setActionButtonTheme(int i) {
        Context context = getContext();
        Object obj = C26467a.f74235a;
        int m1787a = C26467a.C26471d.m1787a(context, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            ((TextView) childAt.findViewById(C2778R.C2780id.text_name)).setTextColor(m1787a);
            View findViewById = childAt.findViewById(C2778R.C2780id.image_icon);
            l.d(findViewById, "findViewById<ImageView>(R.id.image_icon)");
            ((ImageView) findViewById).setImageTintList(ColorStateList.valueOf(m1787a));
        }
    }

    public final void setActionButtons(List<C14187f> list) {
        ConstraintLayout constraintLayout;
        l.e(list, "actionButtons");
        removeAllViews();
        for (C14187f c14187f : list) {
            switch (c14187f.f40938a.ordinal()) {
                case 0:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_call, C2778R.C2779drawable.ic_tcx_action_call_outline_24dp);
                    break;
                case 1:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_sms, C2778R.C2779drawable.ic_tcx_action_message_outline_24dp);
                    break;
                case 2:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_voip, C2778R.C2779drawable.ic_tcx_action_voice_outline_24dp);
                    break;
                case 3:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_save_phonebook, C2778R.C2779drawable.ic_tcx_add_contact_outline_24dp);
                    break;
                case 4:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_save_edit_phonebook, C2778R.C2779drawable.ic_tcx_action_edit_24dp);
                    break;
                case 5:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_block, C2778R.C2779drawable.ic_tcx_block_24dp);
                    break;
                case 6:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_unblock, C2778R.C2779drawable.ic_tcx_block_24dp);
                    break;
                case 7:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_not_spam, C2778R.C2779drawable.ic_tcx_not_spam_24dp);
                    break;
                case 8:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_refer, C2778R.C2779drawable.ic_tcx_invite_24dp);
                    break;
                case 9:
                    constraintLayout = m36006a(c14187f, C2778R.string.vid_acs_more_option, C2778R.C2779drawable.ic_tcx_more_vert_24dp);
                    break;
                case 10:
                    constraintLayout = m36006a(c14187f, C2778R.string.acs_action_button_invite, C2778R.C2779drawable.ic_tcx_invite_outline_24dp);
                    break;
                default:
                    throw new i();
            }
            addView(constraintLayout);
        }
    }
}
