package com.freshchat.consumer.sdk.p053f;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1711h;
/* renamed from: com.freshchat.consumer.sdk.f.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/f/b.class */
public class View$OnTouchListenerC1536b implements View.OnTouchListener {
    public static final String TAG = View$OnTouchListenerC1536b.class.getName();

    /* renamed from: ax */
    public C1711h f4157ax;

    /* renamed from: eJ */
    public boolean f4158eJ;

    /* renamed from: eK */
    public Context f4159eK;
    private long startTime;

    public View$OnTouchListenerC1536b(Context context, C1711h c1711h) {
        this.f4159eK = context;
        this.f4157ax = c1711h;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (this.f4158eJ) {
                return true;
            }
            this.f4157ax.startRecording();
            this.startTime = System.currentTimeMillis();
            return true;
        } else if (motionEvent.getAction() != 1) {
            return true;
        } else {
            if (this.f4158eJ) {
                this.f4158eJ = false;
            } else {
                boolean z = System.currentTimeMillis() - this.startTime < 750;
                this.f4158eJ = z;
                if (z) {
                    Toast.makeText(this.f4159eK, "Hold to record, release to send, swipe away to cancel", 1).show();
                    this.f4157ax.m39939eh();
                    return true;
                }
                this.f4158eJ = false;
                view.playSoundEffect(0);
                if (C1471i.m40845a(view, motionEvent)) {
                    this.f4157ax.m39938ei();
                    return true;
                }
            }
            this.f4157ax.m39939eh();
            return true;
        }
    }
}
