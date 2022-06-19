package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.GradientDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.SeekBar;
import com.google.android.material.badge.BadgeDrawable;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.C1968R;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerController.class */
public class POBVideoPlayerController extends POBPlayerController {

    /* renamed from: a */
    private POBVideoPlayer f930a;

    /* renamed from: d */
    private Resources f933d = getResources();

    /* renamed from: b */
    private SeekBar f931b = m642c();

    /* renamed from: c */
    private ImageButton f932c = m645b();

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerController$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerController$a.class */
    public class View$OnTouchListenerC1983a implements View.OnTouchListener {
        View$OnTouchListenerC1983a(POBVideoPlayerController pOBVideoPlayerController) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVideoPlayerController$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVideoPlayerController$b.class */
    public class View$OnClickListenerC1984b implements View.OnClickListener {
        View$OnClickListenerC1984b() {
            POBVideoPlayerController.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (POBVideoPlayerController.this.f930a != null) {
                POBVideoPlayerController pOBVideoPlayerController = POBVideoPlayerController.this;
                pOBVideoPlayerController.m646a(!pOBVideoPlayerController.f930a.isMute());
                POBVideoPlayerController pOBVideoPlayerController2 = POBVideoPlayerController.this;
                pOBVideoPlayerController2.m643b(pOBVideoPlayerController2.f930a.isMute());
            }
        }
    }

    public POBVideoPlayerController(Context context) {
        super(context);
        m649a();
    }

    /* renamed from: a */
    private void m649a() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_seek_bar_height));
        layoutParams.gravity = 80;
        layoutParams.leftMargin = this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_seek_left_margin);
        layoutParams.rightMargin = this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_seek_right_margin);
        addView(this.f931b, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_control_width), this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_control_height));
        layoutParams2.gravity = BadgeDrawable.BOTTOM_START;
        layoutParams2.bottomMargin = this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_mute_button_bottom_margin);
        layoutParams2.leftMargin = this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_mute_button_left_margin);
        addView(this.f932c, layoutParams2);
    }

    /* renamed from: a */
    public void m646a(boolean z) {
        POBVideoPlayer pOBVideoPlayer = this.f930a;
        if (pOBVideoPlayer != null) {
            if (z) {
                pOBVideoPlayer.mute();
            } else {
                pOBVideoPlayer.unMute();
            }
        }
    }

    /* renamed from: b */
    private ImageButton m645b() {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setId(C1968R.C1971id.mute_btn);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(this.f933d.getColor(C1968R.C1969color.pob_controls_background_color));
        gradientDrawable.setStroke(this.f933d.getDimensionPixelOffset(C1968R.dimen.pob_control_stroke_width), this.f933d.getColor(C1968R.C1969color.pob_controls_stroke_color));
        gradientDrawable.setAlpha(this.f933d.getInteger(C1968R.integer.pob_controls_alpha));
        imageButton.setBackground(gradientDrawable);
        imageButton.setPadding(0, 0, 0, 0);
        imageButton.setImageResource(C1968R.C1970drawable.ic_volume_up_black_24dp);
        imageButton.setOnClickListener(new View$OnClickListenerC1984b());
        return imageButton;
    }

    /* renamed from: b */
    public void m643b(boolean z) {
        int i;
        ImageButton imageButton;
        if (z) {
            imageButton = this.f932c;
            i = C1968R.C1970drawable.ic_volume_off_black_24dp;
        } else {
            imageButton = this.f932c;
            i = C1968R.C1970drawable.ic_volume_up_black_24dp;
        }
        imageButton.setImageResource(i);
    }

    /* renamed from: c */
    private SeekBar m642c() {
        SeekBar seekBar = new SeekBar(getContext());
        seekBar.setPadding(0, 0, 0, POBUtils.convertDpToPixel(1));
        seekBar.setThumb(null);
        seekBar.getProgressDrawable().setColorFilter(this.f933d.getColor(17170450), PorterDuff.Mode.SRC_ATOP);
        seekBar.setOnTouchListener(new View$OnTouchListenerC1983a(this));
        return seekBar;
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onMute(boolean z) {
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onPause() {
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onProgressUpdate(int i) {
        this.f931b.setProgress(i);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onResume() {
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onStart() {
        POBVideoPlayer pOBVideoPlayer = this.f930a;
        if (pOBVideoPlayer != null) {
            this.f931b.setMax(pOBVideoPlayer.getMediaDuration());
            m643b(this.f930a.isMute());
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBPlayerController
    public void setVideoPlayerEvents(POBVideoPlayer pOBVideoPlayer) {
        this.f930a = pOBVideoPlayer;
    }
}
