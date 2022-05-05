package com.facebook.share.p046d;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.content.res.AppCompatResources;
import com.facebook.common.R$drawable;
import com.facebook.common.R$string;
import com.facebook.common.R$style;
import p081h.p154f.AbstractC6126g;
@Deprecated
/* renamed from: com.facebook.share.d.f */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/f.class */
public class C2611f extends AbstractC6126g {
    @Deprecated
    public C2611f(Context context, boolean z) {
        super(context, null, 0, 0, "fb_like_button_create", "fb_like_button_did_tap");
        setSelected(z);
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: a */
    public void mo23780a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo23780a(context, attributeSet, i, i2);
        m34180g();
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: c */
    public int mo23770c() {
        return R$style.com_facebook_button_like;
    }

    /* renamed from: g */
    public final void m34180g() {
        if (isSelected()) {
            setCompoundDrawablesWithIntrinsicBounds(R$drawable.com_facebook_button_like_icon_selected, 0, 0, 0);
            setText(getResources().getString(R$string.com_facebook_like_button_liked));
            return;
        }
        setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), R$drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
        setText(getResources().getString(R$string.com_facebook_like_button_not_liked));
    }

    @Override // android.widget.TextView, android.view.View
    @Deprecated
    public void setSelected(boolean z) {
        super.setSelected(z);
        m34180g();
    }
}
