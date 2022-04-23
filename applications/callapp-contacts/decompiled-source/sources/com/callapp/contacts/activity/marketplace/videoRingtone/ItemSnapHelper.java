package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.g;
import androidx.recyclerview.widget.h;
import androidx.recyclerview.widget.j;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\bH\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u0018\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001e"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;", "Landroidx/recyclerview/widget/LinearSnapHelper;", "()V", "context", "Landroid/content/Context;", "helper", "Landroidx/recyclerview/widget/OrientationHelper;", "maxScrollDistance", "", "scroller", "Landroid/widget/Scroller;", "attachToRecyclerView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "calculateDistanceToFinalSnap", "", "layoutManager", "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;", "targetView", "Landroid/view/View;", "calculateScrollDistance", "velocityX", "velocityY", "createScroller", "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;", "distanceToStart", "findFirstView", "findSnapView", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper.class */
public final class ItemSnapHelper extends h {

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f13352b = new Companion(null);

    /* renamed from: c  reason: collision with root package name */
    private Context f13353c;

    /* renamed from: d  reason: collision with root package name */
    private j f13354d;
    private Scroller e;
    private int f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion;", "", "()V", "MAX_SCROLL_ON_FLING_DURATION_MS", "", "MILLISECONDS_PER_INCH", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final j c(RecyclerView.i iVar) {
        if (this.f13354d == null) {
            this.f13354d = j.a(iVar);
        }
        j jVar = this.f13354d;
        p.a(jVar);
        return jVar;
    }

    @Override // androidx.recyclerview.widget.h, androidx.recyclerview.widget.o
    public final View a(RecyclerView.i iVar) {
        int childCount;
        j c2 = c(iVar);
        View view = null;
        if (iVar == null || (childCount = iVar.getChildCount()) == 0) {
            return null;
        }
        int i = Integer.MAX_VALUE;
        int b2 = c2.b();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = iVar.getChildAt(i2);
            int abs = Math.abs(c2.a(childAt) - b2);
            i = i;
            if (abs < i) {
                view = childAt;
                i = abs;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.o
    public final void a(RecyclerView recyclerView) {
        if (recyclerView != null) {
            this.f13353c = recyclerView.getContext();
            this.e = new Scroller(this.f13353c, new DecelerateInterpolator());
        } else {
            this.e = null;
            this.f13353c = null;
        }
        super.a(recyclerView);
    }

    @Override // androidx.recyclerview.widget.h, androidx.recyclerview.widget.o
    public final int[] a(RecyclerView.i layoutManager, View targetView) {
        p.d(layoutManager, "layoutManager");
        p.d(targetView, "targetView");
        j c2 = c(layoutManager);
        return new int[]{c2.a(targetView) - c2.b()};
    }

    @Override // androidx.recyclerview.widget.o
    public final RecyclerView.r b(final RecyclerView.i layoutManager) {
        p.d(layoutManager, "layoutManager");
        if (!(layoutManager instanceof RecyclerView.r.b)) {
            return super.b(layoutManager);
        }
        final Context context = this.f13353c;
        if (context == null) {
            return null;
        }
        return new g(context) { // from class: com.callapp.contacts.activity.marketplace.videoRingtone.ItemSnapHelper$createScroller$1
            @Override // androidx.recyclerview.widget.g
            public final float a(DisplayMetrics displayMetrics) {
                p.d(displayMetrics, "displayMetrics");
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // androidx.recyclerview.widget.g, androidx.recyclerview.widget.RecyclerView.r
            public final void a(View targetView, RecyclerView.s state, RecyclerView.r.a action) {
                p.d(targetView, "targetView");
                p.d(state, "state");
                p.d(action, "action");
                int[] a2 = ItemSnapHelper.this.a(layoutManager, targetView);
                int i = a2[0];
                action.a(i, a2[1], Math.max(1, Math.min(200, a(Math.abs(i)))), this.f5475b);
            }
        };
    }

    @Override // androidx.recyclerview.widget.o
    public final int[] b(int i, int i2) {
        int[] iArr = new int[2];
        j jVar = this.f13354d;
        if (jVar == null) {
            return iArr;
        }
        if (this.f == 0) {
            this.f = (jVar.c() - jVar.b()) / 2;
        }
        Scroller scroller = this.e;
        if (scroller != null) {
            int i3 = this.f;
            scroller.fling(0, 0, i, i2, -i3, i3, 0, 0);
        }
        Scroller scroller2 = this.e;
        int i4 = 0;
        iArr[0] = scroller2 != null ? scroller2.getFinalX() : 0;
        Scroller scroller3 = this.e;
        if (scroller3 != null) {
            i4 = scroller3.getFinalY();
        }
        iArr[1] = i4;
        return iArr;
    }
}
