package com.netqin.p525cm.antiharass.p527ui.activity;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: com.netqin.cm.antiharass.ui.activity.ExitActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/ExitActivity.class */
public class ExitActivity extends BaseActivity {

    /* renamed from: com.netqin.cm.antiharass.ui.activity.ExitActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/ExitActivity$a.class */
    public class C9095a implements Animator.AnimatorListener {

        /* renamed from: a */
        public final /* synthetic */ View f35458a;

        public C9095a(View view) {
            this.f35458a = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C6850i.m19579a("ExitActivity", "退出动画结束");
            this.f35458a.setVisibility(8);
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            intent.addFlags(270532608);
            ExitActivity.this.startActivity(intent);
            ExitActivity.this.finish();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C6850i.m19579a("ExitActivity", "退出动画开始");
        }
    }

    public void lockLayoutClick(View view) {
    }

    /* renamed from: n */
    public final void m3459n() {
        View findViewById = findViewById(2131231034);
        if (findViewById != null) {
            findViewById.setVisibility(0);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(findViewById(2131231035), "backgroundResource", 2131165486, 2131165486, 2131165485, 2131165485);
            ofInt.setDuration(2000L);
            ofInt.addListener(new C9095a(findViewById));
            ObjectAnimator ofInt2 = ObjectAnimator.ofInt(findViewById, "backgroundColor", 0, -1610612736);
            ofInt2.setDuration(1000L);
            ofInt2.setEvaluator(new ArgbEvaluator());
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofInt, ofInt2);
            animatorSet.start();
            return;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.addFlags(270532608);
        startActivity(intent);
        finish();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427357);
        m3459n();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
