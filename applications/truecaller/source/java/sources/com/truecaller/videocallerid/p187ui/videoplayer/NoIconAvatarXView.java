package com.truecaller.videocallerid.p187ui.videoplayer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import kotlin.Metadata;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8247c;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b��\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/truecaller/videocallerid/ui/videoplayer/NoIconAvatarXView;", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "onDraw", "(Landroid/graphics/Canvas;)V", "", "noIcon", "setNoIcon", "(Z)V", "v", "Z", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.videoplayer.NoIconAvatarXView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/NoIconAvatarXView.class */
public final class NoIconAvatarXView extends AvatarXView {

    /* renamed from: v */
    public boolean f16087v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoIconAvatarXView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // com.truecaller.common.p156ui.avatar.AvatarXView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        AbstractC8247c presenter;
        if (this.f16087v && (presenter = getPresenter()) != null) {
            presenter.mo28720Xj(null);
            presenter.mo28723Uj(null);
            presenter.mo28722Vj(null);
            presenter.mo28724Tj(null);
            presenter.mo28721Wj(null);
        }
        super.onDraw(canvas);
    }

    public final void setNoIcon(boolean z) {
        this.f16087v = z;
    }
}
