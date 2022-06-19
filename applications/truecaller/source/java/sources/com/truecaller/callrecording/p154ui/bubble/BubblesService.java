package com.truecaller.callrecording.p154ui.bubble;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.WindowManager;
import com.truecaller.callrecording.p154ui.bubble.BubblesService;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p982k0.p983a.AbstractC16285j;
import p193e.p194a.p982k0.p989n.p991b.C16371g;
import p193e.p194a.p982k0.p989n.p991b.C16372h;
import p193e.p194a.p982k0.p989n.p991b.RunnableC16369e;
/* renamed from: com.truecaller.callrecording.ui.bubble.BubblesService */
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/bubble/BubblesService.class */
public class BubblesService extends Service {

    /* renamed from: a */
    public final BinderC3636a f10800a = new BinderC3636a();

    /* renamed from: b */
    public final List<BubbleLayout> f10801b = new ArrayList();

    /* renamed from: c */
    public final Handler f10802c = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    public C16371g f10803d;

    /* renamed from: e */
    public WindowManager f10804e;

    /* renamed from: f */
    public C16372h f10805f;

    /* renamed from: g */
    public C16372h.AbstractC16374b f10806g;
    @Inject

    /* renamed from: h */
    public AbstractC16285j f10807h;

    /* renamed from: com.truecaller.callrecording.ui.bubble.BubblesService$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/bubble/BubblesService$a.class */
    public class BinderC3636a extends Binder {
        public BinderC3636a() {
            BubblesService.this = r4;
        }
    }

    /* renamed from: a */
    public final WindowManager.LayoutParams m35735a(int i, int i2) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, this.f10807h.mo17623g(), 524296, -3);
        layoutParams.gravity = 8388659;
        layoutParams.x = i;
        layoutParams.y = i2;
        return layoutParams;
    }

    /* renamed from: b */
    public final WindowManager m35734b() {
        if (this.f10804e == null) {
            this.f10804e = (WindowManager) getSystemService("window");
        }
        return this.f10804e;
    }

    /* renamed from: c */
    public void m35733c() {
        this.f10802c.post(new Runnable() { // from class: e.a.k0.n.b.c
            @Override // java.lang.Runnable
            public final void run() {
                BubblesService bubblesService = BubblesService.this;
                C16371g c16371g = bubblesService.f10803d;
                if (c16371g == null || !c16371g.isAttachedToWindow()) {
                    return;
                }
                bubblesService.m35734b().removeView(bubblesService.f10803d);
            }
        });
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f10800a;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C18334g0.m15203t(getBaseContext()).mo11165a(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        m35733c();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        for (BubbleLayout bubbleLayout : this.f10801b) {
            if (bubbleLayout != null) {
                this.f10802c.post(new RunnableC16369e(this, bubbleLayout));
            }
        }
        this.f10801b.clear();
        return super.onUnbind(intent);
    }
}
