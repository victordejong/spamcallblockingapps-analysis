package com.facebook.share.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.FacebookButtonBase;
import com.facebook.common.a;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/LikeButton.class */
public class LikeButton extends FacebookButtonBase {
    @Deprecated
    public LikeButton(Context context, boolean z) {
        super(context, null, 0, 0, "fb_like_button_create", "fb_like_button_did_tap");
        setSelected(z);
    }

    private void b() {
        if (isSelected()) {
            setCompoundDrawablesWithIntrinsicBounds(a.c.com_facebook_button_like_icon_selected, 0, 0, 0);
            setText(getResources().getString(a.f.com_facebook_like_button_liked));
            return;
        }
        setCompoundDrawablesWithIntrinsicBounds(androidx.appcompat.a.a.a.b(getContext(), a.c.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
        setText(getResources().getString(a.f.com_facebook_like_button_not_liked));
    }

    @Override // com.facebook.FacebookButtonBase
    public final int a() {
        return a.g.com_facebook_button_like;
    }

    @Override // com.facebook.FacebookButtonBase
    public final void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        b();
    }

    @Override // android.widget.TextView, android.view.View
    @Deprecated
    public void setSelected(boolean z) {
        super.setSelected(z);
        b();
    }
}
