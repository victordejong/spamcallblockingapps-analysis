package com.facebook.appevents.p279a;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import com.facebook.appevents.C10102p;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.p299b.p301b.C10249a;
import com.google.api.client.googleapis.notifications.C15291b;
import com.sinch.verification.core.verification.VerificationLanguage;
import io.bidmachine.utils.IabUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.facebook.appevents.a.d */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a/d.class */
public final class ViewTreeObserver$OnGlobalFocusChangeListenerC9965d implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: a */
    private static final String f33148a = "com.facebook.appevents.a.d";

    /* renamed from: b */
    private static final Map<Integer, ViewTreeObserver$OnGlobalFocusChangeListenerC9965d> f33149b = new HashMap();

    /* renamed from: e */
    private WeakReference<Activity> f33152e;

    /* renamed from: c */
    private final Set<String> f33150c = new HashSet();

    /* renamed from: d */
    private final Handler f33151d = new Handler(Looper.getMainLooper());

    /* renamed from: f */
    private AtomicBoolean f33153f = new AtomicBoolean(false);

    private ViewTreeObserver$OnGlobalFocusChangeListenerC9965d(Activity activity) {
        this.f33152e = new WeakReference<>(activity);
    }

    /* renamed from: a */
    private static String m23726a(String str, String str2) {
        if (C10249a.m23108a(ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class)) {
            return null;
        }
        try {
            return IabUtils.KEY_R2.equals(str) ? str2.replaceAll("[^\\d.]", "") : str2;
        } catch (Throwable th) {
            C10249a.m23106a(th, ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23730a(Activity activity) {
        ViewTreeObserver$OnGlobalFocusChangeListenerC9965d viewTreeObserver$OnGlobalFocusChangeListenerC9965d;
        View m23560a;
        if (C10249a.m23108a(ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class)) {
            return;
        }
        try {
            int hashCode = activity.hashCode();
            Map<Integer, ViewTreeObserver$OnGlobalFocusChangeListenerC9965d> map = f33149b;
            if (!map.containsKey(Integer.valueOf(hashCode))) {
                ViewTreeObserver$OnGlobalFocusChangeListenerC9965d viewTreeObserver$OnGlobalFocusChangeListenerC9965d2 = new ViewTreeObserver$OnGlobalFocusChangeListenerC9965d(activity);
                map.put(Integer.valueOf(activity.hashCode()), viewTreeObserver$OnGlobalFocusChangeListenerC9965d2);
                viewTreeObserver$OnGlobalFocusChangeListenerC9965d = viewTreeObserver$OnGlobalFocusChangeListenerC9965d2;
            } else {
                viewTreeObserver$OnGlobalFocusChangeListenerC9965d = map.get(Integer.valueOf(hashCode));
            }
            if (C10249a.m23108a(viewTreeObserver$OnGlobalFocusChangeListenerC9965d) || viewTreeObserver$OnGlobalFocusChangeListenerC9965d.f33153f.getAndSet(true) || (m23560a = C10033b.m23560a(viewTreeObserver$OnGlobalFocusChangeListenerC9965d.f33152e.get())) == null) {
                return;
            }
            ViewTreeObserver viewTreeObserver = m23560a.getViewTreeObserver();
            if (!viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnGlobalFocusChangeListener(viewTreeObserver$OnGlobalFocusChangeListenerC9965d);
        } catch (Throwable th) {
            C10249a.m23106a(th, ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class);
        }
    }

    /* renamed from: a */
    private void m23729a(final View view) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            m23727a(new Runnable() { // from class: com.facebook.appevents.a.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        View view2 = view;
                        if (!(view2 instanceof EditText)) {
                            return;
                        }
                        ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.m23728a(ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.this, view2);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m23728a(ViewTreeObserver$OnGlobalFocusChangeListenerC9965d viewTreeObserver$OnGlobalFocusChangeListenerC9965d, View view) {
        if (C10249a.m23108a(ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(viewTreeObserver$OnGlobalFocusChangeListenerC9965d)) {
                return;
            }
            String lowerCase = ((EditText) view).getText().toString().trim().toLowerCase();
            if (!lowerCase.isEmpty() && !viewTreeObserver$OnGlobalFocusChangeListenerC9965d.f33150c.contains(lowerCase) && lowerCase.length() <= 100) {
                viewTreeObserver$OnGlobalFocusChangeListenerC9965d.f33150c.add(lowerCase);
                HashMap hashMap = new HashMap();
                List<String> m23743a = C9963b.m23743a(view);
                List<String> list = null;
                for (C9964c c9964c : C9964c.m23737a()) {
                    String m23726a = m23726a(c9964c.m23734b(), lowerCase);
                    if (c9964c.m23732d().isEmpty() || C9963b.m23742a(m23726a, c9964c.m23732d())) {
                        if (C9963b.m23740a(m23743a, c9964c.m23733c())) {
                            m23725a(hashMap, c9964c.m23734b(), m23726a);
                        } else {
                            List<String> list2 = list;
                            if (list == null) {
                                list2 = C9963b.m23739b(view);
                            }
                            list = list2;
                            if (C9963b.m23740a(list2, c9964c.m23733c())) {
                                m23725a(hashMap, c9964c.m23734b(), m23726a);
                                list = list2;
                            }
                        }
                    }
                }
                C10102p.m23401a(hashMap);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class);
        }
    }

    /* renamed from: a */
    private void m23727a(Runnable runnable) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f33151d.post(runnable);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    private static void m23725a(Map<String, String> map, String str, String str2) {
        String str3;
        if (C10249a.m23108a(ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class)) {
            return;
        }
        boolean z = true;
        try {
            switch (str.hashCode()) {
                case 3585:
                    if (str.equals("r3")) {
                        z = false;
                        break;
                    }
                    break;
                case 3586:
                    if (str.equals("r4")) {
                        z = true;
                        break;
                    }
                    break;
                case 3587:
                    if (str.equals("r5")) {
                        z = true;
                        break;
                    }
                    break;
                case 3588:
                    if (str.equals("r6")) {
                        z = true;
                        break;
                    }
                    break;
            }
            if (!z) {
                if (!str2.startsWith("m") && !str2.startsWith(C15291b.f55271a) && !str2.startsWith("ge")) {
                    str3 = "f";
                }
                str3 = "m";
            } else if (z || z) {
                str3 = str2.replaceAll("[^a-z]+", "");
            } else if (!z) {
                str3 = str2;
            } else {
                str3 = str2;
                if (str2.contains(VerificationLanguage.REGION_PREFIX)) {
                    str3 = str2.split(VerificationLanguage.REGION_PREFIX)[0];
                }
            }
            map.put(str, str3);
        } catch (Throwable th) {
            C10249a.m23106a(th, ViewTreeObserver$OnGlobalFocusChangeListenerC9965d.class);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        if (C10249a.m23108a(this)) {
            return;
        }
        if (view != null) {
            try {
                m23729a(view);
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
                return;
            }
        }
        if (view2 == null) {
            return;
        }
        m23729a(view2);
    }
}
