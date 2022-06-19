package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import androidx.fragment.app.ActivityC0711c;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0920v;
/* renamed from: androidx.lifecycle.w */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/w.class */
public class C0925w {
    /* renamed from: a */
    private static Application m5056a(Activity activity) {
        Application application = activity.getApplication();
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("Your activity/fragment is not yet attached to Application. You can't request ViewModel before onCreate call.");
    }

    /* renamed from: a */
    public static C0920v m5055a(Fragment fragment) {
        return m5054a(fragment, (C0920v.AbstractC0922b) null);
    }

    /* renamed from: a */
    public static C0920v m5054a(Fragment fragment, C0920v.AbstractC0922b abstractC0922b) {
        Application m5056a = m5056a(m5051b(fragment));
        C0920v.C0921a c0921a = abstractC0922b;
        if (abstractC0922b == null) {
            c0921a = C0920v.C0921a.m5059a(m5056a);
        }
        return new C0920v(fragment.getViewModelStore(), c0921a);
    }

    /* renamed from: a */
    public static C0920v m5053a(ActivityC0711c activityC0711c) {
        return m5052a(activityC0711c, (C0920v.AbstractC0922b) null);
    }

    /* renamed from: a */
    public static C0920v m5052a(ActivityC0711c activityC0711c, C0920v.AbstractC0922b abstractC0922b) {
        Application m5056a = m5056a((Activity) activityC0711c);
        C0920v.C0921a c0921a = abstractC0922b;
        if (abstractC0922b == null) {
            c0921a = C0920v.C0921a.m5059a(m5056a);
        }
        return new C0920v(activityC0711c.getViewModelStore(), c0921a);
    }

    /* renamed from: b */
    private static Activity m5051b(Fragment fragment) {
        ActivityC0711c activity = fragment.getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Can't create ViewModelProvider for detached fragment");
    }
}
