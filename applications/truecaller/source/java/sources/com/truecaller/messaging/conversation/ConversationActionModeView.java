package com.truecaller.messaging.conversation;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1734b.p1743f.C25508g0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p195a.p200c.AbstractC5238e3;
import p193e.p194a.p195a.p200c.C5399j2;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\u000f\u001a\u00020\u0004*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\n\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/truecaller/messaging/conversation/ConversationActionModeView;", "Landroid/widget/LinearLayout;", "Le/a/a/c/e3;", "actionModeCallback", "Ls1/s;", "setCallback", "(Le/a/a/c/e3;)V", "Lcom/truecaller/messaging/conversation/Action;", "action", "Landroid/view/View;", "a", "(Lcom/truecaller/messaging/conversation/Action;)Landroid/view/View;", "Landroid/view/MenuItem;", "", "titleStr", C22021b.f61237c, "(Landroid/view/MenuItem;Ljava/lang/String;)V", "Ln3/b/f/g0;", "Ln3/b/f/g0;", "popupMenu", "", AbstractC2405c.f7629a, "I", "spacing", "Le/a/a/c/e3;", "callback", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ConversationActionModeView.class */
public final class ConversationActionModeView extends LinearLayout {

    /* renamed from: a */
    public AbstractC5238e3 f13013a;

    /* renamed from: b */
    public C25508g0 f13014b;

    /* renamed from: c */
    public final int f13015c;

    /* renamed from: com.truecaller.messaging.conversation.ConversationActionModeView$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/ConversationActionModeView$a.class */
    public static final class View$OnClickListenerC4166a implements View.OnClickListener {
        public View$OnClickListenerC4166a(Action action) {
            ConversationActionModeView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC5238e3 abstractC5238e3 = ConversationActionModeView.this.f13013a;
            if (abstractC5238e3 == null) {
                l.l("callback");
                throw null;
            }
            l.d(view, "it");
            ((C5399j2) abstractC5238e3).f18485a.f19488d.mo33219ye(view.getId());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConversationActionModeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = getResources().getDimensionPixelSize(2131166432);
        this.f13015c = dimensionPixelSize;
        setOrientation(0);
        setLayoutParams(new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C2752R.dimen.conversation_input_actions_bar_height)));
        setBackgroundColor(C19291g.m13612L(context, C2752R.attr.tcx_conversationInputBarBackground));
        setPaddingRelative(dimensionPixelSize, 0, dimensionPixelSize, 0);
    }

    /* renamed from: a */
    public final View m35131a(Action action) {
        View inflate = LayoutInflater.from(getContext()).inflate(C2752R.layout.view_conversation_action_mode_item, (ViewGroup) this, false);
        Objects.requireNonNull(inflate, "null cannot be cast to non-null type androidx.appcompat.widget.AppCompatTextView");
        AppCompatTextView appCompatTextView = (AppCompatTextView) inflate;
        appCompatTextView.setId(action.getId());
        appCompatTextView.setText(action.getText());
        appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, C19291g.m13535l0(appCompatTextView.getContext(), action.getIcon(), action == Action.DELETE ? 2130969966 : 2130970255), (Drawable) null, (Drawable) null);
        appCompatTextView.setOnClickListener(new View$OnClickListenerC4166a(action));
        return appCompatTextView;
    }

    /* renamed from: b */
    public final void m35130b(MenuItem menuItem, String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Drawable icon = menuItem.getIcon();
        if (icon != null) {
            C19291g.m13545i(icon, spannableStringBuilder, Integer.valueOf(C19291g.m13612L(getContext(), 2130970255)), null, false, 12);
        }
        spannableStringBuilder.append((CharSequence) "     ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) str);
        spannableStringBuilder.setSpan(new RelativeSizeSpan(1.2f), length, str.length() + length, 33);
        menuItem.setTitle(spannableStringBuilder);
    }

    public final void setCallback(AbstractC5238e3 abstractC5238e3) {
        l.e(abstractC5238e3, "actionModeCallback");
        this.f13013a = abstractC5238e3;
    }
}
