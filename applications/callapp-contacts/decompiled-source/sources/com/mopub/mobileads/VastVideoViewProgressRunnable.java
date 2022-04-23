package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.VideoEvent;
import com.mopub.mobileads.VastFractionalProgressTracker;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0017\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0092\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0092\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/mopub/mobileads/VastVideoViewProgressRunnable;", "Lcom/mopub/mobileads/RepeatingHandlerRunnable;", "videoViewController", "Lcom/mopub/mobileads/VastVideoViewController;", "vastVideoConfig", "Lcom/mopub/mobileads/VastVideoConfig;", "handler", "Landroid/os/Handler;", "(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V", "doWork", "", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
@Mockable
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnable.class */
public class VastVideoViewProgressRunnable extends RepeatingHandlerRunnable {

    /* renamed from: c  reason: collision with root package name */
    private final VastVideoViewController f34331c;

    /* renamed from: d  reason: collision with root package name */
    private final VastVideoConfig f34332d;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnable$WhenMappings.class */
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
    public VastVideoViewProgressRunnable(VastVideoViewController videoViewController, VastVideoConfig vastVideoConfig, Handler handler) {
        super(handler);
        p.c(videoViewController, "videoViewController");
        p.c(vastVideoConfig, "vastVideoConfig");
        p.c(handler, "handler");
        this.f34331c = videoViewController;
        this.f34332d = vastVideoConfig;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_FIRST_QUARTILE.name(), 0.25f).messageType(VastTracker.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_MIDPOINT.name(), 0.5f).messageType(VastTracker.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_THIRD_QUARTILE.name(), 0.75f).messageType(VastTracker.MessageType.QUARTILE_EVENT).build());
        vastVideoConfig.addFractionalTrackers(arrayList);
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int duration = this.f34331c.getDuration();
        int currentPosition = this.f34331c.getCurrentPosition();
        this.f34331c.updateProgressBar();
        if (duration > 0) {
            List<VastTracker> untriggeredTrackersBefore = this.f34332d.getUntriggeredTrackersBefore(currentPosition, duration);
            ArrayList arrayList = new ArrayList();
            Iterator<T> it2 = untriggeredTrackersBefore.iterator();
            while (true) {
                ArrayList arrayList2 = null;
                String str = null;
                if (it2.hasNext()) {
                    VastTracker vastTracker = (VastTracker) it2.next();
                    vastTracker.setTracked();
                    int i = WhenMappings.$EnumSwitchMapping$0[vastTracker.getMessageType().ordinal()];
                    if (i == 1) {
                        str = vastTracker.getContent();
                    } else if (i == 2) {
                        this.f34331c.handleViewabilityQuartileEvent(vastTracker.getContent());
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (str != null) {
                        arrayList.add(str);
                    }
                } else {
                    ArrayList arrayList3 = arrayList;
                    if (!arrayList3.isEmpty()) {
                        arrayList2 = arrayList3;
                    }
                    if (arrayList2 != null) {
                        VastMacroHelper withContentPlayHead = new VastMacroHelper(arrayList2).withAssetUri(this.f34331c.getNetworkMediaFileUrl()).withContentPlayHead(Integer.valueOf(currentPosition));
                        p.a((Object) withContentPlayHead, "VastMacroHelper(it)\n    …PlayHead(currentPosition)");
                        TrackingRequest.makeTrackingHttpRequest(withContentPlayHead.getUris(), this.f34331c.f34046a);
                    }
                    this.f34331c.handleIconDisplay(currentPosition);
                    return;
                }
            }
        }
    }
}
