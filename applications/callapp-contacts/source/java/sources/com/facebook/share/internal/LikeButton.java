package com.facebook.share.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.p017a.p018a.C0153a;
import com.facebook.FacebookButtonBase;
import com.facebook.common.C10165a;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeButton.class */
public class LikeButton extends FacebookButtonBase {
    @Deprecated
    public LikeButton(Context context, boolean z) {
        super(context, null, 0, 0, "fb_like_button_create", "fb_like_button_did_tap");
        setSelected(z);
    }

    /* renamed from: b */
    private void m22784b() {
        if (isSelected()) {
            setCompoundDrawablesWithIntrinsicBounds(C10165a.C10168c.com_facebook_button_like_icon_selected, 0, 0, 0);
            setText(getResources().getString(C10165a.C10171f.com_facebook_like_button_liked));
            return;
        }
        setCompoundDrawablesWithIntrinsicBounds(C0153a.m46374b(getContext(), C10165a.C10168c.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
        setText(getResources().getString(C10165a.C10171f.com_facebook_like_button_not_liked));
    }

    @Override // com.facebook.FacebookButtonBase
    /* renamed from: a */
    public final int mo22786a() {
        return C10165a.C10172g.com_facebook_button_like;
    }

    @Override // com.facebook.FacebookButtonBase
    /* renamed from: a */
    public final void mo22785a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo22785a(context, attributeSet, i, i2);
        m22784b();
    }

    @Override // android.widget.TextView, android.view.View
    @Deprecated
    public void setSelected(boolean z) {
        super.setSelected(z);
        m22784b();
    }
}
