package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.graphics.Rect;
import android.location.Location;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.C8311w;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.mpub.z */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/z.class */
public class C8682z {

    /* renamed from: c */
    public JSONObject f33615c;

    /* renamed from: d */
    public Rect f33616d;

    /* renamed from: e */
    public Rect f33617e;

    /* renamed from: f */
    public JSONObject f33618f;

    /* renamed from: g */
    public JSONObject f33619g;

    /* renamed from: h */
    public Location f33620h;

    /* renamed from: i */
    public Map<String, Object> f33621i = new HashMap();

    /* renamed from: a */
    public String f33613a = "{}";

    /* renamed from: b */
    public C8686c f33614b = new C8686c();

    /* renamed from: com.moat.analytics.mobile.mpub.z$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/z$a.class */
    public static class C8684a {

        /* renamed from: a */
        public int f33622a = 0;

        /* renamed from: b */
        public final Set<Rect> f33623b = new HashSet();

        /* renamed from: c */
        public boolean f33624c = false;
    }

    /* renamed from: com.moat.analytics.mobile.mpub.z$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/z$b.class */
    public static class C8685b {

        /* renamed from: a */
        public final View f33625a;

        /* renamed from: b */
        public final Rect f33626b;

        public C8685b(View view, C8685b bVar) {
            Rect rect;
            this.f33625a = view;
            if (bVar != null) {
                Rect rect2 = bVar.f33626b;
                rect = C8682z.m4760b(view, rect2.left, rect2.top);
            } else {
                rect = C8682z.m4750k(view);
            }
            this.f33626b = rect;
        }
    }

    /* renamed from: com.moat.analytics.mobile.mpub.z$c */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/z$c.class */
    public static class C8686c {

        /* renamed from: a */
        public Rect f33627a = new Rect(0, 0, 0, 0);

        /* renamed from: b */
        public double f33628b = 0.0d;

        /* renamed from: c */
        public double f33629c = 0.0d;
    }

