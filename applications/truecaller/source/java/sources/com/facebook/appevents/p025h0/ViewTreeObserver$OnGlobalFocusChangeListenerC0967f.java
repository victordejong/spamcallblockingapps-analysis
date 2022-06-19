package com.facebook.appevents.p025h0;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import com.facebook.appevents.C0953d0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.h;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010#\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001c\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u0019\u001a\u00020\u000fH\u0002J\b\u0010\u001a\u001a\u00020\u000fH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/aam/MetadataViewObserver;", "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "activityWeakReference", "Ljava/lang/ref/WeakReference;", "isTracking", "Ljava/util/concurrent/atomic/AtomicBoolean;", "processedText", "", "", "uiThreadHandler", "Landroid/os/Handler;", "onGlobalFocusChanged", "", "oldView", "Landroid/view/View;", "newView", "process", ViewAction.VIEW, "processEditText", "runOnUIThread", "runnable", "Ljava/lang/Runnable;", "startTracking", "stopTracking", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.h0.f */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/h0/f.class */
public final class ViewTreeObserver$OnGlobalFocusChangeListenerC0967f implements ViewTreeObserver.OnGlobalFocusChangeListener {

    /* renamed from: e */
    public static final C0968a f2664e = new C0968a(null);

    /* renamed from: f */
    public static final Map<Integer, ViewTreeObserver$OnGlobalFocusChangeListenerC0967f> f2665f = new HashMap();

    /* renamed from: c */
    public final WeakReference<Activity> f2668c;

    /* renamed from: a */
    public final Set<String> f2666a = new LinkedHashSet();

    /* renamed from: b */
    public final Handler f2667b = new Handler(Looper.getMainLooper());

    /* renamed from: d */
    public final AtomicBoolean f2669d = new AtomicBoolean(false);

    @Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010%\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J,\u0010\f\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/aam/MetadataViewObserver$Companion;", "", "()V", "MAX_TEXT_LENGTH", "", "observers", "", "Lcom/facebook/appevents/aam/MetadataViewObserver;", "preNormalize", "", AnalyticsConstants.KEY, "value", "putUserData", "", "userData", "startTrackingActivity", "activity", "Landroid/app/Activity;", "stopTrackingActivity", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.h0.f$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/h0/f$a.class */
    public static final class C0968a {
        public C0968a(f fVar) {
        }

