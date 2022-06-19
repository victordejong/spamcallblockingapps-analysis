package com.applovin.impl.adview.activity;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.C1013o;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.Utils;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/FullscreenAdService.class */
public class FullscreenAdService extends Service {
    public static final String DATA_KEY_AD_SOURCE = "ad_source";
    public static final String DATA_KEY_RAW_FULL_AD_RESPONSE = "raw_full_ad_response";
    private static final String TAG = "FullscreenAdService";

    /* renamed from: com.applovin.impl.adview.activity.FullscreenAdService$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/FullscreenAdService$a.class */
    public static class HandlerC0899a extends Handler {
        private HandlerC0899a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                C1013o c1013o = AppLovinFullscreenActivity.parentInterstitialWrapper;
                if (c1013o == null) {
                    if (!Utils.getBooleanForProbability(1)) {
                        super.handleMessage(message);
                        return;
                    }
                    throw new RuntimeException("parentWrapper is null for " + message.what);
                }
                AbstractC1286e m6823a = c1013o.m6823a();
                int i = message.what;
                EnumC0900b enumC0900b = EnumC0900b.AD;
                if (i == enumC0900b.m7082a()) {
                    Bundle bundle = new Bundle();
                    bundle.putString(FullscreenAdService.DATA_KEY_RAW_FULL_AD_RESPONSE, m6823a.getRawFullResponse());
                    bundle.putInt(FullscreenAdService.DATA_KEY_AD_SOURCE, m6823a.getSource().m6016a());
                    Message obtain = Message.obtain((Handler) null, enumC0900b.m7082a());
                    obtain.setData(bundle);
                    try {
                        message.replyTo.send(obtain);
                    } catch (RemoteException e) {
                        C1479t.m5113c(FullscreenAdService.TAG, "Failed to respond to Fullscreen Activity in another process with ad", e);
                    }
                } else if (message.what == EnumC0900b.AD_DISPLAYED.m7082a()) {
                    C1496j.m5018a(c1013o.m6807c(), m6823a);
                } else if (message.what == EnumC0900b.AD_CLICKED.m7082a()) {
                    C1496j.m5019a(c1013o.m6805d(), m6823a);
                } else if (message.what == EnumC0900b.AD_VIDEO_STARTED.m7082a()) {
                    C1496j.m5014a(c1013o.m6810b(), m6823a);
                } else if (message.what == EnumC0900b.AD_VIDEO_ENDED.m7082a()) {
                    Bundle data = message.getData();
                    C1496j.m5013a(c1013o.m6810b(), m6823a, data.getDouble("percent_viewed"), data.getBoolean("fully_watched"));
                } else if (message.what == EnumC0900b.AD_HIDDEN.m7082a()) {
                    C1496j.m5006b(c1013o.m6807c(), m6823a);
                } else {
                    super.handleMessage(message);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.FullscreenAdService$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/FullscreenAdService$b.class */
    public enum EnumC0900b {
        AD(0),
        AD_DISPLAYED(1),
        AD_CLICKED(2),
        AD_VIDEO_STARTED(3),
        AD_VIDEO_ENDED(4),
        AD_HIDDEN(5);
        

        /* renamed from: g */
        private final int f3393g;

        EnumC0900b(int i) {
            this.f3393g = i;
        }

        /* renamed from: a */
        public int m7082a() {
            return this.f3393g;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new Messenger(new HandlerC0899a()).getBinder();
    }
}
