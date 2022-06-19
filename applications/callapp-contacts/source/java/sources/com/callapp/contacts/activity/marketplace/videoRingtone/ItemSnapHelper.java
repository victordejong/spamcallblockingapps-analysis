package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.AbstractC2694j;
import androidx.recyclerview.widget.C2690g;
import androidx.recyclerview.widget.C2691h;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\bH\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u0018\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001e"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;", "Landroidx/recyclerview/widget/LinearSnapHelper;", "()V", "context", "Landroid/content/Context;", "helper", "Landroidx/recyclerview/widget/OrientationHelper;", "maxScrollDistance", "", "scroller", "Landroid/widget/Scroller;", "attachToRecyclerView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "calculateDistanceToFinalSnap", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "targetView", "Landroid/view/View;", "calculateScrollDistance", "velocityX", "velocityY", "createScroller", "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;", "distanceToStart", "findFirstView", "findSnapView", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper.class */
public final class ItemSnapHelper extends C2691h {

    /* renamed from: b */
    public static final Companion f23734b = new Companion(null);

    /* renamed from: c */
    private Context f23735c;

    /* renamed from: d */
    private AbstractC2694j f23736d;

    /* renamed from: e */
    private Scroller f23737e;

    /* renamed from: f */
    private int f23738f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\u0007"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion;", "", "()V", "MAX_SCROLL_ON_FLING_DURATION_MS", "", "MILLISECONDS_PER_INCH", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: c */
    private final AbstractC2694j m29888c(RecyclerView.AbstractC2637i abstractC2637i) {
        if (this.f23736d == null) {
            this.f23736d = AbstractC2694j.m40075a(abstractC2637i);
        }
        AbstractC2694j abstractC2694j = this.f23736d;
        C18524p.m3851a(abstractC2694j);
        return abstractC2694j;
    }

    @Override // androidx.recyclerview.widget.C2691h, androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public final View mo29893a(RecyclerView.AbstractC2637i abstractC2637i) {
        int childCount;
        AbstractC2694j m29888c = m29888c(abstractC2637i);
        View view = null;
        if (abstractC2637i == null || (childCount = abstractC2637i.getChildCount()) == 0) {
            return null;
        }
        int i = Integer.MAX_VALUE;
        int mo40070b = m29888c.mo40070b();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = abstractC2637i.getChildAt(i2);
            int abs = Math.abs(m29888c.mo40071a(childAt) - mo40070b);
            int i3 = i;
            if (abs < i) {
                view = childAt;
                i3 = abs;
            }
            i2++;
            i = i3;
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public final void mo29891a(RecyclerView recyclerView) {
        if (recyclerView != null) {
            this.f23735c = recyclerView.getContext();
            this.f23737e = new Scroller(this.f23735c, new DecelerateInterpolator());
        } else {
            this.f23737e = null;
            this.f23735c = null;
        }
        super.mo29891a(recyclerView);
    }

    @Override // androidx.recyclerview.widget.C2691h, androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: a */
    public final int[] mo29892a(RecyclerView.AbstractC2637i layoutManager, View targetView) {
        C18524p.m3840d(layoutManager, "layoutManager");
        C18524p.m3840d(targetView, "targetView");
        AbstractC2694j m29888c = m29888c(layoutManager);
        return new int[]{m29888c.mo40071a(targetView) - m29888c.mo40070b()};
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: b */
    public final RecyclerView.AbstractC2651r mo29889b(final RecyclerView.AbstractC2637i layoutManager) {
        C18524p.m3840d(layoutManager, "layoutManager");
        if (!(layoutManager instanceof RecyclerView.AbstractC2651r.AbstractC2653b)) {
            return super.mo29889b(layoutManager);
        }
        final Context context = this.f23735c;
        if (context != null) {
            return new C2690g(context) { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.ItemSnapHelper$createScroller$1
                @Override // androidx.recyclerview.widget.C2690g
                /* renamed from: a */
                public final float mo10799a(DisplayMetrics displayMetrics) {
                    C18524p.m3840d(displayMetrics, "displayMetrics");
                    return 100.0f / displayMetrics.densityDpi;
                }

                @Override // androidx.recyclerview.widget.C2690g, androidx.recyclerview.widget.RecyclerView.AbstractC2651r
                /* renamed from: a */
                public final void mo29887a(View targetView, RecyclerView.C2654s state, RecyclerView.AbstractC2651r.C2652a action) {
                    C18524p.m3840d(targetView, "targetView");
                    C18524p.m3840d(state, "state");
                    C18524p.m3840d(action, "action");
                    int[] mo29892a = ItemSnapHelper.this.mo29892a(layoutManager, targetView);
                    int i = mo29892a[0];
                    action.m40308a(i, mo29892a[1], Math.max(1, Math.min(200, m40088a(Math.abs(i)))), this.f10287b);
                }
            };
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.AbstractC2703o
    /* renamed from: b */
    public final int[] mo29890b(int i, int i2) {
        int[] iArr = new int[2];
        AbstractC2694j abstractC2694j = this.f23736d;
        if (abstractC2694j == null) {
            return iArr;
        }
        if (this.f23738f == 0) {
            this.f23738f = (abstractC2694j.mo40068c() - abstractC2694j.mo40070b()) / 2;
        }
        Scroller scroller = this.f23737e;
        if (scroller != null) {
            int i3 = this.f23738f;
            scroller.fling(0, 0, i, i2, -i3, i3, 0, 0);
        }
        Scroller scroller2 = this.f23737e;
        iArr[0] = scroller2 != null ? scroller2.getFinalX() : 0;
        Scroller scroller3 = this.f23737e;
        int i4 = 0;
        if (scroller3 != null) {
            i4 = scroller3.getFinalY();
        }
        iArr[1] = i4;
        return iArr;
    }
}
