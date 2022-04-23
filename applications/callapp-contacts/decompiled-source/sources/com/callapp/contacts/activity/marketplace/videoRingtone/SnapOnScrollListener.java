package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.o;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001:\u00010B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0016J\u000e\u0010#\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0016J\u0016\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\tJ\u0010\u0010(\u001a\u00020!2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010)\u001a\u00020!2\u0006\u0010%\u001a\u00020&2\u0006\u0010*\u001a\u00020\tH\u0016J \u0010+\u001a\u00020!2\u0006\u0010%\u001a\u00020&2\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tH\u0016J \u0010.\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00160/*\u00020\u00032\u0006\u0010%\u001a\u00020&R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��¨\u00061"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "snapHelper", "Landroidx/recyclerview/widget/SnapHelper;", "behavior", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;", "onSnapPositionChangeListener", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;", "backgroundResource", "", "shouldHighLight", "", "(Landroidx/recyclerview/widget/SnapHelper;Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;IZ)V", "getBackgroundResource", "()I", "setBackgroundResource", "(I)V", "getBehavior", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;", "setBehavior", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;)V", "currentHighlightedView", "Landroid/view/View;", "getOnSnapPositionChangeListener", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;", "setOnSnapPositionChangeListener", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;)V", "getShouldHighLight", "()Z", "setShouldHighLight", "(Z)V", "snapPosition", "disable", "", "view", "enable", "highLightFirst", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "index", "maybeNotifySnapPositionChange", "onScrollStateChanged", "newState", "onScrolled", "dx", "dy", "getSnapPosition", "Lkotlin/Pair;", "Behavior", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener.class */
public final class SnapOnScrollListener extends RecyclerView.m {

    /* renamed from: a  reason: collision with root package name */
    private int f13400a;

    /* renamed from: b  reason: collision with root package name */
    private View f13401b;

    /* renamed from: c  reason: collision with root package name */
    private final o f13402c;

    /* renamed from: d  reason: collision with root package name */
    private Behavior f13403d;
    private OnSnapPositionChangeListener e;
    private int f;
    private boolean g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;", "", "(Ljava/lang/String;I)V", "NOTIFY_ON_SCROLL", "NOTIFY_ON_SCROLL_STATE_IDLE", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior.class */
    public enum Behavior {
        NOTIFY_ON_SCROLL,
        NOTIFY_ON_SCROLL_STATE_IDLE
    }

    public SnapOnScrollListener(o snapHelper, Behavior behavior, OnSnapPositionChangeListener onSnapPositionChangeListener, int i, boolean z) {
        p.d(snapHelper, "snapHelper");
        p.d(behavior, "behavior");
        this.f13402c = snapHelper;
        this.f13403d = behavior;
        this.e = onSnapPositionChangeListener;
        this.f = i;
        this.g = z;
        this.f13400a = -1;
    }

    public /* synthetic */ SnapOnScrollListener(o oVar, Behavior behavior, OnSnapPositionChangeListener onSnapPositionChangeListener, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(oVar, (i2 & 2) != 0 ? Behavior.NOTIFY_ON_SCROLL : behavior, (i2 & 4) != 0 ? null : onSnapPositionChangeListener, i, (i2 & 16) != 0 ? true : z);
    }

    private static n<Integer, View> a(o getSnapPosition, RecyclerView recyclerView) {
        p.d(getSnapPosition, "$this$getSnapPosition");
        p.d(recyclerView, "recyclerView");
        RecyclerView.i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            return new n<>(-1, null);
        }
        p.b(layoutManager, "recyclerView.layoutManag…erView.NO_POSITION, null)");
        View a2 = getSnapPosition.a(layoutManager);
        if (a2 == null) {
            return new n<>(-1, null);
        }
        p.b(a2, "findSnapView(layoutManag…erView.NO_POSITION, null)");
        return new n<>(Integer.valueOf(RecyclerView.i.c(a2)), a2);
    }

    private void a(View view) {
        p.d(view, "view");
        ViewUtils.b(view, this.f, ThemeUtils.getColor(2131099775), ThemeUtils.getColor(2131099891), (int) Activities.a(1.0f));
    }

    private final void a(RecyclerView recyclerView) {
        n<Integer, View> a2 = a(this.f13402c, recyclerView);
        if (this.f13400a != a2.f36810a.intValue()) {
            if (this.g) {
                if (this.f13401b == null) {
                    this.f13401b = recyclerView.getChildAt(0);
                }
                View view = this.f13401b;
                if (view != null) {
                    a(view);
                }
                View view2 = a2.f36811b;
                if (view2 != null) {
                    b(view2);
                    this.f13401b = view2;
                }
            }
            OnSnapPositionChangeListener onSnapPositionChangeListener = this.e;
            if (onSnapPositionChangeListener != null) {
                onSnapPositionChangeListener.a(a2.f36810a.intValue());
            }
            this.f13400a = a2.f36810a.intValue();
        }
    }

    private void b(View view) {
        p.d(view, "view");
        ViewUtils.b(view, this.f, ThemeUtils.getColor(2131099775), ThemeUtils.getColor(2131099784), (int) Activities.a(2.0f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a(RecyclerView recyclerView, int i) {
        p.d(recyclerView, "recyclerView");
        if (this.f13403d == Behavior.NOTIFY_ON_SCROLL_STATE_IDLE && i == 0) {
            a(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public final void a(RecyclerView recyclerView, int i, int i2) {
        p.d(recyclerView, "recyclerView");
        if (this.f13403d == Behavior.NOTIFY_ON_SCROLL) {
            a(recyclerView);
        }
    }

    public final void b(RecyclerView recyclerView, int i) {
        p.d(recyclerView, "recyclerView");
        RecyclerView.i layoutManager = recyclerView.getLayoutManager();
        View childAt = layoutManager != null ? layoutManager.getChildAt(i) : null;
        this.f13401b = childAt;
        if (childAt != null) {
            b(childAt);
        }
    }
}