    /* renamed from: a */
    public static int m4774a(Rect rect, Set<Rect> set) {
        int i = 0;
        int i2 = 0;
        if (!set.isEmpty()) {
            ArrayList<Rect> arrayList = new ArrayList();
            arrayList.addAll(set);
            Collections.sort(arrayList, new Comparator<Rect>() { // from class: com.moat.analytics.mobile.mpub.z.1
                /* renamed from: a */
                public int compare(Rect rect2, Rect rect3) {
                    return Integer.valueOf(rect2.top).compareTo(Integer.valueOf(rect3.top));
                }
            });
            ArrayList arrayList2 = new ArrayList();
            for (Rect rect2 : arrayList) {
                arrayList2.add(Integer.valueOf(rect2.left));
                arrayList2.add(Integer.valueOf(rect2.right));
            }
            Collections.sort(arrayList2);
            i = 0;
            while (i2 < arrayList2.size() - 1) {
                Integer num = (Integer) arrayList2.get(i2);
                int i3 = i2 + 1;
                if (num.equals(arrayList2.get(i3))) {
                    i = i;
                } else {
                    Rect rect3 = new Rect(((Integer) arrayList2.get(i2)).intValue(), rect.top, ((Integer) arrayList2.get(i3)).intValue(), rect.bottom);
                    int i4 = rect.top;
                    Iterator it = arrayList.iterator();
                    while (true) {
                        i = i;
                        if (it.hasNext()) {
                            Rect rect4 = (Rect) it.next();
                            if (Rect.intersects(rect4, rect3)) {
                                i4 = i4;
                                i = i;
                                if (rect4.bottom > i4) {
                                    i += rect3.width() * (rect4.bottom - Math.max(i4, rect4.top));
                                    i4 = rect4.bottom;
                                }
                                i = i;
                                if (rect4.bottom == rect3.bottom) {
                                    break;
                                }
                            }
                        }
                    }
                }
                i2 = i3;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static Rect m4772a(DisplayMetrics displayMetrics) {
        return new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    /* renamed from: a */
    public static Rect m4771a(View view) {
        return view != null ? m4750k(view) : new Rect(0, 0, 0, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0081, code lost:
        com.moat.analytics.mobile.mpub.C8652p.m4848a(3, "VisibilityInfo", (java.lang.Object) null, "Short-circuiting cover retrieval, reached max");
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.moat.analytics.mobile.mpub.C8682z.C8684a m4775a(android.graphics.Rect r5, android.view.View r6) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.mpub.C8682z.m4775a(android.graphics.Rect, android.view.View):com.moat.analytics.mobile.mpub.z$a");
    }

    /* renamed from: a */
    public static C8686c m4768a(View view, Rect rect, boolean z, boolean z2, boolean z3) {
        C8686c cVar = new C8686c();
        int b = m4764b(rect);
        if (view != null && z && z2 && !z3 && b > 0) {
            Rect rect2 = new Rect(0, 0, 0, 0);
            if (m4769a(view, rect2)) {
                int b2 = m4764b(rect2);
                if (b2 < b) {
                    C8652p.m4842b(2, "VisibilityInfo", null, "Ad is clipped");
                }
                if (view.getRootView() instanceof ViewGroup) {
                    cVar.f33627a = rect2;
                    C8684a a = m4775a(rect2, view);
                    if (a.f33624c) {
                        cVar.f33629c = 1.0d;
                    } else {
                        int a2 = m4774a(rect2, a.f33623b);
                        if (a2 > 0) {
                            double d = a2;
                            double d2 = b2;
                            Double.isNaN(d2);
                            Double.isNaN(d);
                            cVar.f33629c = d / (d2 * 1.0d);
                        }
                        double d3 = b2 - a2;
                        double d4 = b;
                        Double.isNaN(d4);
                        Double.isNaN(d3);
                        cVar.f33628b = d3 / (d4 * 1.0d);
                    }
                }
            }
        }
        return cVar;
    }

    /* renamed from: a */
    public static Map<String, String> m4777a(Rect rect) {
        HashMap hashMap = new HashMap();
        hashMap.put("x", String.valueOf(rect.left));
        hashMap.put("y", String.valueOf(rect.top));
        hashMap.put(C8311w.f32327d, String.valueOf(rect.right - rect.left));
        hashMap.put("h", String.valueOf(rect.bottom - rect.top));
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, String> m4776a(Rect rect, DisplayMetrics displayMetrics) {
        return m4777a(m4763b(rect, displayMetrics));
    }

    /* renamed from: a */
    public static JSONObject m4773a(Location location) {
        Map<String, String> b = m4762b(location);
        if (b == null) {
            return null;
        }
        return new JSONObject(b);
    }

    /* renamed from: a */
    public static void m4766a(C8685b bVar, Rect rect, C8684a aVar) {
        Rect rect2 = bVar.f33626b;
        if (rect2.setIntersect(rect, rect2)) {
            if (Build.VERSION.SDK_INT >= 22) {
                Rect rect3 = new Rect(0, 0, 0, 0);
                if (m4769a(bVar.f33625a, rect3)) {
                    rect2 = bVar.f33626b;
                    if (!rect2.setIntersect(rect3, rect2)) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (C8667w.m4813a().f33575c) {
                View view = bVar.f33625a;
                C8652p.m4842b(2, "VisibilityInfo", view, String.format(Locale.ROOT, "Covered by %s-%s alpha=%f", view.getClass().getName(), rect2.toString(), Float.valueOf(bVar.f33625a.getAlpha())));
            }
            aVar.f33623b.add(rect2);
            if (rect2.contains(rect)) {
                aVar.f33624c = true;
            }
        }
    }

    /* renamed from: a */
    public static boolean m4769a(View view, Rect rect) {
        boolean z = false;
        if (view.getGlobalVisibleRect(rect)) {
            int[] iArr = {Integer.MIN_VALUE, Integer.MIN_VALUE};
            view.getLocationInWindow(iArr);
            int[] iArr2 = {Integer.MIN_VALUE, Integer.MIN_VALUE};
            view.getLocationOnScreen(iArr2);
            z = true;
            rect.offset(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m4767a(View view, View view2, boolean z) {
        boolean z2 = true;
        if (z) {
            boolean z3 = true;
            if (Build.VERSION.SDK_INT >= 21) {
                z3 = view.getZ() >= view2.getZ();
            }
            return z3;
        }
        if (Build.VERSION.SDK_INT < 21 || view.getZ() <= view2.getZ()) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: b */
    public static int m4764b(Rect rect) {
        return rect.width() * rect.height();
    }

    /* renamed from: b */
    public static Rect m4763b(Rect rect, DisplayMetrics displayMetrics) {
        float f = displayMetrics.density;
        if (f == 0.0f) {
            return rect;
        }
        return new Rect(Math.round(rect.left / f), Math.round(rect.top / f), Math.round(rect.right / f), Math.round(rect.bottom / f));
    }

    /* renamed from: b */
    public static Rect m4760b(View view, int i, int i2) {
        int left = i + view.getLeft();
        int top = i2 + view.getTop();
        return new Rect(left, top, view.getWidth() + left, view.getHeight() + top);
    }

    /* renamed from: b */
    public static Map<String, String> m4762b(Location location) {
        if (location == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("latitude", Double.toString(location.getLatitude()));
        hashMap.put("longitude", Double.toString(location.getLongitude()));
        hashMap.put(AvidJSONUtil.KEY_TIMESTAMP, Long.toString(location.getTime()));
        hashMap.put("horizontalAccuracy", Float.toString(location.getAccuracy()));
        return hashMap;
    }

    /* renamed from: b */
    public static void m4759b(C8685b bVar, Rect rect, C8684a aVar) {
        if (m4753h(bVar.f33625a)) {
            View view = bVar.f33625a;
            boolean z = true;
            if (view instanceof ViewGroup) {
                z = !ViewGroup.class.equals(view.getClass().getSuperclass()) || !m4751j(bVar.f33625a);
                ViewGroup viewGroup = (ViewGroup) bVar.f33625a;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    int i2 = aVar.f33622a + 1;
                    aVar.f33622a = i2;
                    if (i2 <= 500) {
                        m4759b(new C8685b(viewGroup.getChildAt(i), bVar), rect, aVar);
                        if (aVar.f33624c) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
            if (z) {
                m4766a(bVar, rect, aVar);
            }
        }
    }

    /* renamed from: c */
    public static boolean m4758c(View view) {
        boolean z = true;
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 19) {
            if (view == null || !view.isAttachedToWindow()) {
                z2 = false;
            }
            return z2;
        }
        if (view == null || view.getWindowToken() == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public static boolean m4757d(View view) {
        return view != null && view.hasWindowFocus();
    }

    /* renamed from: e */
    public static boolean m4756e(View view) {
        return view == null || !view.isShown();
    }

    /* renamed from: f */
    public static float m4755f(View view) {
        return view == null ? 0.0f : m4754g(view);
    }

    /* renamed from: g */
    public static float m4754g(View view) {
        float alpha = view.getAlpha();
        while (view != null && view.getParent() != null && alpha != 0.0d && (view.getParent() instanceof View)) {
            alpha *= ((View) view.getParent()).getAlpha();
            view = (View) view.getParent();
        }
        return alpha;
    }

    /* renamed from: h */
    public static boolean m4753h(View view) {
        return view.isShown() && ((double) view.getAlpha()) > 0.0d;
    }

    /* renamed from: i */
    public static ArrayDeque<View> m4752i(View view) {
        ArrayDeque<View> arrayDeque = new ArrayDeque<>();
        int i = 0;
        View view2 = view;
        while (true) {
            if (view2.getParent() == null && view2 != view.getRootView()) {
                break;
            }
            i++;
            if (i <= 50) {
                arrayDeque.add(view2);
                if (!(view2.getParent() instanceof View)) {
                    break;
                }
                view2 = (View) view2.getParent();
            } else {
                C8652p.m4848a(3, "VisibilityInfo", (Object) null, "Short-circuiting chain retrieval, reached max");
                break;
            }
        }
        return arrayDeque;
    }

    /* renamed from: j */
    public static boolean m4751j(View view) {
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 19) {
            z = true;
            if (view.getBackground() != null) {
                z = view.getBackground().getAlpha() == 0;
            }
        }
        return z;
    }

    /* renamed from: k */
    public static Rect m4750k(View view) {
        int[] iArr = {Integer.MIN_VALUE, Integer.MIN_VALUE};
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    /* renamed from: l */
    public static DisplayMetrics m4749l(View view) {
        WeakReference<Activity> weakReference;
        Activity activity;
        if (Build.VERSION.SDK_INT < 17 || (weakReference = C8612a.f33425a) == null || (activity = weakReference.get()) == null) {
            return view.getContext().getResources().getDisplayMetrics();
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: a */
    public void m4765a(String str, View view) {
        HashMap hashMap = new HashMap();
        String str2 = "{}";
        if (view != null) {
            try {
                DisplayMetrics l = m4749l(view);
                boolean c = m4758c(view);
                boolean d = m4757d(view);
                boolean e = m4756e(view);
                float f = m4755f(view);
                hashMap.put("dr", Float.valueOf(l.density));
                hashMap.put("dv", Double.valueOf(C8655s.m4838a()));
                hashMap.put("adKey", str);
                boolean z = false;
                z = true;
                hashMap.put("isAttached", Integer.valueOf(c ? 1 : 0));
                hashMap.put("inFocus", Integer.valueOf(d ? 1 : 0));
                hashMap.put("isHidden", Integer.valueOf(e ? 1 : 0));
                hashMap.put("opacity", Float.valueOf(f));
                Rect a = m4772a(l);
                Rect a2 = m4771a(view);
                C8686c a3 = m4768a(view, a2, c, d, e);
                if (this.f33615c == null || a3.f33628b != this.f33614b.f33628b || !a3.f33627a.equals(this.f33614b.f33627a) || a3.f33629c != this.f33614b.f33629c) {
                    this.f33614b = a3;
                    this.f33615c = new JSONObject(m4776a(this.f33614b.f33627a, l));
                    z = true;
                }
                hashMap.put("coveredPercent", Double.valueOf(a3.f33629c));
                if (this.f33619g == null || !a.equals(this.f33617e)) {
                    this.f33617e = a;
                    this.f33619g = new JSONObject(m4776a(a, l));
                    z = true;
                }
                if (this.f33618f == null || !a2.equals(this.f33616d)) {
                    this.f33616d = a2;
                    this.f33618f = new JSONObject(m4776a(a2, l));
                    z = true;
                }
                if (this.f33621i == null || !hashMap.equals(this.f33621i)) {
                    this.f33621i = hashMap;
                    z = true;
                }
                Location b = C8649o.m4870a().m4863b();
                if (!C8649o.m4868a(b, this.f33620h)) {
                    this.f33620h = b;
                }
                if (z) {
                    JSONObject jSONObject = new JSONObject(this.f33621i);
                    jSONObject.accumulate("screen", this.f33619g);
                    jSONObject.accumulate("view", this.f33618f);
                    jSONObject.accumulate("visible", this.f33615c);
                    jSONObject.accumulate("maybe", this.f33615c);
                    jSONObject.accumulate("visiblePercent", Double.valueOf(this.f33614b.f33628b));
                    if (b != null) {
                        jSONObject.accumulate("location", m4773a(b));
                    }
                    String jSONObject2 = jSONObject.toString();
                    str2 = jSONObject2;
                    this.f33613a = jSONObject2;
                }
            } catch (Exception e2) {
                C8643m.m4879a(e2);
                this.f33613a = str2;
            }
        }
    }
}
