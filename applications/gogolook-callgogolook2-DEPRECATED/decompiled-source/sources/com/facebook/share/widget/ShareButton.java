package com.facebook.share.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.content.res.AppCompatResources;
import com.facebook.common.R$drawable;
import com.facebook.internal.AbstractC2414h;
import com.facebook.internal.C2398d;
import com.facebook.share.AbstractC2568c;
import com.facebook.share.R$style;
import com.facebook.share.model.ShareContent;
import com.facebook.share.p048f.AbstractC2653b;
import com.facebook.share.p048f.C2655c;
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/ShareButton.class */
public final class ShareButton extends AbstractC2653b {
    public ShareButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, "fb_share_button_create", "fb_share_button_did_tap");
    }

    public ShareButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, "fb_share_button_create", "fb_share_button_did_tap");
    }

    @Override // com.facebook.share.p048f.AbstractC2653b, p081h.p154f.AbstractC6126g
    /* renamed from: a */
    public void mo23780a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo23780a(context, attributeSet, i, i2);
        setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), R$drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: b */
    public int mo23774b() {
        return C2398d.EnumC2400b.Share.m34900a();
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: c */
    public int mo23770c() {
        return R$style.com_facebook_button_share;
    }

    @Override // com.facebook.share.p048f.AbstractC2653b
    /* renamed from: g */
    public AbstractC2414h<ShareContent, AbstractC2568c.C2569a> mo33769g() {
        return m23768d() != null ? new C2655c(m23768d(), m34005h()) : m23766e() != null ? new C2655c(m23766e(), m34005h()) : new C2655c(m23782a(), m34005h());
    }
}
