package com.callapp.contacts.activity.calllog;

import android.animation.ObjectAnimator;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.PrefsUtils;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog.class */
public class FirstTimeExperienceCallLog implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public List<FirstTimeExperienceListener> f11396a;

    /* renamed from: b  reason: collision with root package name */
    FirstTimeExperienceCallLogViewManager f11397b = null;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog$FirstTimeExperienceListener.class */
    public interface FirstTimeExperienceListener {
        void a();
    }

    public static boolean c() {
        return d() && StringUtils.b((CharSequence) Prefs.ev[0].get());
    }

    public static boolean d() {
        return !Prefs.es.get().booleanValue();
    }

    private void f() {
        Prefs.es.set(Boolean.TRUE);
        if (CollectionUtils.b(this.f11396a)) {
            for (FirstTimeExperienceListener firstTimeExperienceListener : this.f11396a) {
                firstTimeExperienceListener.a();
            }
        }
        a();
    }

    public static FirstTimeExperienceCallLog get() {
        return Singletons.get().getFirstTimeExperienceCallLog();
    }

    public final void a() {
        this.f11397b = null;
        List<FirstTimeExperienceListener> list = this.f11396a;
        if (list != null) {
            list.clear();
        }
    }

    public final void b() {
        final FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f11397b;
        if (firstTimeExperienceCallLogViewManager != null) {
            get();
            if (c()) {
                firstTimeExperienceCallLogViewManager.f11398a.setClickable(true);
                firstTimeExperienceCallLogViewManager.f11398a.setAlpha(1.0f);
                firstTimeExperienceCallLogViewManager.m.setText(Activities.getString(2131886908));
                firstTimeExperienceCallLogViewManager.n.setText(Activities.a(2131887008, Activities.getString(2131887215)));
                int screenHeight = Activities.getScreenHeight(Activities.getScreenOrientation());
                View[] viewArr = {firstTimeExperienceCallLogViewManager.f11399b, firstTimeExperienceCallLogViewManager.f11400c, firstTimeExperienceCallLogViewManager.f11401d};
                for (int i = 0; i < 3; i++) {
                    CallappAnimationUtils.a(viewArr[i], View.Y, viewArr[i].getHeight() + screenHeight, (int) viewArr[i].getY(), (i * 500) + 1000).start();
                }
                for (int i2 = 0; i2 < 3; i2++) {
                    firstTimeExperienceCallLogViewManager.setContactProfilePicture(i2);
                    firstTimeExperienceCallLogViewManager.setContactRowData(i2);
                    firstTimeExperienceCallLogViewManager.setCallTypeIcon(i2, Prefs.ey[i2].get().intValue());
                }
                View[] viewArr2 = {firstTimeExperienceCallLogViewManager.e, firstTimeExperienceCallLogViewManager.h, firstTimeExperienceCallLogViewManager.f, firstTimeExperienceCallLogViewManager.i, firstTimeExperienceCallLogViewManager.g, firstTimeExperienceCallLogViewManager.j};
                for (int i3 = 0; i3 < 6; i3 += 2) {
                    int i4 = i3 + 1;
                    int i5 = i4 / 2;
                    View view = viewArr2[i3];
                    int i6 = (i5 * 600) + 3800;
                    ObjectAnimator c2 = CallappAnimationUtils.c(view, 2000, i6);
                    if (c2 != null) {
                        c2.start();
                    }
                    ObjectAnimator b2 = CallappAnimationUtils.b(viewArr2[i4], 2000, i6);
                    if (b2 != null) {
                        b2.start();
                    }
                }
                CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ObjectAnimator a2 = CallappAnimationUtils.a((View) firstTimeExperienceCallLogViewManager.l, 2000, 0, 8);
                        if (a2 != null) {
                            a2.start();
                        }
                        ObjectAnimator b3 = CallappAnimationUtils.b(firstTimeExperienceCallLogViewManager.m, 2000, 0);
                        if (b3 != null) {
                            b3.start();
                        }
                        ObjectAnimator b4 = CallappAnimationUtils.b(firstTimeExperienceCallLogViewManager.k, 2000, 0);
                        if (b4 != null) {
                            b4.start();
                        }
                        ObjectAnimator b5 = CallappAnimationUtils.b(firstTimeExperienceCallLogViewManager.n, 2000, 0);
                        if (b5 != null) {
                            b5.start();
                        }
                    }
                }, 5800L);
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f11397b;
        if (firstTimeExperienceCallLogViewManager != null) {
            firstTimeExperienceCallLogViewManager.a();
        }
        f();
    }

    public final void e() {
        PrefsUtils.a(new String[]{null, null, null}, Prefs.eu);
        PrefsUtils.a(new String[]{null, null, null}, Prefs.ev);
        PrefsUtils.a(new String[]{null, null, null}, Prefs.ez);
        PrefsUtils.a(new long[]{-1, -1, -1}, Prefs.ew);
        PrefsUtils.a(new long[]{-1, -1, -1}, Prefs.ex);
        PrefsUtils.a(new int[]{-1, -1, -1}, Prefs.ey);
        FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f11397b;
        if (firstTimeExperienceCallLogViewManager != null) {
            firstTimeExperienceCallLogViewManager.a();
        }
        f();
    }

    public View getFirstTimeExperienceCallLogRootContainer() {
        FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f11397b;
        if (firstTimeExperienceCallLogViewManager != null) {
            return firstTimeExperienceCallLogViewManager.getFirstTimeExperienceContainerView();
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
