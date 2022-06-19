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
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0017\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0092\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0092\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/mopub/mobileads/VastVideoViewProgressRunnable;", "Lcom/mopub/mobileads/RepeatingHandlerRunnable;", "videoViewController", "Lcom/mopub/mobileads/VastVideoViewController;", "vastVideoConfig", "Lcom/mopub/mobileads/VastVideoConfig;", "handler", "Landroid/os/Handler;", "(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V", "doWork", "", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
@Mockable
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnable.class */
public class VastVideoViewProgressRunnable extends RepeatingHandlerRunnable {

    /* renamed from: c */
    private final VastVideoViewController f59604c;

    /* renamed from: d */
    private final VastVideoConfig f59605d;

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
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
        C18524p.m3841c(videoViewController, "videoViewController");
        C18524p.m3841c(vastVideoConfig, "vastVideoConfig");
        C18524p.m3841c(handler, "handler");
        this.f59604c = videoViewController;
        this.f59605d = vastVideoConfig;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_FIRST_QUARTILE.name(), 0.25f).messageType(VastTracker.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_MIDPOINT.name(), 0.5f).messageType(VastTracker.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTracker.Builder(VideoEvent.AD_VIDEO_THIRD_QUARTILE.name(), 0.75f).messageType(VastTracker.MessageType.QUARTILE_EVENT).build());
        vastVideoConfig.addFractionalTrackers(arrayList);
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int duration = this.f59604c.getDuration();
        int currentPosition = this.f59604c.getCurrentPosition();
        this.f59604c.updateProgressBar();
        if (duration <= 0) {
            return;
        }
        List<VastTracker> untriggeredTrackersBefore = this.f59605d.getUntriggeredTrackersBefore(currentPosition, duration);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = untriggeredTrackersBefore.iterator();
        while (true) {
            String str = null;
            if (!it2.hasNext()) {
                ArrayList arrayList2 = arrayList;
                ArrayList arrayList3 = null;
                if (!arrayList2.isEmpty()) {
                    arrayList3 = arrayList2;
                }
                if (arrayList3 != null) {
                    VastMacroHelper withContentPlayHead = new VastMacroHelper(arrayList3).withAssetUri(this.f59604c.getNetworkMediaFileUrl()).withContentPlayHead(Integer.valueOf(currentPosition));
                    C18524p.m3849a((Object) withContentPlayHead, "VastMacroHelper(it)\n    …PlayHead(currentPosition)");
                    TrackingRequest.makeTrackingHttpRequest(withContentPlayHead.getUris(), this.f59604c.f59125a);
                }
                this.f59604c.handleIconDisplay(currentPosition);
                return;
            }
            VastTracker vastTracker = (VastTracker) it2.next();
            vastTracker.setTracked();
            int i = WhenMappings.$EnumSwitchMapping$0[vastTracker.getMessageType().ordinal()];
            if (i == 1) {
                str = vastTracker.getContent();
            } else if (i != 2) {
                throw new NoWhenBranchMatchedException();
            } else {
                this.f59604c.handleViewabilityQuartileEvent(vastTracker.getContent());
            }
            if (str != null) {
                arrayList.add(str);
            }
        }
    }
}
