package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.databinding.LayoutSearchAndSelectBottomBinding;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.ThemeUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018��2\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\"\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0007R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\r\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001a"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "onActionButtonClicked", "Landroid/view/View$OnClickListener;", "(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;)V", "_binding", "Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;", "getOnActionButtonClicked", "()Landroid/view/View$OnClickListener;", "setOnActionButtonClicked", "(Landroid/view/View$OnClickListener;)V", "setData", "", "text", "", "buttonText", "buttonColor", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectBottom.class */
public final class SearchAndSelectBottom extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private LayoutSearchAndSelectBottomBinding f16918a;

    /* renamed from: b  reason: collision with root package name */
    private View.OnClickListener f16919b;

    public SearchAndSelectBottom(Context context) {
        this(context, null, 0, null, 14, null);
    }

    public SearchAndSelectBottom(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, null, 12, null);
    }

    public SearchAndSelectBottom(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null, 8, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchAndSelectBottom(Context context, AttributeSet attributeSet, int i, View.OnClickListener onClickListener) {
        super(context, attributeSet, i);
        p.d(context, "context");
        this.f16919b = onClickListener;
        this.f16918a = LayoutSearchAndSelectBottomBinding.a(LayoutInflater.from(context), this);
    }

    public /* synthetic */ SearchAndSelectBottom(Context context, AttributeSet attributeSet, int i, View.OnClickListener onClickListener, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? null : onClickListener);
    }

    private final LayoutSearchAndSelectBottomBinding getBinding() {
        LayoutSearchAndSelectBottomBinding layoutSearchAndSelectBottomBinding = this.f16918a;
        p.a(layoutSearchAndSelectBottomBinding);
        return layoutSearchAndSelectBottomBinding;
    }

    public static /* synthetic */ void setData$default(SearchAndSelectBottom searchAndSelectBottom, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = null;
        }
        searchAndSelectBottom.setData(str, str2, i);
    }

    public final View.OnClickListener getOnActionButtonClicked() {
        return this.f16919b;
    }

    public final void setData(String str, String buttonText, int i) {
        p.d(buttonText, "buttonText");
        if (str != null) {
            TextView textView = getBinding().f14333c;
            p.b(textView, "this");
            textView.setText(str);
            textView.setTextColor(ThemeUtils.getColor(2131100140));
        }
        DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f15494a;
        DialogMessageWithTopImageNew.Companion.a(getBinding().f14332b, 2131232141, Integer.valueOf(i), Integer.valueOf(i), 0, Integer.valueOf(ThemeUtils.getColor(2131100228)), new SpannableString(buttonText), null, true, true);
        getBinding().f14332b.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.SearchAndSelectBottom$setData$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                View.OnClickListener onActionButtonClicked = SearchAndSelectBottom.this.getOnActionButtonClicked();
                if (onActionButtonClicked != null) {
                    onActionButtonClicked.onClick(view);
                }
            }
        });
        getBinding().f14331a.setBackgroundResource(2131232196);
    }

    public final void setOnActionButtonClicked(View.OnClickListener onClickListener) {
        this.f16919b = onClickListener;
    }
}
