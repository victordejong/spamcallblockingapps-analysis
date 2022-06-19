package com.callapp.contacts.widget.sticky;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.callapp.contacts.databinding.LayoutStickyRecorderTestBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0015"}, m4298d2 = {"Lcom/callapp/contacts/widget/sticky/SimpleStickyView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "_binding", "Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;", "setData", "", "title", "", "buttonText", "image", "backgroundResource", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/sticky/SimpleStickyView.class */
public final class SimpleStickyView extends ConstraintLayout {

    /* renamed from: a */
    private LayoutStickyRecorderTestBinding f29449a;

    public SimpleStickyView(Context context) {
        this(context, null, 0, 6, null);
    }

    public SimpleStickyView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleStickyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C18524p.m3840d(context, "context");
        this.f29449a = LayoutStickyRecorderTestBinding.m29058a(LayoutInflater.from(context), this);
    }

    public /* synthetic */ SimpleStickyView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final LayoutStickyRecorderTestBinding getBinding() {
        LayoutStickyRecorderTestBinding layoutStickyRecorderTestBinding = this.f29449a;
        C18524p.m3851a(layoutStickyRecorderTestBinding);
        return layoutStickyRecorderTestBinding;
    }

    public final void setData(String title, String buttonText, int i, int i2) {
        C18524p.m3840d(title, "title");
        C18524p.m3840d(buttonText, "buttonText");
        TextView textView = getBinding().f25080d;
        C18524p.m3843b(textView, "binding.stickyTitle");
        textView.setText(title);
        TextView textView2 = getBinding().f25078b;
        C18524p.m3843b(textView2, "binding.stickyButton");
        textView2.setText(buttonText);
        getBinding().f25079c.setImageResource(i);
        getBinding().f25077a.setBackgroundResource(i2);
    }
}
