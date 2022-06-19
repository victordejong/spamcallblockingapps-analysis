package com.mopub.mobileads;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.IntentActions;
import com.mopub.common.VideoEvent;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\b\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010��0��2\u000e\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "<anonymous parameter 0>", "Landroid/view/MotionEvent;", "event", "", "onTouch", "(Landroid/view/View;Landroid/view/MotionEvent;)Z", "<anonymous>"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$d.class */
public final class VastVideoViewController$d implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ VastVideoViewController f8943a;

    public VastVideoViewController$d(VastVideoViewController vastVideoViewController) {
        this.f8943a = vastVideoViewController;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        l.b(motionEvent, "event");
        if (motionEvent.getAction() == 1) {
            String clickThroughUrl = this.f8943a.getVastVideoConfig().getClickThroughUrl();
            if (clickThroughUrl == null || clickThroughUrl.length() == 0) {
                return true;
            }
            if (this.f8943a.getVastVideoConfig().isRewarded() && !this.f8943a.getShouldAllowClose()) {
                return true;
            }
            VastVideoViewController.access$getExternalViewabilitySessionManager$p(this.f8943a).recordVideoEvent(VideoEvent.AD_CLICK_THRU, this.f8943a.getCurrentPosition());
            VastVideoViewController vastVideoViewController = this.f8943a;
            vastVideoViewController.setClosing(vastVideoViewController.isComplete());
            this.f8943a.m36251a(IntentActions.ACTION_FULLSCREEN_CLICK);
            VastVideoConfig vastVideoConfig = this.f8943a.getVastVideoConfig();
            Activity activity = this.f8943a.getActivity();
            Integer valueOf = Integer.valueOf(this.f8943a.getDuration());
            valueOf.intValue();
            if (!this.f8943a.isComplete()) {
                valueOf = null;
            }
            vastVideoConfig.handleClickForResult(activity, valueOf != null ? valueOf.intValue() : this.f8943a.getCurrentPosition(), 1);
            return true;
        }
        return true;
    }
}
