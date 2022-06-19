package com.callapp.contacts.activity.marketplace.videoRingtone;

import android.view.View;
import androidx.recyclerview.widget.AbstractC2703o;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001:\u00010B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0016J\u000e\u0010#\u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0016J\u0016\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\tJ\u0010\u0010(\u001a\u00020!2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010)\u001a\u00020!2\u0006\u0010%\u001a\u00020&2\u0006\u0010*\u001a\u00020\tH\u0016J \u0010+\u001a\u00020!2\u0006\u0010%\u001a\u00020&2\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tH\u0016J \u0010.\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00160/*\u00020\u00032\u0006\u0010%\u001a\u00020&R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��¨\u00061"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "snapHelper", "Landroidx/recyclerview/widget/SnapHelper;", "behavior", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;", "onSnapPositionChangeListener", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;", "backgroundResource", "", "shouldHighLight", "", "(Landroidx/recyclerview/widget/SnapHelper;Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;IZ)V", "getBackgroundResource", "()I", "setBackgroundResource", "(I)V", "getBehavior", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;", "setBehavior", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;)V", "currentHighlightedView", "Landroid/view/View;", "getOnSnapPositionChangeListener", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;", "setOnSnapPositionChangeListener", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;)V", "getShouldHighLight", "()Z", "setShouldHighLight", "(Z)V", "snapPosition", "disable", "", "view", "enable", "highLightFirst", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "index", "maybeNotifySnapPositionChange", "onScrollStateChanged", "newState", "onScrolled", "dx", "dy", "getSnapPosition", "Lkotlin/Pair;", "Behavior", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener.class */
public final class SnapOnScrollListener extends RecyclerView.AbstractC2645m {

    /* renamed from: a */
    private int f23808a;

    /* renamed from: b */
    private View f23809b;

    /* renamed from: c */
    private final AbstractC2703o f23810c;

    /* renamed from: d */
    private Behavior f23811d;

    /* renamed from: e */
    private OnSnapPositionChangeListener f23812e;

    /* renamed from: f */
    private int f23813f;

    /* renamed from: g */
    private boolean f23814g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior;", "", "(Ljava/lang/String;I)V", "NOTIFY_ON_SCROLL", "NOTIFY_ON_SCROLL_STATE_IDLE", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener$Behavior.class */
    public enum Behavior {
        NOTIFY_ON_SCROLL,
        NOTIFY_ON_SCROLL_STATE_IDLE
    }

    public SnapOnScrollListener(AbstractC2703o snapHelper, Behavior behavior, OnSnapPositionChangeListener onSnapPositionChangeListener, int i, boolean z) {
        C18524p.m3840d(snapHelper, "snapHelper");
        C18524p.m3840d(behavior, "behavior");
        this.f23810c = snapHelper;
        this.f23811d = behavior;
        this.f23812e = onSnapPositionChangeListener;
        this.f23813f = i;
        this.f23814g = z;
        this.f23808a = -1;
    }

    public /* synthetic */ SnapOnScrollListener(AbstractC2703o abstractC2703o, Behavior behavior, OnSnapPositionChangeListener onSnapPositionChangeListener, int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC2703o, (i2 & 2) != 0 ? Behavior.NOTIFY_ON_SCROLL : behavior, (i2 & 4) != 0 ? null : onSnapPositionChangeListener, i, (i2 & 16) != 0 ? true : z);
    }

    /* renamed from: a */
    private static C18538n<Integer, View> m29856a(AbstractC2703o getSnapPosition, RecyclerView recyclerView) {
        C18524p.m3840d(getSnapPosition, "$this$getSnapPosition");
        C18524p.m3840d(recyclerView, "recyclerView");
        RecyclerView.AbstractC2637i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null) {
            return new C18538n<>(-1, null);
        }
        C18524p.m3843b(layoutManager, "recyclerView.layoutManag…erView.NO_POSITION, null)");
        View mo29893a = getSnapPosition.mo29893a(layoutManager);
        if (mo29893a == null) {
            return new C18538n<>(-1, null);
        }
        C18524p.m3843b(mo29893a, "findSnapView(layoutManag…erView.NO_POSITION, null)");
        return new C18538n<>(Integer.valueOf(RecyclerView.AbstractC2637i.m40366c(mo29893a)), mo29893a);
    }

    /* renamed from: a */
    private void m29858a(View view) {
        C18524p.m3840d(view, "view");
        ViewUtils.m27299b(view, this.f23813f, ThemeUtils.getColor(2131099775), ThemeUtils.getColor(2131099891), (int) Activities.m27699a(1.0f));
    }

    /* renamed from: a */
    private final void m29857a(RecyclerView recyclerView) {
        C18538n<Integer, View> m29856a = m29856a(this.f23810c, recyclerView);
        if (this.f23808a != m29856a.f63624a.intValue()) {
            if (this.f23814g) {
                if (this.f23809b == null) {
                    this.f23809b = recyclerView.getChildAt(0);
                }
                View view = this.f23809b;
                if (view != null) {
                    m29858a(view);
                }
                View view2 = m29856a.f63625b;
                if (view2 != null) {
                    m29855b(view2);
                    this.f23809b = view2;
                }
            }
            OnSnapPositionChangeListener onSnapPositionChangeListener = this.f23812e;
            if (onSnapPositionChangeListener != null) {
                onSnapPositionChangeListener.mo29885a(m29856a.f63624a.intValue());
            }
            this.f23808a = m29856a.f63624a.intValue();
        }
    }

    /* renamed from: b */
    private void m29855b(View view) {
        C18524p.m3840d(view, "view");
        ViewUtils.m27299b(view, this.f23813f, ThemeUtils.getColor(2131099775), ThemeUtils.getColor(2131099784), (int) Activities.m27699a(2.0f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    public final void mo10833a(RecyclerView recyclerView, int i) {
        C18524p.m3840d(recyclerView, "recyclerView");
        if (this.f23811d == Behavior.NOTIFY_ON_SCROLL_STATE_IDLE && i == 0) {
            m29857a(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2645m
    /* renamed from: a */
    public final void mo10832a(RecyclerView recyclerView, int i, int i2) {
        C18524p.m3840d(recyclerView, "recyclerView");
        if (this.f23811d == Behavior.NOTIFY_ON_SCROLL) {
            m29857a(recyclerView);
        }
    }

    /* renamed from: b */
    public final void m29854b(RecyclerView recyclerView, int i) {
        C18524p.m3840d(recyclerView, "recyclerView");
        RecyclerView.AbstractC2637i layoutManager = recyclerView.getLayoutManager();
        View childAt = layoutManager != null ? layoutManager.getChildAt(i) : null;
        this.f23809b = childAt;
        if (childAt != null) {
            m29855b(childAt);
        }
    }
}
