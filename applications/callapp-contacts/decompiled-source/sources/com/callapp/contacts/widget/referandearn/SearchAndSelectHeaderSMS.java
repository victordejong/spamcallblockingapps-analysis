package com.callapp.contacts.widget.referandearn;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.databinding.InvitesHeaderLayoutBinding;
import com.callapp.contacts.util.ThemeUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeaderSMS;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "_binding", "Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/InvitesHeaderLayoutBinding;", "setData", "", "name", "", "onClickListener", "Landroid/view/View$OnClickListener;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectHeaderSMS.class */
public final class SearchAndSelectHeaderSMS extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private InvitesHeaderLayoutBinding f16931a;

    public SearchAndSelectHeaderSMS(Context context) {
        this(context, null, 0, 6, null);
    }

    public SearchAndSelectHeaderSMS(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchAndSelectHeaderSMS(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p.d(context, "context");
        this.f16931a = InvitesHeaderLayoutBinding.a(LayoutInflater.from(context), this);
    }

    public /* synthetic */ SearchAndSelectHeaderSMS(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final InvitesHeaderLayoutBinding getBinding() {
        InvitesHeaderLayoutBinding invitesHeaderLayoutBinding = this.f16931a;
        p.a(invitesHeaderLayoutBinding);
        return invitesHeaderLayoutBinding;
    }

    public final void setData(String name, final View.OnClickListener onClickListener) {
        p.d(name, "name");
        TextView textView = getBinding().f;
        textView.setText(name);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        ImageView imageView = getBinding().f14325c;
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100140), PorterDuff.Mode.SRC_IN));
        if (onClickListener != null) {
            imageView.setVisibility(0);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.SearchAndSelectHeaderSMS$setData$2$1$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    onClickListener.onClick(view);
                }
            });
        }
    }
}
