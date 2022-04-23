package net.pubnative.lite.sdk.vpaid.helpers;

import android.os.CountDownTimer;
import com.callapp.contacts.model.Constants;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/SimpleTimer.class */
public class SimpleTimer extends CountDownTimer {
    private Listener mListener;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/SimpleTimer$Listener.class */
    public interface Listener {
        void onFinish();
    }

    public SimpleTimer(long j, Listener listener) {
        super(j, Constants.MINUTE_IN_MILLIS);
        this.mListener = listener;
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onFinish();
        }
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
    }
}
