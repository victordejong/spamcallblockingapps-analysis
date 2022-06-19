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

    /* renamed from: a */
    public List<FirstTimeExperienceListener> f20746a;

    /* renamed from: b */
    FirstTimeExperienceCallLogViewManager f20747b = null;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog$FirstTimeExperienceListener.class */
    public interface FirstTimeExperienceListener {
        /* renamed from: a */
        void mo30548a();
    }

    /* renamed from: c */
    public static boolean m31328c() {
        return m31327d() && StringUtils.m26045b((CharSequence) Prefs.f26483ev[0].get());
    }

    /* renamed from: d */
    public static boolean m31327d() {
        return !Prefs.f26480es.get().booleanValue();
    }

    /* renamed from: f */
    private void m31325f() {
        Prefs.f26480es.set(Boolean.TRUE);
        if (CollectionUtils.m26068b(this.f20746a)) {
            for (FirstTimeExperienceListener firstTimeExperienceListener : this.f20746a) {
                firstTimeExperienceListener.mo30548a();
            }
        }
        m31330a();
    }

    public static FirstTimeExperienceCallLog get() {
        return Singletons.get().getFirstTimeExperienceCallLog();
    }

    /* renamed from: a */
    public final void m31330a() {
        this.f20747b = null;
        List<FirstTimeExperienceListener> list = this.f20746a;
        if (list != null) {
            list.clear();
        }
    }

    /* renamed from: b */
    public final void m31329b() {
        final FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f20747b;
        if (firstTimeExperienceCallLogViewManager != null) {
            get();
            if (!m31328c()) {
                return;
            }
            firstTimeExperienceCallLogViewManager.f20748a.setClickable(true);
            firstTimeExperienceCallLogViewManager.f20748a.setAlpha(1.0f);
            firstTimeExperienceCallLogViewManager.f20760m.setText(Activities.getString(2131886908));
            firstTimeExperienceCallLogViewManager.f20761n.setText(Activities.m27697a(2131887008, Activities.getString(2131887215)));
            int screenHeight = Activities.getScreenHeight(Activities.getScreenOrientation());
            View[] viewArr = {firstTimeExperienceCallLogViewManager.f20749b, firstTimeExperienceCallLogViewManager.f20750c, firstTimeExperienceCallLogViewManager.f20751d};
            for (int i = 0; i < 3; i++) {
                CallappAnimationUtils.m27180a(viewArr[i], View.Y, viewArr[i].getHeight() + screenHeight, (int) viewArr[i].getY(), (i * 500) + 1000).start();
            }
            for (int i2 = 0; i2 < 3; i2++) {
                firstTimeExperienceCallLogViewManager.setContactProfilePicture(i2);
                firstTimeExperienceCallLogViewManager.setContactRowData(i2);
                firstTimeExperienceCallLogViewManager.setCallTypeIcon(i2, Prefs.f26486ey[i2].get().intValue());
            }
            View[] viewArr2 = {firstTimeExperienceCallLogViewManager.f20752e, firstTimeExperienceCallLogViewManager.f20755h, firstTimeExperienceCallLogViewManager.f20753f, firstTimeExperienceCallLogViewManager.f20756i, firstTimeExperienceCallLogViewManager.f20754g, firstTimeExperienceCallLogViewManager.f20757j};
            for (int i3 = 0; i3 < 6; i3 += 2) {
                int i4 = i3 + 1;
                int i5 = i4 / 2;
                View view = viewArr2[i3];
                int i6 = (i5 * 600) + 3800;
                ObjectAnimator m27169c = CallappAnimationUtils.m27169c(view, 2000, i6);
                if (m27169c != null) {
                    m27169c.start();
                }
                ObjectAnimator m27173b = CallappAnimationUtils.m27173b(viewArr2[i4], 2000, i6);
                if (m27173b != null) {
                    m27173b.start();
                }
            }
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLogViewManager.1
                @Override // java.lang.Runnable
                public void run() {
                    ObjectAnimator m27183a = CallappAnimationUtils.m27183a((View) firstTimeExperienceCallLogViewManager.f20759l, 2000, 0, 8);
                    if (m27183a != null) {
                        m27183a.start();
                    }
                    ObjectAnimator m27173b2 = CallappAnimationUtils.m27173b(firstTimeExperienceCallLogViewManager.f20760m, 2000, 0);
                    if (m27173b2 != null) {
                        m27173b2.start();
                    }
                    ObjectAnimator m27173b3 = CallappAnimationUtils.m27173b(firstTimeExperienceCallLogViewManager.f20758k, 2000, 0);
                    if (m27173b3 != null) {
                        m27173b3.start();
                    }
                    ObjectAnimator m27173b4 = CallappAnimationUtils.m27173b(firstTimeExperienceCallLogViewManager.f20761n, 2000, 0);
                    if (m27173b4 != null) {
                        m27173b4.start();
                    }
                }
            }, 5800L);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f20747b;
        if (firstTimeExperienceCallLogViewManager != null) {
            firstTimeExperienceCallLogViewManager.m31324a();
        }
        m31325f();
    }

    /* renamed from: e */
    public final void m31326e() {
        PrefsUtils.m28173a(new String[]{null, null, null}, Prefs.f26482eu);
        PrefsUtils.m28173a(new String[]{null, null, null}, Prefs.f26483ev);
        PrefsUtils.m28173a(new String[]{null, null, null}, Prefs.f26487ez);
        PrefsUtils.m28176a(new long[]{-1, -1, -1}, Prefs.f26484ew);
        PrefsUtils.m28176a(new long[]{-1, -1, -1}, Prefs.f26485ex);
        PrefsUtils.m28177a(new int[]{-1, -1, -1}, Prefs.f26486ey);
        FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f20747b;
        if (firstTimeExperienceCallLogViewManager != null) {
            firstTimeExperienceCallLogViewManager.m31324a();
        }
        m31325f();
    }

    public View getFirstTimeExperienceCallLogRootContainer() {
        FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = this.f20747b;
        if (firstTimeExperienceCallLogViewManager != null) {
            return firstTimeExperienceCallLogViewManager.getFirstTimeExperienceContainerView();
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
