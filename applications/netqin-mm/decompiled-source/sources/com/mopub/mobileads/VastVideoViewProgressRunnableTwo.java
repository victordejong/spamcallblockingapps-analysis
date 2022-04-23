package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.mobileads.VastFractionalProgressTrackerTwo;
import com.mopub.mobileads.VastTrackerTwo;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import p573f.p590w.p592c.C10059q;
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnableTwo.class */
public class VastVideoViewProgressRunnableTwo extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewControllerTwo f34410d;

    /* renamed from: e */
    public final VastVideoConfigTwo f34411e;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnableTwo$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VastTrackerTwo.MessageType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VastTrackerTwo.MessageType.TRACKING_URL.ordinal()] = 1;
            $EnumSwitchMapping$0[VastTrackerTwo.MessageType.QUARTILE_EVENT.ordinal()] = 2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewProgressRunnableTwo(VastVideoViewControllerTwo vastVideoViewControllerTwo, VastVideoConfigTwo vastVideoConfigTwo, Handler handler) {
        super(handler);
        C10059q.m1637b(vastVideoViewControllerTwo, "videoViewController");
        C10059q.m1637b(vastVideoConfigTwo, "vastVideoConfig");
        C10059q.m1637b(handler, "handler");
        this.f34410d = vastVideoViewControllerTwo;
        this.f34411e = vastVideoConfigTwo;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_STARTED.name(), 0.0f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_IMPRESSED.name(), 0.0f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_VIDEO_FIRST_QUARTILE.name(), 0.25f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_VIDEO_MIDPOINT.name(), 0.5f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_VIDEO_THIRD_QUARTILE.name(), 0.75f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        this.f34411e.addFractionalTrackers(arrayList);
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int duration = this.f34410d.getDuration();
        int currentPosition = this.f34410d.getCurrentPosition();
        this.f34410d.updateProgressBar();
        if (duration > 0) {
            List<VastTrackerTwo> untriggeredTrackersBefore = this.f34411e.getUntriggeredTrackersBefore(currentPosition, duration);
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = untriggeredTrackersBefore.iterator();
            while (true) {
                String str = null;
                if (it.hasNext()) {
                    VastTrackerTwo vastTrackerTwo = (VastTrackerTwo) it.next();
                    vastTrackerTwo.setTracked();
                    int i = WhenMappings.$EnumSwitchMapping$0[vastTrackerTwo.getMessageType().ordinal()];
                    if (i == 1) {
                        str = vastTrackerTwo.getContent();
                    } else if (i == 2) {
                        this.f34410d.handleViewabilityQuartileEvent$mopub_sdk_base_release(vastTrackerTwo.getContent());
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (str != null) {
                        arrayList.add(str);
                    }
                } else {
                    ArrayList arrayList2 = arrayList.isEmpty() ^ true ? arrayList : null;
                    if (arrayList2 != null) {
                        VastMacroHelper withContentPlayHead = new VastMacroHelper(arrayList2).withAssetUri(this.f34410d.getNetworkMediaFileUrl()).withContentPlayHead(Integer.valueOf(currentPosition));
                        C10059q.m1642a((Object) withContentPlayHead, "VastMacroHelper(it)\n    …PlayHead(currentPosition)");
                        TrackingRequest.makeTrackingHttpRequest(withContentPlayHead.getUris(), this.f34410d.m4414b());
                    }
                    this.f34410d.handleIconDisplay(currentPosition);
                    return;
                }
            }
        }
    }
}
