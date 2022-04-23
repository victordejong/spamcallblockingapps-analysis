package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnable.class */
public class VastVideoViewProgressRunnable extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewController f34408d;

    /* renamed from: e */
    public final VastVideoConfig f34409e;

    public VastVideoViewProgressRunnable(VastVideoViewController vastVideoViewController, VastVideoConfig vastVideoConfig, Handler handler) {
        super(handler);
        Preconditions.checkNotNull(vastVideoViewController);
        Preconditions.checkNotNull(vastVideoConfig);
        this.f34408d = vastVideoViewController;
        this.f34409e = vastVideoConfig;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VastFractionalProgressTracker(VastTracker.MessageType.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_STARTED.name(), 0.0f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.MessageType.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_IMPRESSED.name(), 0.0f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.MessageType.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_VIDEO_FIRST_QUARTILE.name(), 0.25f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.MessageType.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_VIDEO_MIDPOINT.name(), 0.5f));
        arrayList.add(new VastFractionalProgressTracker(VastTracker.MessageType.QUARTILE_EVENT, ExternalViewabilitySession.VideoEvent.AD_VIDEO_THIRD_QUARTILE.name(), 0.75f));
        this.f34409e.addFractionalTrackers(arrayList);
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int duration = this.f34408d.getDuration();
        int currentPosition = this.f34408d.getCurrentPosition();
        this.f34408d.updateProgressBar();
        if (duration > 0) {
            List<VastTracker> untriggeredTrackersBefore = this.f34409e.getUntriggeredTrackersBefore(currentPosition, duration);
            if (!untriggeredTrackersBefore.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (VastTracker vastTracker : untriggeredTrackersBefore) {
                    if (vastTracker.getMessageType() == VastTracker.MessageType.TRACKING_URL) {
                        arrayList.add(vastTracker.getContent());
                    } else if (vastTracker.getMessageType() == VastTracker.MessageType.QUARTILE_EVENT) {
                        this.f34408d.m4234b(vastTracker.getContent());
                    }
                    vastTracker.setTracked();
                }
                TrackingRequest.makeTrackingHttpRequest(new VastMacroHelper(arrayList).withAssetUri(this.f34408d.getNetworkMediaFileUrl()).withContentPlayHead(Integer.valueOf(currentPosition)).getUris(), this.f34408d.m4414b());
            }
            this.f34408d.handleIconDisplay(currentPosition);
        }
    }
}
