package com.moat.analytics.mobile.inm;

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
/* renamed from: com.moat.analytics.mobile.inm.z */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/z.class */
public class C8601z {

    /* renamed from: c */
    public JSONObject f33398c;

    /* renamed from: d */
    public Rect f33399d;

    /* renamed from: e */
    public Rect f33400e;

    /* renamed from: f */
    public JSONObject f33401f;

    /* renamed from: g */
    public JSONObject f33402g;

    /* renamed from: h */
    public Location f33403h;

    /* renamed from: i */
    public Map<String, Object> f33404i = new HashMap();

    /* renamed from: a */
    public String f33396a = "{}";

    /* renamed from: b */
    public C8605c f33397b = new C8605c();

    /* renamed from: com.moat.analytics.mobile.inm.z$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/z$a.class */
    public static class C8603a {

        /* renamed from: a */
        public int f33405a = 0;

        /* renamed from: b */
        public final Set<Rect> f33406b = new HashSet();

        /* renamed from: c */
        public boolean f33407c = false;
    }

    /* renamed from: com.moat.analytics.mobile.inm.z$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/z$b.class */
    public static class C8604b {

        /* renamed from: a */
        public final View f33408a;

        /* renamed from: b */
        public final Rect f33409b;

        public C8604b(View view, C8604b bVar) {
            Rect k;
            this.f33408a = view;
            if (bVar != null) {
                Rect rect = bVar.f33409b;
                k = C8601z.m5016b(view, rect.left, rect.top);
            } else {
                k = C8601z.m5006k(view);
            }
            this.f33409b = k;
        }
    }

    /* renamed from: com.moat.analytics.mobile.inm.z$c */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/z$c.class */
    public static class C8605c {

        /* renamed from: a */
        public Rect f33410a = new Rect(0, 0, 0, 0);

        /* renamed from: b */
        public double f33411b = 0.0d;

        /* renamed from: c */
        public double f33412c = 0.0d;
    }

