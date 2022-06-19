package p116h7;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import androidx.appcompat.widget.C0249l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p008a7.C0042i;
import p015b0.C0713a;
import p032c7.C0848a;
import p032c7.C0849b;
import p072d7.AbstractC2482a;
import p072d7.C2484b;
import p072d7.C2485c;
import p082e7.C2604a;
import p082e7.C2605b;
import p116h7.C3021c;
import p127i7.AsyncTaskC3131d;
import p127i7.AsyncTaskC3132e;
import p127i7.AsyncTaskC3133f;
import p127i7.C3130c;
/* renamed from: h7.a */
/* loaded from: classes-dex2jar.jar:h7/a.class */
public class C3015a implements AbstractC2482a.AbstractC2483a {

    /* renamed from: g */
    public static C3015a f10118g = new C3015a();

    /* renamed from: h */
    public static Handler f10119h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    public static Handler f10120i = null;

    /* renamed from: j */
    public static final Runnable f10121j = new RunnableC3018c();

    /* renamed from: k */
    public static final Runnable f10122k = new RunnableC3019d();

    /* renamed from: b */
    public int f10124b;

    /* renamed from: f */
    public long f10128f;

    /* renamed from: a */
    public List<AbstractC3017b> f10123a = new ArrayList();

    /* renamed from: d */
    public C3021c f10126d = new C3021c();

    /* renamed from: c */
    public C0249l f10125c = new C0249l();

    /* renamed from: e */
    public C3023d f10127e = new C3023d(new C3130c());

    /* renamed from: h7.a$a */
    /* loaded from: classes-dex2jar.jar:h7/a$a.class */
    public interface AbstractC3016a extends AbstractC3017b {
        void onTreeProcessedNano(int i, long j);
    }

    /* renamed from: h7.a$b */
    /* loaded from: classes-dex2jar.jar:h7/a$b.class */
    public interface AbstractC3017b {
        void onTreeProcessed(int i, long j);
    }

