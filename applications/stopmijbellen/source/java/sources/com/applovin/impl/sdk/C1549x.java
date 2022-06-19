package com.applovin.impl.sdk;

import android.app.Activity;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.view.animation.Animation;
import com.applovin.impl.mediation.p038a.AbstractC1048e;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.sdk.x */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/x.class */
public class C1549x {

    /* renamed from: a */
    private final C1408l f5740a;

    /* renamed from: b */
    private final C1479t f5741b;

    /* renamed from: c */
    private final View f5742c;

    public C1549x(View view, C1408l c1408l) {
        this.f5740a = c1408l;
        this.f5741b = c1408l.m5542A();
        this.f5742c = view;
    }

    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v135, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* renamed from: a */
    public long m4907a(AbstractC1048e abstractC1048e) {
        char c;
        this.f5741b.m5116b("ViewabilityTracker", "Checking visibility...");
        if (!this.f5742c.isShown()) {
            this.f5741b.m5111e("ViewabilityTracker", "View is hidden");
            c = 2;
        } else {
            c = 0;
        }
        char c2 = c;
        if (this.f5742c.getAlpha() < abstractC1048e.m6660E()) {
            this.f5741b.m5111e("ViewabilityTracker", "View is transparent");
            c2 = c | 4;
        }
        Animation animation = this.f5742c.getAnimation();
        char c3 = c2;
        if (animation != null) {
            c3 = c2;
            if (animation.hasStarted()) {
                c3 = c2;
                if (!animation.hasEnded()) {
                    this.f5741b.m5111e("ViewabilityTracker", "View is animating");
                    c3 = c2 | '\b';
                }
            }
        }
        char c4 = c3;
        if (this.f5742c.getParent() == null) {
            this.f5741b.m5111e("ViewabilityTracker", "No parent view found");
            c4 = c3 | 16;
        }
        int pxToDp = AppLovinSdkUtils.pxToDp(this.f5742c.getContext(), this.f5742c.getWidth());
        char c5 = c4;
        if (pxToDp < abstractC1048e.m6662C()) {
            this.f5741b.m5111e("ViewabilityTracker", "View has width (" + pxToDp + ") below threshold");
            c5 = c4 | ' ';
        }
        int pxToDp2 = AppLovinSdkUtils.pxToDp(this.f5742c.getContext(), this.f5742c.getHeight());
        char c6 = c5;
        if (pxToDp2 < abstractC1048e.m6661D()) {
            this.f5741b.m5111e("ViewabilityTracker", "View has height (" + pxToDp2 + ") below threshold");
            c6 = c5 | '@';
        }
        Point m5075a = C1492g.m5075a(this.f5742c.getContext());
        Rect rect = new Rect(0, 0, m5075a.x, m5075a.y);
        int[] iArr = {-1, -1};
        this.f5742c.getLocationOnScreen(iArr);
        Rect rect2 = new Rect(iArr[0], iArr[1], this.f5742c.getWidth() + iArr[0], this.f5742c.getHeight() + iArr[1]);
        char c7 = c6;
        if (!Rect.intersects(rect, rect2)) {
            this.f5741b.m5111e("ViewabilityTracker", "Rect (" + rect2 + ") outside of screen's bounds (" + rect + ")");
            c7 = c6 | 128;
        }
        Activity m6068a = this.f5740a.m5491ad().m6068a();
        char c8 = c7;
        if (m6068a != null) {
            c8 = c7;
            if (!Utils.isViewInTopActivity(this.f5742c, m6068a)) {
                this.f5741b.m5111e("ViewabilityTracker", "View is not in top activity's view hierarchy");
                c8 = c7 | 256;
            }
        }
        C1479t c1479t = this.f5741b;
        StringBuilder m8752j = C0082b.m8752j("Returning flags: ");
        m8752j.append(Long.toBinaryString(c8));
        c1479t.m5116b("ViewabilityTracker", m8752j.toString());
        return c8;
    }
}
