package com.razorpay;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/razorpay/G__G_.class */
public final class G__G_ implements ServiceConnection {

    /* renamed from: a */
    private boolean f9391a;

    /* renamed from: b */
    private final LinkedBlockingQueue<IBinder> f9392b;

    private G__G_() {
        this.f9391a = false;
        this.f9392b = new LinkedBlockingQueue<>(1);
    }

    public /* synthetic */ G__G_(byte b) {
        this();
    }

    /* renamed from: a */
    public final IBinder m36098a() {
        if (!this.f9391a) {
            this.f9391a = true;
        }
        return this.f9392b.take();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f9392b.put(iBinder);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
