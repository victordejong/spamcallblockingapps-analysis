package com.facebook.appevents.a;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import com.facebook.appevents.f.b;
import com.facebook.appevents.p;
import com.facebook.internal.b.b.a;
import com.sinch.verification.core.verification.VerificationLanguage;
import io.bidmachine.utils.IabUtils;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a/d.class */
final class d implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19425a = "com.facebook.appevents.a.d";

    /* renamed from: b  reason: collision with root package name */
    private static final Map<Integer, d> f19426b = new HashMap();
    private WeakReference<Activity> e;

    /* renamed from: c  reason: collision with root package name */
    private final Set<String> f19427c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private final Handler f19428d = new Handler(Looper.getMainLooper());
    private AtomicBoolean f = new AtomicBoolean(false);

    private d(Activity activity) {
        this.e = new WeakReference<>(activity);
    }

    private static String a(String str, String str2) {
        if (a.a(d.class)) {
            return null;
        }
        try {
            return IabUtils.KEY_R2.equals(str) ? str2.replaceAll("[^\\d.]", "") : str2;
        } catch (Throwable th) {
            a.a(th, d.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity) {
        d dVar;
        View a2;
        if (!a.a(d.class)) {
            try {
                int hashCode = activity.hashCode();
                Map<Integer, d> map = f19426b;
                if (!map.containsKey(Integer.valueOf(hashCode))) {
                    d dVar2 = new d(activity);
                    map.put(Integer.valueOf(activity.hashCode()), dVar2);
                    dVar = dVar2;
                } else {
                    dVar = map.get(Integer.valueOf(hashCode));
                }
                if (!a.a(dVar) && !dVar.f.getAndSet(true) && (a2 = b.a(dVar.e.get())) != null) {
                    ViewTreeObserver viewTreeObserver = a2.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalFocusChangeListener(dVar);
                    }
                }
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    private void a(final View view) {
        if (!a.a(this)) {
            try {
                a(new Runnable() { // from class: com.facebook.appevents.a.d.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (!a.a(this)) {
                            try {
                                View view2 = view;
                                if (view2 instanceof EditText) {
                                    d.a(d.this, view2);
                                }
                            } catch (Throwable th) {
                                a.a(th, this);
                            }
                        }
                    }
                });
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    static /* synthetic */ void a(d dVar, View view) {
        if (!a.a(d.class)) {
            try {
                if (!a.a(dVar)) {
                    String lowerCase = ((EditText) view).getText().toString().trim().toLowerCase();
                    if (!lowerCase.isEmpty() && !dVar.f19427c.contains(lowerCase) && lowerCase.length() <= 100) {
                        dVar.f19427c.add(lowerCase);
                        HashMap hashMap = new HashMap();
                        List<String> a2 = b.a(view);
                        List<String> list = null;
                        for (c cVar : c.a()) {
                            String a3 = a(cVar.b(), lowerCase);
                            if (cVar.d().isEmpty() || b.a(a3, cVar.d())) {
                                if (b.a(a2, cVar.c())) {
                                    a(hashMap, cVar.b(), a3);
                                } else {
                                    List<String> list2 = list;
                                    if (list == null) {
                                        list2 = b.b(view);
                                    }
                                    list = list2;
                                    if (b.a(list2, cVar.c())) {
                                        a(hashMap, cVar.b(), a3);
                                        list = list2;
                                    }
                                }
                            }
                        }
                        p.a(hashMap);
                    }
                }
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    private void a(Runnable runnable) {
        if (!a.a(this)) {
            try {
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    runnable.run();
                } else {
                    this.f19428d.post(runnable);
                }
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    private static void a(Map<String, String> map, String str, String str2) {
        String str3;
        if (!a.a(d.class)) {
            char c2 = 65535;
            try {
                switch (str.hashCode()) {
                    case 3585:
                        if (str.equals("r3")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 3586:
                        if (str.equals("r4")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 3587:
                        if (str.equals("r5")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 3588:
                        if (str.equals("r6")) {
                            c2 = 3;
                            break;
                        }
                        break;
                }
                if (c2 == 0) {
                    if (!str2.startsWith("m") && !str2.startsWith(com.google.api.client.googleapis.notifications.b.f31754a) && !str2.startsWith("ge")) {
                        str3 = "f";
                    }
                    str3 = "m";
                } else if (c2 == 1 || c2 == 2) {
                    str3 = str2.replaceAll("[^a-z]+", "");
                } else if (c2 != 3) {
                    str3 = str2;
                } else {
                    str3 = str2;
                    if (str2.contains(VerificationLanguage.REGION_PREFIX)) {
                        str3 = str2.split(VerificationLanguage.REGION_PREFIX)[0];
                    }
                }
                map.put(str, str3);
            } catch (Throwable th) {
                a.a(th, d.class);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        if (!a.a(this)) {
            if (view != null) {
                try {
                    a(view);
                } catch (Throwable th) {
                    a.a(th, this);
                    return;
                }
            }
            if (view2 != null) {
                a(view2);
            }
        }
    }
}
