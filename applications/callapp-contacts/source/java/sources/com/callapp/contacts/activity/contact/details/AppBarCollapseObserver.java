package com.callapp.contacts.activity.contact.details;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.callapp.contacts.CallAppApplication;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AppBarCollapseObserver.class */
public class AppBarCollapseObserver extends CoordinatorLayout.Behavior<View> {

    /* renamed from: d */
    private static final float f21599d;

    /* renamed from: e */
    private static final float f21600e;

    /* renamed from: f */
    private static final float f21601f;

    /* renamed from: g */
    private static final float f21602g;

    /* renamed from: h */
    private static final float f21603h;

    /* renamed from: b */
    private final LastNotificationSent f21605b = new LastNotificationSent();

    /* renamed from: a */
    final ArrayList<CoordinatorLayoutObserver> f21604a = new ArrayList<>();

    /* renamed from: c */
    private boolean f21606c = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver.class */
    public interface CoordinatorLayoutObserver {
        /* renamed from: a */
        void mo30967a(View view, Range range, float f);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent.class */
    public class LastNotificationSent {

        /* renamed from: b */
        private WeakReference<View> f21608b;

        /* renamed from: c */
        private Range f21609c;

        /* renamed from: d */
        private float f21610d;

        private LastNotificationSent() {
            AppBarCollapseObserver.this = r4;
        }

        /* renamed from: a */
        static /* synthetic */ void m31028a(LastNotificationSent lastNotificationSent, View view, Range range, float f) {
            if (view == null) {
                lastNotificationSent.f21608b = null;
            } else {
                WeakReference<View> weakReference = lastNotificationSent.f21608b;
                if (weakReference == null || weakReference.get() != view) {
                    lastNotificationSent.f21608b = new WeakReference<>(view);
                }
            }
            lastNotificationSent.f21609c = range;
            lastNotificationSent.f21610d = f;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range.class */
    public enum Range {
        LOW_TO_MID,
        MID_TO_HIGH
    }

    static {
        float dimension = CallAppApplication.get().getResources().getDimension(2131165425);
        f21599d = dimension;
        float dimension2 = CallAppApplication.get().getResources().getDimension(2131165422);
        f21600e = dimension2;
        float dimension3 = CallAppApplication.get().getResources().getDimension(2131165421);
        f21601f = dimension3;
        f21602g = dimension2 - dimension;
        f21603h = dimension - dimension3;
    }

    public AppBarCollapseObserver(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m31031a(View view, Range range, float f) {
        synchronized (this.f21605b) {
            LastNotificationSent.m31028a(this.f21605b, view, range, f);
        }
        Iterator<CoordinatorLayoutObserver> it2 = this.f21604a.iterator();
        while (it2.hasNext()) {
            it2.next().mo30967a(view, range, f);
        }
    }

    public static float getFullHeight() {
        return f21600e;
    }

    public static float getSemiHeight() {
        return f21599d;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9838a(View view, View view2) {
        return view2.getId() == 2131362019;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final boolean mo9851a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        Pair pair;
        float f;
        float f2;
        Range range;
        boolean z = this.f21606c;
        Float valueOf = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        if (!z) {
            this.f21606c = true;
            pair = Pair.create(Range.LOW_TO_MID, valueOf);
        } else if (view2.getY() == BitmapDescriptorFactory.HUE_RED) {
            pair = Pair.create(Range.MID_TO_HIGH, valueOf);
        } else {
            float height = view2.getHeight() + ((int) view2.getY());
            float f3 = f21599d;
            if (height <= f3) {
                range = Range.LOW_TO_MID;
                f2 = f3 - height;
                f = f21603h;
            } else {
                range = Range.MID_TO_HIGH;
                f2 = f21600e - height;
                f = f21602g;
            }
            float f4 = f2 / f;
            double d = f4;
            if (d > 0.999d) {
                f4 = 1.0f;
            } else if (d < 0.001d) {
                f4 = 0.0f;
            }
            pair = Pair.create(range, Float.valueOf(f4));
        }
        m31031a(view2, (Range) pair.first, ((Float) pair.second).floatValue());
        return super.mo9851a(coordinatorLayout, (CoordinatorLayout) view, view2);
    }

    /* renamed from: b */
    public final void m31030b() {
        if (this.f21605b.f21608b != null) {
            m31031a((View) this.f21605b.f21608b.get(), this.f21605b.f21609c, this.f21605b.f21610d);
        }
    }
}
