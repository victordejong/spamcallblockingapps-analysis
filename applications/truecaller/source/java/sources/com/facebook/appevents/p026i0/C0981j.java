package com.facebook.appevents.p026i0;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import com.facebook.appevents.p026i0.C0977h;
import com.facebook.appevents.p026i0.C0985k;
import com.facebook.appevents.p026i0.p027n.C0993a;
import com.facebook.appevents.p026i0.p027n.C0996b;
import com.facebook.appevents.p026i0.p027n.C0997c;
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.facebook.appevents.p031m0.C1035g;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1139i0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23222c0;
import p193e.p1538j.C23228f0;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\t\b\u0001\u0018�� \u00192\u00020\u0001:\u0003\u0019\u001a\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\b\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\b\u0010\u0018\u001a\u00020\u0013H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��R@\u0010\u0006\u001a4\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0007j\u001e\u0012\u0004\u0012\u00020\b\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\f`\u000bX\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher;", "", "()V", "activitiesSet", "", "Landroid/app/Activity;", "activityToListenerMap", "Ljava/util/HashMap;", "", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashMap;", "Lkotlin/collections/HashSet;", "listenerSet", "uiThreadHandler", "Landroid/os/Handler;", "viewMatchers", "Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;", "add", "", "activity", AnalyticsConstants.DESTROY, "matchViews", "remove", "startTracking", "Companion", "MatchedView", "ViewMatcher", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.j */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/j.class */
public final class C0981j {

    /* renamed from: f */
    public static final C0982a f2702f = new C0982a(null);

    /* renamed from: g */
    public static final String f2703g = "com.facebook.appevents.i0.j";

    /* renamed from: h */
    public static C0981j f2704h;

    /* renamed from: b */
    public final Set<Activity> f2706b;

    /* renamed from: a */
    public final Handler f2705a = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final Set<ViewTreeObserver$OnGlobalLayoutListenerC0984c> f2707c = new LinkedHashSet();

    /* renamed from: d */
    public HashSet<String> f2708d = new HashSet<>();

    /* renamed from: e */
    public final HashMap<Integer, HashSet<String>> f2709e = new HashMap<>();

    @Metadata(d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\bH\u0007J\"\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0011"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$Companion;", "", "()V", "CURRENT_CLASS_NAME", "", "PARENT_CLASS_NAME", "TAG", "codelessMatcher", "Lcom/facebook/appevents/codeless/CodelessMatcher;", "getInstance", "getParameters", "Landroid/os/Bundle;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.j$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/j$a.class */
    public static final class C0982a {
        public C0982a(f fVar) {
        }

        /* renamed from: a */
        public final C0981j m41946a() {
            C0981j m41950a;
            synchronized (this) {
                if (C0981j.m41950a() == null) {
                    C0981j c0981j = new C0981j(null);
                    if (!C1220a.m41623b(C0981j.class)) {
                        C0981j.f2704h = c0981j;
                    }
                }
                m41950a = C0981j.m41950a();
                if (m41950a == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher");
                }
            }
            return m41950a;
        }

        /* renamed from: b */
        public final Bundle m41945b(C0993a c0993a, View view, View view2) {
            List<C0983b> list;
            l.e(view, "rootView");
            l.e(view2, "hostView");
            Bundle bundle = new Bundle();
            List<C0996b> unmodifiableList = Collections.unmodifiableList(c0993a.f2733c);
            l.d(unmodifiableList, "unmodifiableList(parameters)");
            for (C0996b c0996b : unmodifiableList) {
                String str = c0996b.f2743b;
                if (str != null) {
                    if (str.length() > 0) {
                        bundle.putString(c0996b.f2742a, c0996b.f2743b);
                    }
                }
                if (c0996b.f2744c.size() > 0) {
                    if (l.a(c0996b.f2745d, "relative")) {
                        List<C0997c> list2 = c0996b.f2744c;
                        String simpleName = view2.getClass().getSimpleName();
                        l.d(simpleName, "hostView.javaClass.simpleName");
                        list = ViewTreeObserver$OnGlobalLayoutListenerC0984c.m41940d(c0993a, view2, list2, 0, -1, simpleName);
                    } else {
                        List<C0997c> list3 = c0996b.f2744c;
                        String simpleName2 = view.getClass().getSimpleName();
                        l.d(simpleName2, "rootView.javaClass.simpleName");
                        list = ViewTreeObserver$OnGlobalLayoutListenerC0984c.m41940d(c0993a, view, list3, 0, -1, simpleName2);
                    }
                    Iterator<C0983b> it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            C0983b next = it.next();
                            if (next.m41944a() != null) {
                                C1000f c1000f = C1000f.f2756a;
                                String m41920j = C1000f.m41920j(next.m41944a());
                                if (m41920j.length() > 0) {
                                    bundle.putString(c0996b.f2742a, m41920j);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            return bundle;
        }
    }

    @Metadata(d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u0004\u0018\u00010\u0003R\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "", ViewAction.VIEW, "Landroid/view/View;", "viewMapKey", "", "(Landroid/view/View;Ljava/lang/String;)V", "Ljava/lang/ref/WeakReference;", "getViewMapKey", "()Ljava/lang/String;", "getView", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.j$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/j$b.class */
    public static final class C0983b {

        /* renamed from: a */
        public final WeakReference<View> f2710a;

        /* renamed from: b */
        public final String f2711b;

        public C0983b(View view, String str) {
            l.e(view, ViewAction.VIEW);
            l.e(str, "viewMapKey");
            this.f2710a = new WeakReference<>(view);
            this.f2711b = str;
        }

        /* renamed from: a */
        public final View m41944a() {
            WeakReference<View> weakReference = this.f2710a;
            return weakReference == null ? null : weakReference.get();
        }
    }

    @Metadata(d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� \u001f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001fB7\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rJ\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0002J \u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J \u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J \u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u001c\u0010\u001a\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00102\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\u001b\u001a\u00020\u0013H\u0016J\b\u0010\u001c\u001a\u00020\u0013H\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\b\u0010\u001e\u001a\u00020\u0013H\u0002R\u000e\u0010\f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0011X\u0082\u0004¢\u0006\u0002\n��¨\u0006 "}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "Ljava/lang/Runnable;", "rootView", "Landroid/view/View;", "handler", "Landroid/os/Handler;", "listenerSet", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "activityName", "(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V", "eventBindings", "", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "Ljava/lang/ref/WeakReference;", "attachListener", "", "matchedView", "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "mapping", "attachOnClickListener", "attachOnItemClickListener", "attachRCTListener", "findView", "onGlobalLayout", "onScrollChanged", "run", "startMatch", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.j$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/j$c.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC0984c implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {

        /* renamed from: a */
        public final WeakReference<View> f2712a;

        /* renamed from: b */
        public List<C0993a> f2713b;

        /* renamed from: c */
        public final Handler f2714c;

        /* renamed from: d */
        public final HashSet<String> f2715d;

        /* renamed from: e */
        public final String f2716e;

        public ViewTreeObserver$OnGlobalLayoutListenerC0984c(View view, Handler handler, HashSet<String> hashSet, String str) {
            l.e(handler, "handler");
            l.e(hashSet, "listenerSet");
            l.e(str, "activityName");
            this.f2712a = new WeakReference<>(view);
            this.f2714c = handler;
            this.f2715d = hashSet;
            this.f2716e = str;
            handler.postDelayed(this, 200L);
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x016b, code lost:
            if (s1.z.c.l.a(r9.getClass().getSimpleName(), (java.lang.String) p193e.p1432d.p1439c.p1440a.C22128a.m8710G1(r0, 1)) != false) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x01c3, code lost:
            if (s1.z.c.l.a(r0, r0) == false) goto L73;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x020f, code lost:
            if (s1.z.c.l.a(r0, r0) == false) goto L73;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x024f, code lost:
            if (s1.z.c.l.a(r0, r0) == false) goto L73;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x029a, code lost:
            if (s1.z.c.l.a(r0, r0) == false) goto L73;
         */
        /* JADX WARN: Removed duplicated region for block: B:77:0x02ab  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x02ae  */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.util.List<com.facebook.appevents.p026i0.C0981j.C0983b> m41940d(com.facebook.appevents.p026i0.p027n.C0993a r8, android.view.View r9, java.util.List<com.facebook.appevents.p026i0.p027n.C0997c> r10, int r11, int r12, java.lang.String r13) {
            /*
                Method dump skipped, instructions count: 803
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p026i0.C0981j.ViewTreeObserver$OnGlobalLayoutListenerC0984c.m41940d(com.facebook.appevents.i0.n.a, android.view.View, java.util.List, int, int, java.lang.String):java.util.List");
        }

        /* renamed from: e */
        public static final List<View> m41939e(ViewGroup viewGroup) {
            ArrayList arrayList = new ArrayList();
            int childCount = viewGroup.getChildCount();
            if (childCount > 0) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    int i3 = i2 + 1;
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt.getVisibility() == 0) {
                        l.d(childAt, "child");
                        arrayList.add(childAt);
                    }
                    if (i3 >= childCount) {
                        break;
                    }
                    i = i3;
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public final void m41943a(C0983b c0983b, View view, C0993a c0993a) {
            boolean z;
            View m41944a = c0983b.m41944a();
            if (m41944a == null) {
                return;
            }
            String str = c0983b.f2711b;
            C1000f c1000f = C1000f.f2756a;
            View.OnClickListener m41924f = C1000f.m41924f(m41944a);
            if (m41924f instanceof C0977h.View$OnClickListenerC0978a) {
                Objects.requireNonNull(m41924f, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener");
                if (((C0977h.View$OnClickListenerC0978a) m41924f).f2688e) {
                    z = true;
                    if (this.f2715d.contains(str) || z) {
                    }
                    C0977h.View$OnClickListenerC0978a view$OnClickListenerC0978a = null;
                    if (!C1220a.m41623b(C0977h.class)) {
                        try {
                            l.e(c0993a, "mapping");
                            l.e(view, "rootView");
                            l.e(m41944a, "hostView");
                            view$OnClickListenerC0978a = new C0977h.View$OnClickListenerC0978a(c0993a, view, m41944a);
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C0977h.class);
                        }
                    }
                    m41944a.setOnClickListener(view$OnClickListenerC0978a);
                    this.f2715d.add(str);
                    return;
                }
            }
            z = false;
            if (this.f2715d.contains(str)) {
            }
        }

        /* renamed from: b */
        public final void m41942b(C0983b c0983b, View view, C0993a c0993a) {
            boolean z;
            AdapterView adapterView = (AdapterView) c0983b.m41944a();
            if (adapterView == null) {
                return;
            }
            String str = c0983b.f2711b;
            AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
            if (onItemClickListener instanceof C0977h.C0979b) {
                Objects.requireNonNull(onItemClickListener, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener");
                if (((C0977h.C0979b) onItemClickListener).f2693e) {
                    z = true;
                    if (this.f2715d.contains(str) || z) {
                    }
                    C0977h.C0979b c0979b = null;
                    if (!C1220a.m41623b(C0977h.class)) {
                        try {
                            l.e(c0993a, "mapping");
                            l.e(view, "rootView");
                            l.e(adapterView, "hostView");
                            c0979b = new C0977h.C0979b(c0993a, view, adapterView);
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C0977h.class);
                        }
                    }
                    adapterView.setOnItemClickListener(c0979b);
                    this.f2715d.add(str);
                    return;
                }
            }
            z = false;
            if (this.f2715d.contains(str)) {
            }
        }

        /* renamed from: c */
        public final void m41941c(C0983b c0983b, View view, C0993a c0993a) {
            boolean z;
            View m41944a = c0983b.m41944a();
            if (m41944a == null) {
                return;
            }
            String str = c0983b.f2711b;
            C1000f c1000f = C1000f.f2756a;
            View.OnTouchListener m41923g = C1000f.m41923g(m41944a);
            if (m41923g instanceof C0985k.View$OnTouchListenerC0986a) {
                Objects.requireNonNull(m41923g, "null cannot be cast to non-null type com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener");
                if (((C0985k.View$OnTouchListenerC0986a) m41923g).f2721e) {
                    z = true;
                    if (this.f2715d.contains(str) || z) {
                    }
                    C0985k.View$OnTouchListenerC0986a view$OnTouchListenerC0986a = null;
                    if (!C1220a.m41623b(C0985k.class)) {
                        try {
                            l.e(c0993a, "mapping");
                            l.e(view, "rootView");
                            l.e(m41944a, "hostView");
                            view$OnTouchListenerC0986a = new C0985k.View$OnTouchListenerC0986a(c0993a, view, m41944a);
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C0985k.class);
                        }
                    }
                    m41944a.setOnTouchListener(view$OnTouchListenerC0986a);
                    this.f2715d.add(str);
                    return;
                }
            }
            z = false;
            if (this.f2715d.contains(str)) {
            }
        }

        /* renamed from: f */
        public final void m41938f() {
            int size;
            String str;
            View view;
            List<C0993a> list = this.f2713b;
            if (list == null || this.f2712a.get() == null || (size = list.size() - 1) < 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i;
                int i3 = i2 + 1;
                C0993a c0993a = list.get(i2);
                View view2 = this.f2712a.get();
                if (c0993a != null && view2 != null) {
                    String str2 = c0993a.f2734d;
                    if ((str2 == null || str2.length() == 0) || l.a(c0993a.f2734d, this.f2716e)) {
                        List unmodifiableList = Collections.unmodifiableList(c0993a.f2732b);
                        l.d(unmodifiableList, "unmodifiableList(path)");
                        if (unmodifiableList.size() <= 25) {
                            Iterator it = ((ArrayList) m41940d(c0993a, view2, unmodifiableList, 0, -1, this.f2716e)).iterator();
                            while (it.hasNext()) {
                                C0983b c0983b = (C0983b) it.next();
                                try {
                                    View m41944a = c0983b.m41944a();
                                    if (m41944a != null) {
                                        C1000f c1000f = C1000f.f2756a;
                                        if (!C1220a.m41623b(C1000f.class)) {
                                            view = m41944a;
                                            while (view != null) {
                                                if (!(C1220a.m41623b(C1000f.f2756a) ? false : l.a(view.getClass().getName(), "com.facebook.react.ReactRootView"))) {
                                                    ViewParent parent = view.getParent();
                                                    if (!(parent instanceof View)) {
                                                        break;
                                                    }
                                                    view = (View) parent;
                                                } else {
                                                    break;
                                                }
                                            }
                                        }
                                        view = null;
                                        if (view == null || !C1000f.f2756a.m41917m(m41944a, view)) {
                                            String name = m41944a.getClass().getName();
                                            l.d(name, "view.javaClass.name");
                                            if (!r.y(name, "com.facebook.react", false, 2)) {
                                                if (!(m41944a instanceof AdapterView)) {
                                                    m41943a(c0983b, view2, c0993a);
                                                } else if (m41944a instanceof ListView) {
                                                    m41942b(c0983b, view2, c0993a);
                                                }
                                            }
                                        } else {
                                            m41941c(c0983b, view2, c0993a);
                                        }
                                    }
                                } catch (Exception e) {
                                    if (C1220a.m41623b(C0981j.class)) {
                                        str = null;
                                    } else {
                                        try {
                                            str = C0981j.f2703g;
                                        } catch (Throwable th) {
                                            C1220a.m41624a(th, C0981j.class);
                                            str = null;
                                        }
                                    }
                                    C1168q0.m41696F(str, e);
                                }
                            }
                        }
                    }
                }
                if (i3 > size) {
                    return;
                }
                i = i3;
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            m41938f();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            m41938f();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                C23228f0 c23228f0 = C23228f0.f64291a;
                String m7353b = C23228f0.m7353b();
                C1127d0 c1127d0 = C1127d0.f3107a;
                C1124c0 m41742b = C1127d0.m41742b(m7353b);
                if (m41742b != null && m41742b.f3098h) {
                    JSONArray jSONArray = m41742b.f3099i;
                    ArrayList arrayList = new ArrayList();
                    if (jSONArray != null) {
                        int i = 0;
                        try {
                            int length = jSONArray.length();
                            if (length > 0) {
                                while (true) {
                                    int i2 = i + 1;
                                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                                    l.d(jSONObject, "array.getJSONObject(i)");
                                    arrayList.add(C0993a.m41933a(jSONObject));
                                    if (i2 >= length) {
                                        break;
                                    }
                                    i = i2;
                                }
                            }
                        } catch (IllegalArgumentException | JSONException e) {
                        }
                    }
                    this.f2713b = arrayList;
                    if (arrayList == null || (view = this.f2712a.get()) == null) {
                        return;
                    }
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    m41938f();
                }
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }
    }

    public C0981j() {
        Set<Activity> newSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        l.d(newSetFromMap, "newSetFromMap(WeakHashMap())");
        this.f2706b = newSetFromMap;
    }

    public C0981j(f fVar) {
        Set<Activity> newSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        l.d(newSetFromMap, "newSetFromMap(WeakHashMap())");
        this.f2706b = newSetFromMap;
    }

    /* renamed from: a */
    public static final /* synthetic */ C0981j m41950a() {
        if (C1220a.m41623b(C0981j.class)) {
            return null;
        }
        try {
            return f2704h;
        } catch (Throwable th) {
            C1220a.m41624a(th, C0981j.class);
            return null;
        }
    }

    /* renamed from: b */
    public final void m41949b(Activity activity) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(activity, "activity");
            if (C1139i0.m41734a()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new C23222c0("Can't add activity to CodelessMatcher on non-UI thread");
            }
            this.f2706b.add(activity);
            this.f2708d.clear();
            HashSet<String> hashSet = this.f2709e.get(Integer.valueOf(activity.hashCode()));
            if (hashSet != null) {
                this.f2708d = hashSet;
            }
            if (C1220a.m41623b(this)) {
                return;
            }
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                m41948c();
            } else {
                this.f2705a.post(new Runnable() { // from class: com.facebook.appevents.i0.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        C0981j c0981j = C0981j.this;
                        if (C1220a.m41623b(C0981j.class)) {
                            return;
                        }
                        try {
                            l.e(c0981j, "this$0");
                            c0981j.m41948c();
                        } catch (Throwable th) {
                            C1220a.m41624a(th, C0981j.class);
                        }
                    }
                });
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: c */
    public final void m41948c() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            for (Activity activity : this.f2706b) {
                if (activity != null) {
                    View m41867b = C1035g.m41867b(activity);
                    String simpleName = activity.getClass().getSimpleName();
                    l.d(simpleName, "activity.javaClass.simpleName");
                    this.f2707c.add(new ViewTreeObserver$OnGlobalLayoutListenerC0984c(m41867b, this.f2705a, this.f2708d, simpleName));
                }
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: d */
    public final void m41947d(Activity activity) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(activity, "activity");
            if (C1139i0.m41734a()) {
                return;
            }
            if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
                throw new C23222c0("Can't remove activity from CodelessMatcher on non-UI thread");
            }
            this.f2706b.remove(activity);
            this.f2707c.clear();
            this.f2709e.put(Integer.valueOf(activity.hashCode()), (HashSet) this.f2708d.clone());
            this.f2708d.clear();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
