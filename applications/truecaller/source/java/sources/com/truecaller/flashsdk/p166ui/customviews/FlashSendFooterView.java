package com.truecaller.flashsdk.p166ui.customviews;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import kotlin.Metadata;
import p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\fJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView;", "Le/a/y/a/g/d;", "Lcom/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a;", "Landroid/view/View$OnClickListener;", "", "getLayoutResource", "()I", "Landroid/view/View;", "v", "Ls1/s;", "onClick", "(Landroid/view/View;)V", "a", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.customviews.FlashSendFooterView */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashSendFooterView.class */
public final class FlashSendFooterView extends AbstractView$OnClickListenerC21506d<AbstractC3951a> implements View.OnClickListener {

    /* renamed from: com.truecaller.flashsdk.ui.customviews.FlashSendFooterView$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/customviews/FlashSendFooterView$a.class */
    public interface AbstractC3951a extends AbstractView$OnClickListenerC21506d.AbstractC21507a {
        /* renamed from: N0 */
        void mo35331N0();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlashSendFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d
    public int getLayoutResource() {
        return C3909R.layout.layout_send_flash_footer;
    }

    @Override // p193e.p194a.p1365y.p1366a.p1372g.AbstractView$OnClickListenerC21506d, android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        if (view.getId() != C3909R.C3911id.sendMessage) {
            super.onClick(view);
            return;
        }
        AbstractC3951a actionListener = getActionListener();
        if (actionListener == null) {
            return;
        }
        actionListener.mo35331N0();
    }
}
