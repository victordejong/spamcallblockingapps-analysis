package com.callerid.block.mvc.controller;

import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import com.callerid.block.R$anim;
import com.callerid.block.R$drawable;
import com.callerid.block.main.EZCallApplication;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/TipsDialogActivity$d.class */
public class TipsDialogActivity$d implements Runnable {

    /* renamed from: b */
    final /* synthetic */ TipsDialogActivity f4715b;

    /* renamed from: com.callerid.block.mvc.controller.TipsDialogActivity$d$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/TipsDialogActivity$d$a.class */
    class animationAnimation$AnimationListenerC1109a implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC1109a() {
            TipsDialogActivity$d.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            TipsDialogActivity.W(TipsDialogActivity$d.this.f4715b).startAnimation(TipsDialogActivity.U(TipsDialogActivity$d.this.f4715b));
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.callerid.block.mvc.controller.TipsDialogActivity$d$b */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/TipsDialogActivity$d$b.class */
    class animationAnimation$AnimationListenerC1110b implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC1110b() {
            TipsDialogActivity$d.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            TipsDialogActivity.W(TipsDialogActivity$d.this.f4715b).setVisibility(8);
            TipsDialogActivity.g0(TipsDialogActivity$d.this.f4715b).setVisibility(4);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    TipsDialogActivity$d(TipsDialogActivity tipsDialogActivity) {
        this.f4715b = tipsDialogActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        TipsDialogActivity.Z(this.f4715b).setImageResource(R$drawable.star_gray);
        TipsDialogActivity.a0(this.f4715b).setImageResource(R$drawable.star_gray);
        TipsDialogActivity.b0(this.f4715b).setImageResource(R$drawable.star_gray);
        TipsDialogActivity.c0(this.f4715b).setImageResource(R$drawable.star_gray);
        TipsDialogActivity.d0(this.f4715b).setImageResource(R$drawable.star_gray);
        TipsDialogActivity tipsDialogActivity = this.f4715b;
        TipsDialogActivity.f0(tipsDialogActivity, AnimationUtils.loadAnimation(tipsDialogActivity.getApplicationContext(), R$anim.iv_scale));
        TipsDialogActivity.e0(this.f4715b).setInterpolator(new LinearInterpolator());
        TipsDialogActivity.g0(this.f4715b).startAnimation(TipsDialogActivity.e0(this.f4715b));
        TipsDialogActivity.T(this.f4715b, AnimationUtils.loadAnimation(EZCallApplication.m10163c(), R$anim.animiation_rate_move));
        TipsDialogActivity.V(this.f4715b, AnimationUtils.loadAnimation(EZCallApplication.m10163c(), R$anim.animiation_rate_scale));
        TipsDialogActivity.S(this.f4715b).setAnimationListener(new animationAnimation$AnimationListenerC1109a());
        TipsDialogActivity.U(this.f4715b).setAnimationListener(new animationAnimation$AnimationListenerC1110b());
        TipsDialogActivity.W(this.f4715b).setVisibility(0);
        TipsDialogActivity.W(this.f4715b).startAnimation(TipsDialogActivity.S(this.f4715b));
    }
}
