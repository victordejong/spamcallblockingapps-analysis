package com.truecaller.flashsdk.p166ui.whatsnew;

import android.content.Context;
import android.util.AttributeSet;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.FlashButton;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/truecaller/flashsdk/ui/whatsnew/FlashPromoButton;", "Lcom/truecaller/flashsdk/ui/FlashButton;", "", "getLayout", "()I", "timeLeftToEnable", "Ls1/s;", "d", "(I)V", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.whatsnew.FlashPromoButton */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/whatsnew/FlashPromoButton.class */
public final class FlashPromoButton extends FlashButton {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashPromoButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(attributeSet, "attrs");
        setClickable(false);
    }

    @Override // com.truecaller.flashsdk.p166ui.FlashButton
    /* renamed from: d */
    public void mo35321d(int i) {
        setAlpha(i > 0 ? 0.5f : 1.0f);
    }

    @Override // com.truecaller.flashsdk.p166ui.FlashButton
    public int getLayout() {
        return C3909R.layout.flash_button_promo;
    }
}
