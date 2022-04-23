package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.common.model.json.JSONReferAndEarnRewards;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.databinding.LayoutReferAndEarnProgressBinding;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.referandearn.ReferAndEarnTrophyView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "_binding", "Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;", "setData", "", "jSONReferAndEarnRewards", "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;", "trophyViewType", "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ReferAndEarnProgress.class */
public final class ReferAndEarnProgress extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private LayoutReferAndEarnProgressBinding f16872a;

    public ReferAndEarnProgress(Context context) {
        this(context, null, 0, 6, null);
    }

    public ReferAndEarnProgress(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReferAndEarnProgress(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p.d(context, "context");
        this.f16872a = LayoutReferAndEarnProgressBinding.a(LayoutInflater.from(context), this);
    }

    public /* synthetic */ ReferAndEarnProgress(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final LayoutReferAndEarnProgressBinding getBinding() {
        LayoutReferAndEarnProgressBinding layoutReferAndEarnProgressBinding = this.f16872a;
        p.a(layoutReferAndEarnProgressBinding);
        return layoutReferAndEarnProgressBinding;
    }

    public final void setData(JSONReferAndEarnRewards jSONReferAndEarnRewards, ReferAndEarnTrophyView.TrophyViewType trophyViewType) {
        p.d(jSONReferAndEarnRewards, "jSONReferAndEarnRewards");
        p.d(trophyViewType, "trophyViewType");
        if (trophyViewType == ReferAndEarnTrophyView.TrophyViewType.EXPENDED) {
            TextView textView = getBinding().e;
            p.b(textView, "binding.progressTopTitle");
            textView.setVisibility(0);
            ImageView imageView = getBinding().f14330d;
            p.b(imageView, "binding.progressImage");
            imageView.setVisibility(0);
            TextView textView2 = getBinding().f14327a;
            p.b(textView2, "binding.progressBottomSubtitle");
            textView2.setVisibility(0);
        } else {
            ConstraintLayout constraintLayout = getBinding().f14329c;
            p.b(constraintLayout, "binding.progressContainer");
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            constraintLayout.setLayoutParams(new ConstraintLayout.LayoutParams(callAppApplication.getResources().getDimensionPixelOffset(2131166047), getResources().getDimensionPixelOffset(2131166046)));
        }
        TextView textView3 = getBinding().e;
        p.b(textView3, "binding.progressTopTitle");
        textView3.setText(jSONReferAndEarnRewards.isMilestone() ? String.valueOf(jSONReferAndEarnRewards.getKey()) : jSONReferAndEarnRewards.getTitle());
        getBinding().e.setTextColor(ThemeUtils.getColor(2131100140));
        getBinding().f14330d.setImageResource(jSONReferAndEarnRewards.isMilestone() ? 2131231950 : 2131231591);
        if (jSONReferAndEarnRewards.isMilestone()) {
            String title = jSONReferAndEarnRewards.getTitle();
            if (title != null) {
                TextView textView4 = getBinding().f14328b;
                textView4.setText(title);
                textView4.setTextColor(ThemeUtils.getColor(2131100140));
            }
            String subtitle = jSONReferAndEarnRewards.getSubtitle();
            if (subtitle != null) {
                TextView textView5 = getBinding().f14327a;
                textView5.setText(subtitle);
                textView5.setTextColor(ThemeUtils.getColor(2131100108));
                return;
            }
            return;
        }
        TextView textView6 = getBinding().e;
        p.b(textView6, "binding.progressTopTitle");
        textView6.setTextSize(8.0f);
    }
}
