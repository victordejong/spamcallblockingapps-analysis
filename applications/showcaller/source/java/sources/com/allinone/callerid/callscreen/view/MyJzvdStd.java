package com.allinone.callerid.callscreen.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.SeekBar;
import cn.jzvd.JzvdStd;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/callscreen/view/MyJzvdStd.class */
public class MyJzvdStd extends JzvdStd {

    /* renamed from: H0 */
    private boolean f8434H0;

    public MyJzvdStd(Context context) {
        super(context);
    }

    public MyJzvdStd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: A */
    public void mo27470A(int i, int i2) {
        super.mo27470A(i, i2);
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    /* renamed from: E */
    public void mo27469E() {
        super.mo27469E();
        Log.i("JZVD", "Auto complete");
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    /* renamed from: F */
    public void mo27468F() {
        super.mo27468F();
        C3810q.m24071b().m24070c("callscreen_play_error");
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    /* renamed from: G */
    public void mo27467G() {
        super.mo27467G();
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    /* renamed from: H */
    public void mo27466H() {
        super.mo27466H();
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    /* renamed from: I */
    public void mo27465I() {
        super.mo27465I();
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    /* renamed from: J */
    public void mo27464J() {
        super.mo27464J();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: K */
    public void mo27463K(int i, int i2) {
        super.mo27463K(i, i2);
        Log.i("JZVD", "onVideoSizeChanged");
        Log.i("JZVD", "isSilence:" + this.f8434H0);
        if (this.f8434H0) {
            this.f7316u.setVolume(0.0f, 0.0f);
        }
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: U */
    public void mo27462U() {
        super.mo27462U();
        Log.i("JZVD", "startVideo");
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: Y */
    public void mo27461Y() {
        super.mo27461Y();
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: Z */
    public void mo27460Z() {
        super.mo27460Z();
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: a0 */
    public void mo27459a0() {
        super.mo27459a0();
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: b0 */
    public void mo27458b0() {
        super.mo27458b0();
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: c0 */
    public void mo27457c0() {
        super.mo27457c0();
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: d0 */
    public void mo27456d0() {
        super.mo27456d0();
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: e0 */
    public void mo27455e0() {
        super.mo27455e0();
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: f0 */
    public void mo27454f0() {
        super.mo27454f0();
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    public int getLayoutId() {
        return R$layout.jz_layout_standard;
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == 2131296831) {
            Log.i("JZVD", "onClick: fullscreen button");
        } else if (id != 2131297660) {
        } else {
            Log.i("JZVD", "onClick: start button");
        }
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        Log.i("JZVD", "Seek position ");
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        super.onTouch(view, motionEvent);
        if (view.getId() == 2131297688 && motionEvent.getAction() == 1) {
            if (this.f7303S) {
                Log.i("JZVD", "Touch screen seek position");
            }
            if (!this.f7302R) {
                return false;
            }
            Log.i("JZVD", "Touch screen change volume");
            return false;
        }
        return false;
    }

    @Override // cn.jzvd.JzvdStd
    /* renamed from: r0 */
    public void mo27453r0() {
        super.mo27453r0();
        Log.i("JZVD", "click blank");
    }

    public void setSilence(boolean z) {
        this.f8434H0 = z;
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: v */
    public void mo27452v() {
        super.mo27452v();
        Log.i("JZVD", "goto Fullscreen");
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: w */
    public void mo27451w() {
        super.mo27451w();
        Log.i("JZVD", "quit Fullscreen");
    }

    @Override // cn.jzvd.JzvdStd, cn.jzvd.Jzvd
    /* renamed from: x */
    public void mo27450x(Context context) {
        super.mo27450x(context);
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: z */
    public void mo27449z(int i, int i2) {
        super.mo27449z(i, i2);
    }
}
