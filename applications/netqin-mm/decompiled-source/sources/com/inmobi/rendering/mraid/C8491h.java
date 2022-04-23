package com.inmobi.rendering.mraid;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Vibrator;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
/* renamed from: com.inmobi.rendering.mraid.h */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/h.class */
public class C8491h {

    /* renamed from: a */
    public static final String f32983a = "h";

    /* renamed from: b */
    public RenderView f32984b;

    /* renamed from: c */
    public HandlerC8492a f32985c;

    /* renamed from: com.inmobi.rendering.mraid.h$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/h$a.class */
    public static final class HandlerC8492a extends Handler {

        /* renamed from: a */
        public static final String f32986a = HandlerC8492a.class.getSimpleName();

        /* renamed from: b */
        public WeakReference<RenderView> f32987b;

        public HandlerC8492a(Looper looper, RenderView renderView) {
            super(looper);
            this.f32987b = new WeakReference<>(renderView);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                String str = (String) message.obj;
                RenderView renderView = this.f32987b.get();
                if (renderView != null) {
                    renderView.m5597a(str, "broadcastEvent('vibrateComplete');");
                }
            }
        }
    }

    public C8491h(RenderView renderView) {
        this.f32984b = renderView;
        HandlerThread handlerThread = new HandlerThread("SystemTasksHandlerThread");
        handlerThread.start();
        this.f32985c = new HandlerC8492a(handlerThread.getLooper(), renderView);
    }

    /* renamed from: a */
    public final void m5464a(Context context) {
        HandlerC8492a aVar = this.f32985c;
        if (aVar != null && aVar.hasMessages(1)) {
            this.f32985c.removeMessages(1);
            ((Vibrator) context.getSystemService("vibrator")).cancel();
        }
    }
}
