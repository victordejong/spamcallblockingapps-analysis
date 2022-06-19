package com.truecaller.flashsdk.p166ui.customviews;

import android.content.Context;
import android.graphics.PorterDuff;
import android.text.SpannableString;
import android.text.style.ImageSpan;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002:\u0001\u001cJ\u0017\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\f8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView;", "Landroidx/appcompat/widget/Toolbar;", "Landroid/view/View$OnClickListener;", "", RemoteMessageConst.Notification.COLOR, "Ls1/s;", "setHeaderTextColor", "(I)V", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;", "V", "Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;", "getContactClickListener$flash_release", "()Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;", "setContactClickListener$flash_release", "(Lcom/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a;)V", "contactClickListener", "Landroid/widget/TextView;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroid/widget/TextView;", "headerText", "Landroid/widget/ImageView;", "U", "Landroid/widget/ImageView;", "headerImage", "a", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.customviews.FlashContactHeaderView */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashContactHeaderView.class */
public final class FlashContactHeaderView extends Toolbar implements View.OnClickListener {

    /* renamed from: T */
    public final TextView f12108T;

    /* renamed from: U */
    public final ImageView f12109U;

    /* renamed from: V */
    public AbstractC3947a f12110V;

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashContactHeaderView$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashContactHeaderView$a.class */
    public interface AbstractC3947a {
        /* renamed from: S0 */
        void m35352S0();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashContactHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C3909R.layout.flash_contact_header, (ViewGroup) this, true);
        View findViewById = findViewById(C3909R.C3911id.contact_logo);
        l.d(findViewById, "findViewById(R.id.contact_logo)");
        ImageView imageView = (ImageView) findViewById;
        this.f12109U = imageView;
        View findViewById2 = findViewById(C3909R.C3911id.contact_header_text);
        l.d(findViewById2, "findViewById(R.id.contact_header_text)");
        TextView textView = (TextView) findViewById2;
        this.f12108T = textView;
        imageView.setOnClickListener(this);
        textView.setOnClickListener(this);
    }

    public final AbstractC3947a getContactClickListener$flash_release() {
        return this.f12110V;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        AbstractC3947a abstractC3947a = this.f12110V;
        if (abstractC3947a != null) {
            abstractC3947a.m35352S0();
        }
    }

    public final void setContactClickListener$flash_release(AbstractC3947a abstractC3947a) {
        this.f12110V = abstractC3947a;
    }

    public final void setHeaderTextColor(int i) {
        this.f12108T.setTextColor(i);
        ImageSpan[] imageSpanArr = (ImageSpan[]) new SpannableString(this.f12108T.getText()).getSpans(0, this.f12108T.getText().length(), ImageSpan.class);
        l.d(imageSpanArr, "spans");
        for (ImageSpan imageSpan : imageSpanArr) {
            l.d(imageSpan, "imageSpan");
            imageSpan.getDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
    }
}