    /* renamed from: h7.a$c */
    /* loaded from: classes-dex2jar.jar:h7/a$c.class */
    public static final class RunnableC3018c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            String str;
            C3015a c3015a = C3015a.f10118g;
            c3015a.f10124b = 0;
            c3015a.f10128f = System.nanoTime();
            C3021c c3021c = c3015a.f10126d;
            Objects.requireNonNull(c3021c);
            C0848a c0848a = C0848a.f3130c;
            if (c0848a != null) {
                for (C0042i c0042i : c0848a.m7279b()) {
                    View m8875N = c0042i.m8875N();
                    if (c0042i.m8874O()) {
                        String str2 = c0042i.f95h;
                        if (m8875N != null) {
                            if (m8875N.hasWindowFocus()) {
                                HashSet hashSet = new HashSet();
                                View view = m8875N;
                                while (true) {
                                    View view2 = view;
                                    if (view2 == null) {
                                        c3021c.f10133d.addAll(hashSet);
                                        str = null;
                                        break;
                                    }
                                    String m3384a = C2605b.m3384a(view2);
                                    if (m3384a != null) {
                                        str = m3384a;
                                        break;
                                    }
                                    hashSet.add(view2);
                                    ViewParent parent = view2.getParent();
                                    view = parent instanceof View ? (View) parent : null;
                                }
                            } else {
                                str = "noWindowFocus";
                            }
                            if (str == null) {
                                c3021c.f10134e.add(str2);
                                c3021c.f10130a.put(m8875N, str2);
                                for (C0849b c0849b : c0042i.f90c) {
                                    View view3 = c0849b.f3133a.get();
                                    if (view3 != null) {
                                        C3021c.C3022a c3022a = c3021c.f10131b.get(view3);
                                        if (c3022a != null) {
                                            c3022a.f10139b.add(c0042i.f95h);
                                        } else {
                                            c3021c.f10131b.put(view3, new C3021c.C3022a(c0849b, c0042i.f95h));
                                        }
                                    }
                                }
                            } else {
                                c3021c.f10135f.add(str2);
                                c3021c.f10132c.put(str2, m8875N);
                                c3021c.f10136g.put(str2, str);
                            }
                        } else {
                            c3021c.f10135f.add(str2);
                            c3021c.f10136g.put(str2, "noAdView");
                        }
                    }
                }
            }
            long nanoTime = System.nanoTime();
            C2484b c2484b = (C2484b) c3015a.f10125c.f1012c;
            if (c3015a.f10126d.f10135f.size() > 0) {
                Iterator<String> it2 = c3015a.f10126d.f10135f.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    JSONObject mo3516a = c2484b.mo3516a(null);
                    View view4 = c3015a.f10126d.f10132c.get(next);
                    C2485c c2485c = (C2485c) c3015a.f10125c.f1011b;
                    String str3 = c3015a.f10126d.f10136g.get(next);
                    if (str3 != null) {
                        JSONObject mo3516a2 = c2485c.mo3516a(view4);
                        WindowManager windowManager = C2604a.f9034a;
                        try {
                            mo3516a2.put("adSessionId", next);
                        } catch (JSONException e) {
                            int i = C0713a.f2765q;
                        }
                        try {
                            mo3516a2.put("notVisibleReason", str3);
                        } catch (JSONException e2) {
                            int i2 = C0713a.f2765q;
                        }
                        C2604a.m3387e(mo3516a, mo3516a2);
                    }
                    C2604a.m3389c(mo3516a);
                    HashSet hashSet2 = new HashSet();
                    hashSet2.add(next);
                    C3023d c3023d = c3015a.f10127e;
                    c3023d.f10141b.m2590b(new AsyncTaskC3132e(c3023d, hashSet2, mo3516a, nanoTime));
                }
            }
            if (c3015a.f10126d.f10134e.size() > 0) {
                JSONObject mo3516a3 = c2484b.mo3516a(null);
                c2484b.mo3515a(null, mo3516a3, c3015a, true);
                C2604a.m3389c(mo3516a3);
                C3023d c3023d2 = c3015a.f10127e;
                c3023d2.f10141b.m2590b(new AsyncTaskC3133f(c3023d2, c3015a.f10126d.f10134e, mo3516a3, nanoTime));
            } else {
                C3023d c3023d3 = c3015a.f10127e;
                c3023d3.f10141b.m2590b(new AsyncTaskC3131d(c3023d3));
            }
            C3021c c3021c2 = c3015a.f10126d;
            c3021c2.f10130a.clear();
            c3021c2.f10131b.clear();
            c3021c2.f10132c.clear();
            c3021c2.f10133d.clear();
            c3021c2.f10134e.clear();
            c3021c2.f10135f.clear();
            c3021c2.f10136g.clear();
            c3021c2.f10137h = false;
            long nanoTime2 = System.nanoTime() - c3015a.f10128f;
            if (c3015a.f10123a.size() > 0) {
                for (AbstractC3017b abstractC3017b : c3015a.f10123a) {
                    abstractC3017b.onTreeProcessed(c3015a.f10124b, TimeUnit.NANOSECONDS.toMillis(nanoTime2));
                    if (abstractC3017b instanceof AbstractC3016a) {
                        ((AbstractC3016a) abstractC3017b).onTreeProcessedNano(c3015a.f10124b, nanoTime2);
                    }
                }
            }
        }
    }

    /* renamed from: h7.a$d */
    /* loaded from: classes-dex2jar.jar:h7/a$d.class */
    public static final class RunnableC3019d implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            Handler handler = C3015a.f10120i;
            if (handler != null) {
                handler.post(C3015a.f10121j);
                C3015a.f10120i.postDelayed(C3015a.f10122k, 200L);
            }
        }
    }

    /* renamed from: a */
    public void m2736a(View view, AbstractC2482a abstractC2482a, JSONObject jSONObject) {
        Object obj;
        boolean z;
        boolean z2 = false;
        if (!(C2605b.m3384a(view) == null)) {
            return;
        }
        C3021c c3021c = this.f10126d;
        boolean z3 = c3021c.f10133d.contains(view) ? true : c3021c.f10137h ? true : true;
        if (z3) {
            return;
        }
        JSONObject mo3516a = abstractC2482a.mo3516a(view);
        C2604a.m3387e(jSONObject, mo3516a);
        C3021c c3021c2 = this.f10126d;
        if (c3021c2.f10130a.size() == 0) {
            obj = null;
        } else {
            obj = (String) c3021c2.f10130a.get(view);
            if (obj != null) {
                c3021c2.f10130a.remove(view);
            }
        }
        if (obj != null) {
            WindowManager windowManager = C2604a.f9034a;
            try {
                mo3516a.put("adSessionId", obj);
            } catch (JSONException e) {
            }
            this.f10126d.f10137h = true;
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            C3021c c3021c3 = this.f10126d;
            C3021c.C3022a c3022a = c3021c3.f10131b.get(view);
            if (c3022a != null) {
                c3021c3.f10131b.remove(view);
            }
            if (c3022a != null) {
                WindowManager windowManager2 = C2604a.f9034a;
                C0849b c0849b = c3022a.f10138a;
                JSONArray jSONArray = new JSONArray();
                for (String str : c3022a.f10139b) {
                    jSONArray.put(str);
                }
                try {
                    mo3516a.put("isFriendlyObstructionFor", jSONArray);
                    mo3516a.put("friendlyObstructionClass", c0849b.f3134b);
                    mo3516a.put("friendlyObstructionPurpose", c0849b.f3135c);
                    mo3516a.put("friendlyObstructionReason", c0849b.f3136d);
                } catch (JSONException e2) {
                }
            }
            if (z3) {
                z2 = true;
            }
            abstractC2482a.mo3515a(view, mo3516a, this, z2);
        }
        this.f10124b++;
    }
}
