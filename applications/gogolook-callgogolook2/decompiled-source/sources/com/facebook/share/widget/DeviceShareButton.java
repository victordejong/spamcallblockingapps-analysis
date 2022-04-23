package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.internal.C2398d;
import com.facebook.share.C2566a;
import com.facebook.share.R$style;
import com.facebook.share.model.ShareContent;
import p081h.p154f.AbstractC6126g;
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/DeviceShareButton.class */
public final class DeviceShareButton extends AbstractC6126g {

    /* renamed from: i */
    public ShareContent f3744i;

    /* renamed from: j */
    public C2566a f3745j;

    /* renamed from: com.facebook.share.widget.DeviceShareButton$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/DeviceShareButton$a.class */
    public class View$OnClickListenerC2712a implements View.OnClickListener {
        public View$OnClickListenerC2712a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceShareButton.this.m23778a(view);
            DeviceShareButton.this.m33809g().mo34178a(DeviceShareButton.this.m33808h());
        }
    }

    public DeviceShareButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeviceShareButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, "fb_device_share_button_create", "fb_device_share_button_did_tap");
        this.f3745j = null;
        if (!isInEditMode()) {
            mo23774b();
        }
        m33810a(false);
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: a */
    public void mo23780a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo23780a(context, attributeSet, i, i2);
        m23779a(m33807i());
    }

    /* renamed from: a */
    public final void m33810a(boolean z) {
        setEnabled(z);
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

    /* renamed from: g */
    public final C2566a m33809g() {
        C2566a aVar = this.f3745j;
        if (aVar != null) {
            return aVar;
        }
        if (m23768d() != null) {
            this.f3745j = new C2566a(m23768d());
        } else if (m23766e() != null) {
            this.f3745j = new C2566a(m23766e());
        } else {
            this.f3745j = new C2566a(m23782a());
        }
        return this.f3745j;
    }

    /* renamed from: h */
    public ShareContent m33808h() {
        return this.f3744i;
    }

    /* renamed from: i */
    public View.OnClickListener m33807i() {
        return new View$OnClickListenerC2712a();
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
    }
}
