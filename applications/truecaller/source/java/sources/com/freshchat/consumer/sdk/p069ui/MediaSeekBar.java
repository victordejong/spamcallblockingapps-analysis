package com.freshchat.consumer.sdk.p069ui;

import android.app.Activity;
import android.content.Context;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1723q;
/* renamed from: com.freshchat.consumer.sdk.ui.MediaSeekBar */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/MediaSeekBar.class */
public class MediaSeekBar extends SeekBar {

    /* renamed from: hf */
    private Boolean f4807hf = Boolean.TRUE;

    /* renamed from: hg */
    public Activity f4808hg;

    public MediaSeekBar(Context context) {
        super(context);
    }

    public MediaSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void m39296a(final View view, final MediaPlayer mediaPlayer) {
        new Thread() { // from class: com.freshchat.consumer.sdk.ui.MediaSeekBar.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    MediaSeekBar.this.f4807hf = Boolean.TRUE;
                    MediaSeekBar.this.setMax(mediaPlayer.getDuration());
                    MediaSeekBar.this.f4808hg.runOnUiThread(new Runnable() { // from class: com.freshchat.consumer.sdk.ui.MediaSeekBar.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            MediaSeekBar.this.setThumbOffset(1);
                            C19271 c19271 = C19271.this;
                            ((ImageView) view).setImageResource(C1623aq.m40238j(MediaSeekBar.this.f4808hg, C1298R.attr.freshchatStopIcon));
                        }
                    });
                    while (MediaSeekBar.this.f4807hf.booleanValue() && mediaPlayer.isPlaying()) {
                        try {
                            MediaSeekBar.this.setProgress(mediaPlayer.getCurrentPosition());
                        } catch (Exception e) {
                            C1723q.m39823a(e);
                        }
                        Thread.sleep(100L);
                    }
                    MediaSeekBar.this.setProgress(0);
                    MediaSeekBar.this.f4808hg.runOnUiThread(new Runnable() { // from class: com.freshchat.consumer.sdk.ui.MediaSeekBar.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            MediaSeekBar.this.setThumbOffset(9999);
                            C19271 c19271 = C19271.this;
                            ((ImageView) view).setImageResource(C1623aq.m40238j(MediaSeekBar.this.f4808hg, C1298R.attr.freshchatPlayIcon));
                        }
                    });
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }.start();
    }

    /* renamed from: dZ */
    public void m39293dZ() {
        this.f4807hf = Boolean.FALSE;
    }
}
