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

    /* renamed from: d  reason: collision with root package name */
    private static final float f11959d;
    private static final float e;
    private static final float f;
    private static final float g;
    private static final float h;

    /* renamed from: b  reason: collision with root package name */
    private final LastNotificationSent f11961b = new LastNotificationSent();

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<CoordinatorLayoutObserver> f11960a = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private boolean f11962c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver.class */
    public interface CoordinatorLayoutObserver {
        void a(View view, Range range, float f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent.class */
    public class LastNotificationSent {

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<View> f11964b;

        /* renamed from: c  reason: collision with root package name */
        private Range f11965c;

        /* renamed from: d  reason: collision with root package name */
        private float f11966d;

        private LastNotificationSent() {
        }

        static /* synthetic */ void a(LastNotificationSent lastNotificationSent, View view, Range range, float f) {
            if (view == null) {
                lastNotificationSent.f11964b = null;
            } else {
                WeakReference<View> weakReference = lastNotificationSent.f11964b;
                if (weakReference == null || weakReference.get() != view) {
                    lastNotificationSent.f11964b = new WeakReference<>(view);
                }
            }
            lastNotificationSent.f11965c = range;
            lastNotificationSent.f11966d = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range.class */
    public enum Range {
        LOW_TO_MID,
        MID_TO_HIGH
    }

    static {
        float dimension = CallAppApplication.get().getResources().getDimension(2131165425);
        f11959d = dimension;
        float dimension2 = CallAppApplication.get().getResources().getDimension(2131165422);
        e = dimension2;
        float dimension3 = CallAppApplication.get().getResources().getDimension(2131165421);
        f = dimension3;
        g = dimension2 - dimension;
        h = dimension - dimension3;
    }

    public AppBarCollapseObserver(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(View view, Range range, float f2) {
        synchronized (this.f11961b) {
            LastNotificationSent.a(this.f11961b, view, range, f2);
        }
        Iterator<CoordinatorLayoutObserver> it2 = this.f11960a.iterator();
        while (it2.hasNext()) {
            it2.next().a(view, range, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float getFullHeight() {
        return e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float getSemiHeight() {
        return f11959d;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(View view, View view2) {
        return view2.getId() == 2131362019;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        Pair pair;
        float f2;
        float f3;
        Range range;
        boolean z = this.f11962c;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        Float valueOf = Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        if (!z) {
            this.f11962c = true;
            pair = Pair.create(Range.LOW_TO_MID, valueOf);
        } else if (view2.getY() == BitmapDescriptorFactory.HUE_RED) {
            pair = Pair.create(Range.MID_TO_HIGH, valueOf);
        } else {
            float height = view2.getHeight() + ((int) view2.getY());
            float f5 = f11959d;
            if (height <= f5) {
                range = Range.LOW_TO_MID;
                f3 = f5 - height;
                f2 = h;
            } else {
                range = Range.MID_TO_HIGH;
                f3 = e - height;
                f2 = g;
            }
            f4 = f3 / f2;
            double d2 = f4;
            if (d2 > 0.999d) {
                f4 = 1.0f;
            } else if (d2 < 0.001d) {
            }
            pair = Pair.create(range, Float.valueOf(f4));
        }
        a(view2, (Range) pair.first, ((Float) pair.second).floatValue());
        return super.a(coordinatorLayout, (CoordinatorLayout) view, view2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f11961b.f11964b != null) {
            a((View) this.f11961b.f11964b.get(), this.f11961b.f11965c, this.f11961b.f11966d);
        }
    }
}
