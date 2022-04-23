package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.databinding.LayoutSearchAndSelectHeaderBinding;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.glide.RoundedCornersTransformation;
import com.callapp.contacts.widget.RoundedCornersImageView;
import io.bidmachine.utils.IabUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0014\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0015"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "_binding", "Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;", "setData", "", "title", "", "subtitle", IabUtils.KEY_IMAGE_URL, "setSubtitle", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectHeader.class */
public final class SearchAndSelectHeader extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private LayoutSearchAndSelectHeaderBinding f16930a;

    public SearchAndSelectHeader(Context context) {
        this(context, null, 0, 6, null);
    }

    public SearchAndSelectHeader(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchAndSelectHeader(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p.d(context, "context");
        this.f16930a = LayoutSearchAndSelectHeaderBinding.a(LayoutInflater.from(context), this);
    }

    public /* synthetic */ SearchAndSelectHeader(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final LayoutSearchAndSelectHeaderBinding getBinding() {
        LayoutSearchAndSelectHeaderBinding layoutSearchAndSelectHeaderBinding = this.f16930a;
        p.a(layoutSearchAndSelectHeaderBinding);
        return layoutSearchAndSelectHeaderBinding;
    }

    public static /* synthetic */ void setData$default(SearchAndSelectHeader searchAndSelectHeader, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = null;
        }
        searchAndSelectHeader.setData(str, str2, str3);
    }

    public final void setData(String title, String str, String str2) {
        p.d(title, "title");
        TextView textView = getBinding().f14337c;
        textView.setText(title);
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView2 = getBinding().f14336b;
        textView2.setText(str);
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        if (str2 != null) {
            RoundedCornersImageView roundedCornersImageView = getBinding().f14335a;
            p.b(roundedCornersImageView, "binding.searchAndSelectHeaderImage");
            roundedCornersImageView.setVisibility(0);
            GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(getBinding().f14335a, str2, getContext()).a((int) Activities.a(11.0f), RoundedCornersTransformation.CornerType.ALL);
            a2.s = true;
            a2.d();
        }
    }

    public final void setSubtitle(String str) {
        TextView textView = getBinding().f14336b;
        p.b(textView, "binding.searchAndSelectSubTitle");
        textView.setText(str);
    }
}
