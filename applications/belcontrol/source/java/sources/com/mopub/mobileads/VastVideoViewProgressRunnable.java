package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.VideoEvent;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
@Mockable
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnable.class */
public class VastVideoViewProgressRunnable extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewController f4958d;

    /* renamed from: f */
    public final VastVideoConfig f4959f;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnable$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VastTracker.MessageType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VastTracker.MessageType.TRACKING_URL.ordinal()] = 1;
            iArr[VastTracker.MessageType.QUARTILE_EVENT.ordinal()] = 2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewProgressRunnable(VastVideoViewController vastVideoViewController, VastVideoConfig vastVideoConfig, Handler handler) {
        super(handler);
        qk1.m744c(vastVideoViewController, "videoViewController");
        qk1.m744c(vastVideoConfig, "vastVideoConfig");
        qk1.m744c(handler, "handler");
        this.f4958d = vastVideoViewController;
        this.f4959f = vastVideoConfig;
        ArrayList arrayList = new ArrayList();
        VastFractionalProgressTracker.Builder builder = new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_FIRST_QUARTILE.name(), 0.25f);
        VastTracker.MessageType messageType = VastTracker.MessageType.QUARTILE_EVENT;
        arrayList.add(builder.messageType(messageType).build());
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_MIDPOINT.name(), 0.5f).messageType(messageType).build());
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_THIRD_QUARTILE.name(), 0.75f).messageType(messageType).build());
        vastVideoConfig.addFractionalTrackers(arrayList);
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int duration = this.f4958d.getDuration();
        int currentPosition = this.f4958d.getCurrentPosition();
        this.f4958d.updateProgressBar();
        if (duration <= 0) {
            return;
        }
        List<VastTracker> untriggeredTrackersBefore = this.f4959f.getUntriggeredTrackersBefore(currentPosition, duration);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = untriggeredTrackersBefore.iterator();
        while (true) {
            String str = null;
            if (!it.hasNext()) {
                ArrayList arrayList2 = arrayList.isEmpty() ^ true ? arrayList : null;
                if (arrayList2 != null) {
                    VastMacroHelper withContentPlayHead = new VastMacroHelper(arrayList2).withAssetUri(this.f4958d.getNetworkMediaFileUrl()).withContentPlayHead(Integer.valueOf(currentPosition));
                    qk1.m745b(withContentPlayHead, "VastMacroHelper(it)\n    …PlayHead(currentPosition)");
                    TrackingRequest.makeTrackingHttpRequest(withContentPlayHead.getUris(), this.f4958d.m3701c());
                }
                this.f4958d.handleIconDisplay(currentPosition);
                return;
            }
            VastTracker vastTracker = (VastTracker) it.next();
            vastTracker.setTracked();
            int i = WhenMappings.$EnumSwitchMapping$0[vastTracker.getMessageType().ordinal()];
            if (i == 1) {
                str = vastTracker.getContent();
            } else if (i != 2) {
                throw new jj1();
            } else {
                this.f4958d.handleViewabilityQuartileEvent(vastTracker.getContent());
            }
            if (str != null) {
                arrayList.add(str);
            }
        }
    }
}