        /* renamed from: a */
        public static final void m41957a(C0968a c0968a, Map map, String str, String str2) {
            String str3;
            switch (str.hashCode()) {
                case 3585:
                    if (str.equals("r3")) {
                        if (!r.y(str2, "m", false, 2) && !r.y(str2, C22021b.f61237c, false, 2) && !r.y(str2, "ge", false, 2)) {
                            str3 = "f";
                            break;
                        } else {
                            str3 = "m";
                            break;
                        }
                    } else {
                        str3 = str2;
                        break;
                    }
                    break;
                case 3586:
                    if (!str.equals("r4")) {
                        str3 = str2;
                        break;
                    }
                    str3 = C22128a.m8733A2("[^a-z]+", str2, "");
                    break;
                case 3587:
                    if (!str.equals("r5")) {
                        str3 = str2;
                        break;
                    }
                    str3 = C22128a.m8733A2("[^a-z]+", str2, "");
                    break;
                case 3588:
                    if (str.equals("r6")) {
                        str3 = str2;
                        if (v.B(str2, StringConstant.DASH, false, 2)) {
                            Object[] array = C22128a.m8641b0(StringConstant.DASH, str2, 0).toArray(new String[0]);
                            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                            str3 = ((String[]) array)[0];
                            break;
                        }
                    } else {
                        str3 = str2;
                        break;
                    }
                    break;
                default:
                    str3 = str2;
                    break;
            }
            map.put(str, str3);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41956b(android.app.Activity r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r1 = "activity"
                s1.z.c.l.e(r0, r1)
                r0 = r6
                int r0 = r0.hashCode()
                r7 = r0
                java.lang.Class<com.facebook.appevents.h0.f> r0 = com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.class
                boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
                if (r0 == 0) goto L16
                goto L24
            L16:
                java.util.Map<java.lang.Integer, com.facebook.appevents.h0.f> r0 = com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.f2665f     // Catch: java.lang.Throwable -> L1d
                r8 = r0
                goto L26
            L1d:
                r8 = move-exception
                r0 = r8
                java.lang.Class<com.facebook.appevents.h0.f> r1 = com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.class
                com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            L24:
                r0 = 0
                r8 = r0
            L26:
                r0 = r7
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                r9 = r0
                r0 = r8
                r1 = r9
                java.lang.Object r0 = r0.get(r1)
                r10 = r0
                r0 = r10
                r11 = r0
                r0 = r10
                if (r0 != 0) goto L55
                com.facebook.appevents.h0.f r0 = new com.facebook.appevents.h0.f
                r1 = r0
                r2 = r6
                r3 = 0
                r1.<init>(r2, r3)
                r11 = r0
                r0 = r8
                r1 = r9
                r2 = r11
                java.lang.Object r0 = r0.put(r1, r2)
            L55:
                r0 = r11
                com.facebook.appevents.h0.f r0 = (com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f) r0
                r6 = r0
                java.lang.Class<com.facebook.appevents.h0.f> r0 = com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.class
                boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
                if (r0 == 0) goto L66
                goto Lbb
            L66:
                r0 = r6
                boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)     // Catch: java.lang.Throwable -> Lb4
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L74
                goto Lbb
            L74:
                r0 = r6
                java.util.concurrent.atomic.AtomicBoolean r0 = r0.f2669d     // Catch: java.lang.Throwable -> Lab
                r1 = 1
                boolean r0 = r0.getAndSet(r1)     // Catch: java.lang.Throwable -> Lab
                if (r0 == 0) goto L82
                goto Lbb
            L82:
                r0 = r6
                java.lang.ref.WeakReference<android.app.Activity> r0 = r0.f2668c     // Catch: java.lang.Throwable -> Lab
                java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> Lab
                android.app.Activity r0 = (android.app.Activity) r0     // Catch: java.lang.Throwable -> Lab
                android.view.View r0 = com.facebook.appevents.p031m0.C1035g.m41867b(r0)     // Catch: java.lang.Throwable -> Lab
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L97
                goto Lbb
            L97:
                r0 = r8
                android.view.ViewTreeObserver r0 = r0.getViewTreeObserver()     // Catch: java.lang.Throwable -> Lab
                r8 = r0
                r0 = r8
                boolean r0 = r0.isAlive()     // Catch: java.lang.Throwable -> Lab
                if (r0 == 0) goto Lbb
                r0 = r8
                r1 = r6
                r0.addOnGlobalFocusChangeListener(r1)     // Catch: java.lang.Throwable -> Lab
                goto Lbb
            Lab:
                r8 = move-exception
                r0 = r8
                r1 = r6
                com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)     // Catch: java.lang.Throwable -> Lb4
                goto Lbb
            Lb4:
                r6 = move-exception
                r0 = r6
                java.lang.Class<com.facebook.appevents.h0.f> r1 = com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.class
                com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            Lbb:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p025h0.ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.C0968a.m41956b(android.app.Activity):void");
        }
    }

    public ViewTreeObserver$OnGlobalFocusChangeListenerC0967f(Activity activity, f fVar) {
        this.f2668c = new WeakReference<>(activity);
    }

    /* renamed from: a */
    public final void m41959a(final View view) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            Runnable runnable = new Runnable() { // from class: com.facebook.appevents.h0.b
                @Override // java.lang.Runnable
                public final void run() {
                    View view2 = view;
                    ViewTreeObserver$OnGlobalFocusChangeListenerC0967f viewTreeObserver$OnGlobalFocusChangeListenerC0967f = this;
                    if (C1220a.m41623b(ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.class)) {
                        return;
                    }
                    try {
                        l.e(view2, "$view");
                        l.e(viewTreeObserver$OnGlobalFocusChangeListenerC0967f, "this$0");
                        if (!(view2 instanceof EditText)) {
                            return;
                        }
                        viewTreeObserver$OnGlobalFocusChangeListenerC0967f.m41958b(view2);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, ViewTreeObserver$OnGlobalFocusChangeListenerC0967f.class);
                    }
                }
            };
            if (C1220a.m41623b(this)) {
                return;
            }
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                runnable.run();
            } else {
                this.f2667b.post(runnable);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: b */
    public final void m41958b(View view) {
        boolean z;
        C0968a c0968a = f2664e;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            String obj = ((EditText) view).getText().toString();
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.CharSequence");
            }
            String obj2 = v.g0(obj).toString();
            if (obj2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = obj2.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            if (!(lowerCase.length() == 0) && !this.f2666a.contains(lowerCase) && lowerCase.length() <= 100) {
                this.f2666a.add(lowerCase);
                HashMap hashMap = new HashMap();
                List<String> m41966b = C0965d.m41966b(view);
                C0966e c0966e = C0966e.f2659d;
                Iterator it = new HashSet(C0966e.m41963a()).iterator();
                List<String> list = null;
                while (it.hasNext()) {
                    C0966e c0966e2 = (C0966e) it.next();
                    String e = l.a("r2", c0966e2.m41960d()) ? new h("[^\\d.]").e(lowerCase, "") : lowerCase;
                    if ((C1220a.m41623b(c0966e2) ? null : c0966e2.f2662b).length() > 0) {
                        String str = C1220a.m41623b(c0966e2) ? null : c0966e2.f2662b;
                        if (C1220a.m41623b(C0965d.class)) {
                            z = false;
                        } else {
                            l.e(e, "text");
                            l.e(str, "rule");
                            z = new h(str).d(e);
                        }
                        if (!z) {
                        }
                    }
                    if (C0965d.m41964d(m41966b, c0966e2.m41961c())) {
                        C0968a.m41957a(c0968a, hashMap, c0966e2.m41960d(), e);
                    } else {
                        List<String> list2 = list;
                        if (list == null) {
                            list2 = C0965d.m41967a(view);
                        }
                        list = list2;
                        if (C0965d.m41964d(list2, c0966e2.m41961c())) {
                            C0968a.m41957a(c0968a, hashMap, c0966e2.m41960d(), e);
                            list = list2;
                        }
                    }
                }
                C0953d0.m41977b(hashMap);
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View view, View view2) {
        if (C1220a.m41623b(this)) {
            return;
        }
        if (view != null) {
            try {
                m41959a(view);
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return;
            }
        }
        if (view2 == null) {
            return;
        }
        m41959a(view2);
    }
}
