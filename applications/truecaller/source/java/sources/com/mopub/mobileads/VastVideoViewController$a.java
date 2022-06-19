package com.mopub.mobileads;

import android.view.MotionEvent;
import android.view.View;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0010\t\u001a\u00020\u00052\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010��0��2\u000e\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "<anonymous parameter 0>", "LLandroid/view/MotionEvent;;", "event", "", "onTouch", "(Landroid/view/View;LLandroid/view/MotionEvent;;)Z", "om/mopub/mobileads/VastVideoViewController.14.", "<anonymous>"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$a.class */
public final class VastVideoViewController$a implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ VastVideoViewController f8942a;

    public VastVideoViewController$a(VastVideoViewController vastVideoViewController) {
        this.f8942a = vastVideoViewController;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        l.b(motionEvent, "event");
        if (motionEvent.getAction() != 1) {
            return true;
        }
        VastVideoViewController vastVideoViewController = this.f8942a;
        vastVideoViewController.setClosing(vastVideoViewController.isComplete());
        this.f8942a.handleExitTrackers();
        VastVideoViewController vastVideoViewController2 = this.f8942a;
        vastVideoViewController2.f8782c.onVideoFinish(vastVideoViewController2.getCurrentPosition());
        return true;
    }
}
