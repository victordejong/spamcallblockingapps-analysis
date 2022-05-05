package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.mobileads.VastFractionalProgressTrackerTwo;
import com.mopub.mobileads.VastTrackerTwo;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p626l.C14976h;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\b\u0017\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0092\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0092\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m815d2 = {"Lcom/mopub/mobileads/VastVideoViewProgressRunnableTwo;", "Lcom/mopub/mobileads/RepeatingHandlerRunnable;", "videoViewController", "Lcom/mopub/mobileads/VastVideoViewControllerTwo;", "vastVideoConfig", "Lcom/mopub/mobileads/VastVideoConfigTwo;", "handler", "Landroid/os/Handler;", "(Lcom/mopub/mobileads/VastVideoViewControllerTwo;Lcom/mopub/mobileads/VastVideoConfigTwo;Landroid/os/Handler;)V", "doWork", "", "mopub-sdk-base_release"}, m814k = 1, m813mv = {1, 1, 16})
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnableTwo.class */
public class VastVideoViewProgressRunnableTwo extends RepeatingHandlerRunnable {

    /* renamed from: d */
    public final VastVideoViewControllerTwo f8799d;

    /* renamed from: e */
    public final VastVideoConfigTwo f8800e;

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 16})
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewProgressRunnableTwo$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[VastTrackerTwo.MessageType.values().length];

        static {
            $EnumSwitchMapping$0[VastTrackerTwo.MessageType.TRACKING_URL.ordinal()] = 1;
            $EnumSwitchMapping$0[VastTrackerTwo.MessageType.QUARTILE_EVENT.ordinal()] = 2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastVideoViewProgressRunnableTwo(VastVideoViewControllerTwo vastVideoViewControllerTwo, VastVideoConfigTwo vastVideoConfigTwo, Handler handler) {
        super(handler);
        C15149k.m377b(vastVideoViewControllerTwo, "videoViewController");
        C15149k.m377b(vastVideoConfigTwo, "vastVideoConfig");
        C15149k.m377b(handler, "handler");
        this.f8799d = vastVideoViewControllerTwo;
        this.f8800e = vastVideoConfigTwo;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_STARTED.name(), 0.0f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_IMPRESSED.name(), 0.0f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_VIDEO_FIRST_QUARTILE.name(), 0.25f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_VIDEO_MIDPOINT.name(), 0.5f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        arrayList.add(new VastFractionalProgressTrackerTwo.Builder(ExternalViewabilitySession.VideoEvent.AD_VIDEO_THIRD_QUARTILE.name(), 0.75f).messageType(VastTrackerTwo.MessageType.QUARTILE_EVENT).build());
        this.f8800e.addFractionalTrackers(arrayList);
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int duration = this.f8799d.getDuration();
        int currentPosition = this.f8799d.getCurrentPosition();
        this.f8799d.updateProgressBar();
        if (duration > 0) {
            List<VastTrackerTwo> untriggeredTrackersBefore = this.f8800e.getUntriggeredTrackersBefore(currentPosition, duration);
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
                        this.f8799d.handleViewabilityQuartileEvent$mopub_sdk_base_release(vastTrackerTwo.getContent());
                    } else {
                        throw new C14976h();
                    }
                    if (str != null) {
                        arrayList.add(str);
                    }
                } else {
                    ArrayList arrayList2 = arrayList.isEmpty() ^ true ? arrayList : null;
                    if (arrayList2 != null) {
                        VastMacroHelper withContentPlayHead = new VastMacroHelper(arrayList2).withAssetUri(this.f8799d.getNetworkMediaFileUrl()).withContentPlayHead(Integer.valueOf(currentPosition));
                        C15149k.m383a((Object) withContentPlayHead, "VastMacroHelper(it)\n    …PlayHead(currentPosition)");
                        TrackingRequest.makeTrackingHttpRequest(withContentPlayHead.getUris(), this.f8799d.m30570b());
                    }
                    this.f8799d.handleIconDisplay(currentPosition);
                    return;
                }
            }
        }
    }
}
