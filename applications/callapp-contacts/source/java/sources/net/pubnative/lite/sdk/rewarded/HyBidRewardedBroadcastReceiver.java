package net.pubnative.lite.sdk.rewarded;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Random;
import net.pubnative.lite.sdk.rewarded.presenter.RewardedPresenter;
import net.pubnative.lite.sdk.utils.PNLocalBroadcastManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver.class */
public class HyBidRewardedBroadcastReceiver extends BroadcastReceiver {
    public static final String BROADCAST_ID = "pn_rewarded_broadcastId";
    private final long mBroadcastId;
    private boolean mDestroyed;
    private final IntentFilter mIntentFilter;
    private Listener mListener;
    private final PNLocalBroadcastManager mLocalBroadcastManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: net.pubnative.lite.sdk.rewarded.HyBidRewardedBroadcastReceiver$1 */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$1.class */
    public static /* synthetic */ class C206121 {

        /* renamed from: $SwitchMap$net$pubnative$lite$sdk$rewarded$HyBidRewardedBroadcastReceiver$Action */
        static final /* synthetic */ int[] f67080xd623d5d7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[Action.values().length];
            f67080xd623d5d7 = iArr;
            try {
                iArr[Action.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f67080xd623d5d7[Action.CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f67080xd623d5d7[Action.CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f67080xd623d5d7[Action.FINISH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f67080xd623d5d7[Action.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f67080xd623d5d7[Action.NONE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Action.class */
    public enum Action {
        OPEN("net.pubnative.hybid.rewarded.open"),
        CLICK("net.pubnative.hybid.rewarded.click"),
        CLOSE("net.pubnative.hybid.rewarded.close"),
        FINISH("net.pubnative.hybid.rewarded.finish"),
        ERROR("net.pubnative.hybid.rewarded.error"),
        NONE("none");
        
        private final String mId;

        Action(String str) {
            this.mId = str;
        }

        public static Action from(String str) {
            Action action = OPEN;
            if (action.getId().equals(str)) {
                return action;
            }
            Action action2 = CLICK;
            if (action2.getId().equals(str)) {
                return action2;
            }
            Action action3 = CLOSE;
            if (action3.getId().equals(str)) {
                return action3;
            }
            Action action4 = FINISH;
            if (action4.getId().equals(str)) {
                return action4;
            }
            Action action5 = ERROR;
            return action5.getId().equals(str) ? action5 : NONE;
        }

        public final String getId() {
            return this.mId;
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/rewarded/HyBidRewardedBroadcastReceiver$Listener.class */
    public interface Listener {
        void onReceivedAction(Action action);
    }

    HyBidRewardedBroadcastReceiver(long j, PNLocalBroadcastManager pNLocalBroadcastManager, IntentFilter intentFilter) {
        this.mBroadcastId = j;
        this.mLocalBroadcastManager = pNLocalBroadcastManager;
        this.mIntentFilter = intentFilter;
        intentFilter.addAction(Action.OPEN.getId());
        intentFilter.addAction(Action.CLICK.getId());
        intentFilter.addAction(Action.CLOSE.getId());
        intentFilter.addAction(Action.FINISH.getId());
        intentFilter.addAction(Action.ERROR.getId());
    }

    public HyBidRewardedBroadcastReceiver(Context context) {
        this(new Random().nextLong(), PNLocalBroadcastManager.getInstance(context), new IntentFilter());
    }

    public void destroy() {
        this.mLocalBroadcastManager.unregisterReceiver(this);
        this.mDestroyed = true;
    }

    public long getBroadcastId() {
        return this.mBroadcastId;
    }

    public void handleAction(Action action, RewardedPresenter rewardedPresenter, RewardedPresenter.Listener listener) {
        if (listener == null) {
            return;
        }
        int i = C206121.f67080xd623d5d7[action.ordinal()];
        if (i == 1) {
            listener.onRewardedOpened(rewardedPresenter);
        } else if (i == 2) {
            listener.onRewardedClicked(rewardedPresenter);
        } else if (i == 3) {
            listener.onRewardedClosed(rewardedPresenter);
        } else if (i == 4) {
            listener.onRewardedFinished(rewardedPresenter);
        } else if (i != 5) {
        } else {
            listener.onRewardedError(rewardedPresenter);
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
