package net.pubnative.lite.sdk.interstitial;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Random;
import net.pubnative.lite.sdk.interstitial.presenter.InterstitialPresenter;
import net.pubnative.lite.sdk.utils.PNLocalBroadcastManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver.class */
public class HyBidInterstitialBroadcastReceiver extends BroadcastReceiver {
    public static final String BROADCAST_ID = "pn_broadcastId";
    private final long mBroadcastId;
    private boolean mDestroyed;
    private final IntentFilter mIntentFilter;
    private Listener mListener;
    private final PNLocalBroadcastManager mLocalBroadcastManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: net.pubnative.lite.sdk.interstitial.HyBidInterstitialBroadcastReceiver$1 */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$1.class */
    public static /* synthetic */ class C205651 {

        /* renamed from: $SwitchMap$net$pubnative$lite$sdk$interstitial$HyBidInterstitialBroadcastReceiver$Action */
        static final /* synthetic */ int[] f67061x8125893;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.values().length];
            f67061x8125893 = iArr;
            try {
                iArr[Action.SHOW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f67061x8125893[Action.CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f67061x8125893[Action.DISMISS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f67061x8125893[Action.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f67061x8125893[Action.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Action.class */
    public enum Action {
        SHOW("net.pubnative.hybid.interstitial.show"),
        CLICK("net.pubnative.hybid.interstitial.click"),
        DISMISS("net.pubnative.hybid.interstitial.dismiss"),
        ERROR("net.pubnative.hybid.interstitial.error"),
        NONE("none");
        
        private final String mId;

        Action(String str) {
            this.mId = str;
        }

        public static Action from(String str) {
            Action action = SHOW;
            if (action.getId().equals(str)) {
                return action;
            }
            Action action2 = CLICK;
            if (action2.getId().equals(str)) {
                return action2;
            }
            Action action3 = DISMISS;
            if (action3.getId().equals(str)) {
                return action3;
            }
            Action action4 = ERROR;
            return action4.getId().equals(str) ? action4 : NONE;
        }

        public final String getId() {
            return this.mId;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/interstitial/HyBidInterstitialBroadcastReceiver$Listener.class */
    public interface Listener {
        void onReceivedAction(Action action);
    }

    HyBidInterstitialBroadcastReceiver(long j, PNLocalBroadcastManager pNLocalBroadcastManager, IntentFilter intentFilter) {
        this.mBroadcastId = j;
        this.mLocalBroadcastManager = pNLocalBroadcastManager;
        this.mIntentFilter = intentFilter;
        intentFilter.addAction(Action.SHOW.getId());
        intentFilter.addAction(Action.CLICK.getId());
        intentFilter.addAction(Action.DISMISS.getId());
        intentFilter.addAction(Action.ERROR.getId());
    }

    public HyBidInterstitialBroadcastReceiver(Context context) {
        this(new Random().nextLong(), PNLocalBroadcastManager.getInstance(context), new IntentFilter());
    }

    public void destroy() {
        this.mLocalBroadcastManager.unregisterReceiver(this);
        this.mDestroyed = true;
    }

    public long getBroadcastId() {
        return this.mBroadcastId;
    }

    public void handleAction(Action action, InterstitialPresenter interstitialPresenter, InterstitialPresenter.Listener listener) {
        if (listener == null) {
            return;
        }
        int i = C205651.f67061x8125893[action.ordinal()];
        if (i == 1) {
            listener.onInterstitialShown(interstitialPresenter);
        } else if (i == 2) {
            listener.onInterstitialClicked(interstitialPresenter);
        } else if (i == 3) {
            listener.onInterstitialDismissed(interstitialPresenter);
        } else if (i != 4) {
        } else {
            listener.onInterstitialError(interstitialPresenter);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.mDestroyed || this.mListener == null) {
            return;
        }
        if (this.mBroadcastId != intent.getLongExtra(BROADCAST_ID, -1L)) {
            return;
        }
        this.mListener.onReceivedAction(Action.from(intent.getAction()));
    }

    public void register() {
        if (this.mDestroyed) {
            return;
        }
        this.mLocalBroadcastManager.registerReceiver(this, this.mIntentFilter);
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }
}