    /* renamed from: a */
    public static int m5030a(Rect rect, Set<Rect> set) {
        int i = 0;
        int i2 = 0;
        if (!set.isEmpty()) {
            ArrayList<Rect> arrayList = new ArrayList();
            arrayList.addAll(set);
            Collections.sort(arrayList, new Comparator<Rect>() { // from class: com.moat.analytics.mobile.inm.z.1
                /* renamed from: a */
                public final int compare(Rect rect2, Rect rect3) {
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
                i = i;
                if (!num.equals(arrayList2.get(i3))) {
                    Rect rect3 = new Rect(((Integer) arrayList2.get(i2)).intValue(), rect.top, ((Integer) arrayList2.get(i3)).intValue(), rect.bottom);
                    int i4 = rect.top;
                    Iterator it = arrayList.iterator();
                    int i5 = i;
                    while (true) {
                        i = i5;
                        if (it.hasNext()) {
                            Rect rect4 = (Rect) it.next();
                            if (Rect.intersects(rect4, rect3)) {
                                i4 = i4;
                                int i6 = i5;
                                if (rect4.bottom > i4) {
                                    i6 = i5 + (rect3.width() * (rect4.bottom - Math.max(i4, rect4.top)));
                                    i4 = rect4.bottom;
                                }
                                i = i6;
                                if (rect4.bottom != rect3.bottom) {
                                    i5 = i6;
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
    public static Rect m5028a(DisplayMetrics displayMetrics) {
        return new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    /* renamed from: a */
    public static Rect m5027a(View view) {
        return view != null ? m5006k(view) : new Rect(0, 0, 0, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007e, code lost:
        com.moat.analytics.mobile.inm.C8571p.m5104a(3, "VisibilityInfo", (java.lang.Object) null, "Short-circuiting cover retrieval, reached max");
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.moat.analytics.mobile.inm.C8601z.C8603a m5031a(android.graphics.Rect r5, android.view.View r6) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.inm.C8601z.m5031a(android.graphics.Rect, android.view.View):com.moat.analytics.mobile.inm.z$a");
    }

    /* renamed from: a */
    public static C8605c m5024a(View view, Rect rect, boolean z, boolean z2, boolean z3) {
        C8605c cVar = new C8605c();
        int b = m5020b(rect);
        if (view != null && z && z2 && !z3 && b > 0) {
            Rect rect2 = new Rect(0, 0, 0, 0);
            if (m5025a(view, rect2)) {
                int b2 = m5020b(rect2);
                if (b2 < b) {
                    C8571p.m5098b(2, "VisibilityInfo", null, "Ad is clipped");
                }
                if (view.getRootView() instanceof ViewGroup) {
                    cVar.f33410a = rect2;
                    C8603a a = m5031a(rect2, view);
                    if (a.f33407c) {
                        cVar.f33412c = 1.0d;
                    } else {
                        int a2 = m5030a(rect2, a.f33406b);
                        if (a2 > 0) {
                            double d = a2;
                            double d2 = b2;
                            Double.isNaN(d2);
                            Double.isNaN(d);
                            cVar.f33412c = d / (d2 * 1.0d);
                        }
                        double d3 = b2 - a2;
                        double d4 = b;
                        Double.isNaN(d4);
                        Double.isNaN(d3);
                        cVar.f33411b = d3 / (d4 * 1.0d);
                    }
                }
            }
        }
        return cVar;
    }

    /* renamed from: a */
    public static Map<String, String> m5033a(Rect rect) {
        HashMap hashMap = new HashMap();
        hashMap.put("x", String.valueOf(rect.left));
        hashMap.put("y", String.valueOf(rect.top));
        hashMap.put(C8311w.f32327d, String.valueOf(rect.right - rect.left));
        hashMap.put("h", String.valueOf(rect.bottom - rect.top));
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, String> m5032a(Rect rect, DisplayMetrics displayMetrics) {
        return m5033a(m5019b(rect, displayMetrics));
    }

    /* renamed from: a */
    public static JSONObject m5029a(Location location) {
        Map<String, String> b = m5018b(location);
        if (b == null) {
            return null;
        }
        return new JSONObject(b);
    }

    /* renamed from: a */
    public static void m5022a(C8604b bVar, Rect rect, C8603a aVar) {
        Rect rect2 = bVar.f33409b;
        if (rect2.setIntersect(rect, rect2)) {
            if (Build.VERSION.SDK_INT >= 22) {
                Rect rect3 = new Rect(0, 0, 0, 0);
                if (m5025a(bVar.f33408a, rect3)) {
                    rect2 = bVar.f33409b;
                    if (!rect2.setIntersect(rect3, rect2)) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (C8586w.m5069a().f33358c) {
                View view = bVar.f33408a;
                C8571p.m5098b(2, "VisibilityInfo", view, String.format(Locale.ROOT, "Covered by %s-%s alpha=%f", view.getClass().getName(), rect2.toString(), Float.valueOf(bVar.f33408a.getAlpha())));
            }
            aVar.f33406b.add(rect2);
            if (rect2.contains(rect)) {
                aVar.f33407c = true;
            }
        }
    }

    /* renamed from: a */
    public static boolean m5025a(View view, Rect rect) {
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
    public static boolean m5023a(View view, View view2, boolean z) {
        return z ? Build.VERSION.SDK_INT < 21 || view.getZ() >= view2.getZ() : Build.VERSION.SDK_INT >= 21 && view.getZ() > view2.getZ();
    }

    /* renamed from: b */
    public static int m5020b(Rect rect) {
        return rect.width() * rect.height();
    }

    /* renamed from: b */
    public static Rect m5019b(Rect rect, DisplayMetrics displayMetrics) {
        float f = displayMetrics.density;
        if (f == 0.0f) {
            return rect;
        }
        return new Rect(Math.round(rect.left / f), Math.round(rect.top / f), Math.round(rect.right / f), Math.round(rect.bottom / f));
    }

    /* renamed from: b */
    public static Rect m5016b(View view, int i, int i2) {
        int left = i + view.getLeft();
        int top = i2 + view.getTop();
        return new Rect(left, top, view.getWidth() + left, view.getHeight() + top);
    }

    /* renamed from: b */
    public static Map<String, String> m5018b(Location location) {
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
    public static void m5015b(C8604b bVar, Rect rect, C8603a aVar) {
        if (m5009h(bVar.f33408a)) {
            View view = bVar.f33408a;
            boolean z = true;
            if (view instanceof ViewGroup) {
                z = !ViewGroup.class.equals(view.getClass().getSuperclass()) || !m5007j(bVar.f33408a);
                ViewGroup viewGroup = (ViewGroup) bVar.f33408a;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    int i2 = aVar.f33405a + 1;
                    aVar.f33405a = i2;
                    if (i2 <= 500) {
                        m5015b(new C8604b(viewGroup.getChildAt(i), bVar), rect, aVar);
                        if (aVar.f33407c) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
            if (z) {
                m5022a(bVar, rect, aVar);
            }
        }
    }

    /* renamed from: c */
    public static boolean m5014c(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view != null && view.isAttachedToWindow() : (view == null || view.getWindowToken() == null) ? false : true;
    }

    /* renamed from: d */
    public static boolean m5013d(View view) {
        return view != null && view.hasWindowFocus();
    }

    /* renamed from: e */
    public static boolean m5012e(View view) {
        return view == null || !view.isShown();
    }

    /* renamed from: f */
    public static float m5011f(View view) {
        if (view == null) {
            return 0.0f;
        }
        return m5010g(view);
    }

    /* renamed from: g */
    public static float m5010g(View view) {
        float alpha = view.getAlpha();
        while (view != null && view.getParent() != null && alpha != 0.0d && (view.getParent() instanceof View)) {
            alpha *= ((View) view.getParent()).getAlpha();
            view = (View) view.getParent();
        }
        return alpha;
    }

    /* renamed from: h */
    public static boolean m5009h(View view) {
        return view.isShown() && ((double) view.getAlpha()) > 0.0d;
    }

    /* renamed from: i */
    public static ArrayDeque<View> m5008i(View view) {
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
                C8571p.m5104a(3, "VisibilityInfo", (Object) null, "Short-circuiting chain retrieval, reached max");
                break;
            }
        }
        return arrayDeque;
    }

    /* renamed from: j */
    public static boolean m5007j(View view) {
        return Build.VERSION.SDK_INT < 19 || view.getBackground() == null || view.getBackground().getAlpha() == 0;
    }

    /* renamed from: k */
    public static Rect m5006k(View view) {
        int[] iArr = {Integer.MIN_VALUE, Integer.MIN_VALUE};
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    /* renamed from: l */
    public static DisplayMetrics m5005l(View view) {
        WeakReference<Activity> weakReference;
        Activity activity;
        if (Build.VERSION.SDK_INT < 17 || (weakReference = C8531a.f33208a) == null || (activity = weakReference.get()) == null) {
            return view.getContext().getResources().getDisplayMetrics();
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: a */
    public void m5021a(String str, View view) {
        HashMap hashMap = new HashMap();
        String str2 = "{}";
        if (view != null) {
            try {
                DisplayMetrics l = m5005l(view);
                boolean c = m5014c(view);
                boolean d = m5013d(view);
                boolean e = m5012e(view);
                float f = m5011f(view);
                hashMap.put("dr", Float.valueOf(l.density));
                hashMap.put("dv", Double.valueOf(C8574s.m5094a()));
                hashMap.put("adKey", str);
                boolean z = false;
                z = true;
                hashMap.put("isAttached", Integer.valueOf(c ? 1 : 0));
                hashMap.put("inFocus", Integer.valueOf(d ? 1 : 0));
                hashMap.put("isHidden", Integer.valueOf(e ? 1 : 0));
                hashMap.put("opacity", Float.valueOf(f));
                Rect a = m5028a(l);
                Rect a2 = m5027a(view);
                C8605c a3 = m5024a(view, a2, c, d, e);
                if (this.f33398c == null || a3.f33411b != this.f33397b.f33411b || !a3.f33410a.equals(this.f33397b.f33410a) || a3.f33412c != this.f33397b.f33412c) {
                    this.f33397b = a3;
                    this.f33398c = new JSONObject(m5032a(this.f33397b.f33410a, l));
                    z = true;
                }
                hashMap.put("coveredPercent", Double.valueOf(a3.f33412c));
                if (this.f33402g == null || !a.equals(this.f33400e)) {
                    this.f33400e = a;
                    this.f33402g = new JSONObject(m5032a(a, l));
                    z = true;
                }
                if (this.f33401f == null || !a2.equals(this.f33399d)) {
                    this.f33399d = a2;
                    this.f33401f = new JSONObject(m5032a(a2, l));
                    z = true;
                }
                if (this.f33404i == null || !hashMap.equals(this.f33404i)) {
                    this.f33404i = hashMap;
                    z = true;
                }
                Location b = C8568o.m5126a().m5119b();
                if (!C8568o.m5124a(b, this.f33403h)) {
                    this.f33403h = b;
                }
                if (z) {
                    JSONObject jSONObject = new JSONObject(this.f33404i);
                    jSONObject.accumulate("screen", this.f33402g);
                    jSONObject.accumulate("view", this.f33401f);
                    jSONObject.accumulate("visible", this.f33398c);
                    jSONObject.accumulate("maybe", this.f33398c);
                    jSONObject.accumulate("visiblePercent", Double.valueOf(this.f33397b.f33411b));
                    if (b != null) {
                        jSONObject.accumulate("location", m5029a(b));
                    }
                    String jSONObject2 = jSONObject.toString();
                    str2 = jSONObject2;
                    this.f33396a = jSONObject2;
                }
            } catch (Exception e2) {
                C8562m.m5135a(e2);
                this.f33396a = str2;
            }
        }
    }
}
