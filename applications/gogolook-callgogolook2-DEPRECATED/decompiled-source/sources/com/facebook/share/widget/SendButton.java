package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.internal.AbstractC2414h;
import com.facebook.internal.C2398d;
import com.facebook.share.AbstractC2568c;
import com.facebook.share.R$style;
import com.facebook.share.model.ShareContent;
import com.facebook.share.p048f.AbstractC2653b;
import com.facebook.share.p048f.C2649a;
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/SendButton.class */
public final class SendButton extends AbstractC2653b {
    public SendButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, "fb_send_button_create", "fb_send_button_did_tap");
    }

    public SendButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, "fb_send_button_create", "fb_send_button_did_tap");
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: b */
    public int mo23774b() {
        return C2398d.EnumC2400b.Message.m34900a();
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: c */
    public int mo23770c() {
        return R$style.com_facebook_button_send;
    }

    @Override // com.facebook.share.p048f.AbstractC2653b
    /* renamed from: g */
    public AbstractC2414h<ShareContent, AbstractC2568c.C2569a> mo33769g() {
        return m23768d() != null ? new C2649a(m23768d(), m34005h()) : m23766e() != null ? new C2649a(m23766e(), m34005h()) : new C2649a(m23782a(), m34005h());
    }
}
