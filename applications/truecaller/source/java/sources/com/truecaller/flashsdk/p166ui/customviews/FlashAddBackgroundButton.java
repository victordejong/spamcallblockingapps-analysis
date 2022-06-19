package com.truecaller.flashsdk.p166ui.customviews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002:\u0001 J\u0015\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\b\b\u0001\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton;", "Landroidx/appcompat/widget/Toolbar;", "Landroid/view/View$OnClickListener;", "", "title", "Ls1/s;", "setText", "(Ljava/lang/String;)V", "", RemoteMessageConst.Notification.COLOR, "setTextColor", "(I)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "Landroid/widget/TextView;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroid/widget/TextView;", "text", "Landroid/widget/ImageView;", "U", "Landroid/widget/ImageView;", "button", "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;", "V", "Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;", "getContactClickListener$flash_release", "()Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;", "setContactClickListener$flash_release", "(Lcom/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a;)V", "contactClickListener", "a", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.customviews.FlashAddBackgroundButton */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton.class */
public final class FlashAddBackgroundButton extends Toolbar implements View.OnClickListener {

    /* renamed from: T */
    public final TextView f12093T;

    /* renamed from: U */
    public final ImageView f12094U;

    /* renamed from: V */
    public AbstractC3942a f12095V;

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashAddBackgroundButton$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashAddBackgroundButton$a.class */
    public interface AbstractC3942a {
        /* renamed from: S0 */
        void m35356S0();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashAddBackgroundButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C3909R.layout.flash_add_background_button, (ViewGroup) this, true);
        View findViewById = findViewById(C3909R.C3911id.addPhotoButton);
        l.d(findViewById, "findViewById(R.id.addPhotoButton)");
        this.f12094U = (ImageView) findViewById;
        View findViewById2 = findViewById(C3909R.C3911id.attachText);
        l.d(findViewById2, "findViewById(R.id.attachText)");
        this.f12093T = (TextView) findViewById2;
    }

    public final AbstractC3942a getContactClickListener$flash_release() {
        return this.f12095V;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        AbstractC3942a abstractC3942a = this.f12095V;
        if (abstractC3942a != null) {
            abstractC3942a.m35356S0();
        }
    }

    public final void setContactClickListener$flash_release(AbstractC3942a abstractC3942a) {
        this.f12095V = abstractC3942a;
    }

    public final void setText(String str) {
        l.e(str, "title");
        this.f12093T.setText(str);
    }

    public final void setTextColor(int i) {
        this.f12093T.setTextColor(i);
    }
}
