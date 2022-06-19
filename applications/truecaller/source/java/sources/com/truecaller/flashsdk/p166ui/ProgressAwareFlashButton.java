package com.truecaller.flashsdk.p166ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.flashsdk.C3909R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0002!\"J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u000b\u0010\fR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;", "Lcom/truecaller/flashsdk/ui/FlashButton;", "", "getLayout", "()I", RemoteMessageConst.Notification.COLOR, "Ls1/s;", "setThemeColor", "(I)V", "timeLeftToEnable", "d", "onDetachedFromWindow", "()V", "Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;", "s", "Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;", "getFlashProgressFinishListener", "()Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;", "setFlashProgressFinishListener", "(Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;)V", "flashProgressFinishListener", "Landroid/widget/ImageView;", "q", "Landroid/widget/ImageView;", "flashButtonImage", "Landroid/os/CountDownTimer;", "r", "Landroid/os/CountDownTimer;", "progressCountDownTimer", "Landroid/widget/ProgressBar;", "p", "Landroid/widget/ProgressBar;", "progressBar", "a", C22021b.f61237c, "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.ProgressAwareFlashButton */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/ProgressAwareFlashButton.class */
public final class ProgressAwareFlashButton extends FlashButton {

    /* renamed from: p */
    public final ProgressBar f12040p;

    /* renamed from: q */
    public final ImageView f12041q;

    /* renamed from: r */
    public CountDownTimer f12042r;

    /* renamed from: s */
    public AbstractC3932b f12043s;

    /* renamed from: com.truecaller.flashsdk.ui.ProgressAwareFlashButton$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/ProgressAwareFlashButton$a.class */
    public final class CountDownTimerC3931a extends CountDownTimer {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CountDownTimerC3931a(long j) {
            super(j, 100L);
            ProgressAwareFlashButton.this = r7;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            AbstractC3932b abstractC3932b = ProgressAwareFlashButton.this.f12043s;
            if (abstractC3932b != null) {
                abstractC3932b.m35373a();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            ProgressAwareFlashButton.this.f12040p.setProgress((int) j);
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.ProgressAwareFlashButton$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/ProgressAwareFlashButton$b.class */
    public interface AbstractC3932b {
        /* renamed from: a */
        void m35373a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressAwareFlashButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(attributeSet, "attrs");
        View findViewById = findViewById(C3909R.C3911id.progress_bar);
        l.d(findViewById, "findViewById(R.id.progress_bar)");
        ProgressBar progressBar = (ProgressBar) findViewById;
        this.f12040p = progressBar;
        View findViewById2 = findViewById(C3909R.C3911id.flash_button_image);
        l.d(findViewById2, "findViewById(R.id.flash_button_image)");
        this.f12041q = (ImageView) findViewById2;
        progressBar.setMax((int) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
    }

    @Override // com.truecaller.flashsdk.p166ui.FlashButton
    /* renamed from: d */
    public void mo35321d(int i) {
        if (i == 0) {
            AbstractC3932b abstractC3932b = this.f12043s;
            if (abstractC3932b == null) {
                return;
            }
            abstractC3932b.m35373a();
            return;
        }
        this.f12040p.setProgress(i);
        CountDownTimer countDownTimer = this.f12042r;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimerC3931a countDownTimerC3931a = new CountDownTimerC3931a(i);
        countDownTimerC3931a.start();
        this.f12042r = countDownTimerC3931a;
    }

    public final AbstractC3932b getFlashProgressFinishListener() {
        return this.f12043s;
    }

    @Override // com.truecaller.flashsdk.p166ui.FlashButton
    public int getLayout() {
        return C3909R.layout.progress_aware_flash_button;
    }

    @Override // com.truecaller.flashsdk.p166ui.FlashButton, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        CountDownTimer countDownTimer = this.f12042r;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    public final void setFlashProgressFinishListener(AbstractC3932b abstractC3932b) {
        this.f12043s = abstractC3932b;
    }

    public final void setThemeColor(int i) {
        this.f12041q.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        this.f12040p.getBackground().setColorFilter(i, PorterDuff.Mode.SRC_IN);
        this.f12040p.getProgressDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }
}
