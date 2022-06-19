package p072d7;

import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
import p008a7.C0042i;
import p032c7.C0848a;
import p072d7.AbstractC2482a;
import p082e7.C2604a;
import p116h7.C3015a;
/* renamed from: d7.b */
/* loaded from: classes-dex2jar.jar:d7/b.class */
public class C2484b implements AbstractC2482a {

    /* renamed from: a */
    public final AbstractC2482a f8731a;

    public C2484b(AbstractC2482a abstractC2482a) {
        this.f8731a = abstractC2482a;
    }

    @Override // p072d7.AbstractC2482a
    /* renamed from: a */
    public JSONObject mo3516a(View view) {
        return C2604a.m3390b(0, 0, 0, 0);
    }

    @Override // p072d7.AbstractC2482a
    /* renamed from: a */
    public void mo3515a(View view, JSONObject jSONObject, AbstractC2482a.AbstractC2483a abstractC2483a, boolean z) {
        View rootView;
        int i;
        ArrayList arrayList = new ArrayList();
        C0848a c0848a = C0848a.f3130c;
        if (c0848a != null) {
            Collection<C0042i> m7279b = c0848a.m7279b();
            IdentityHashMap identityHashMap = new IdentityHashMap((m7279b.size() * 2) + 3);
            for (C0042i c0042i : m7279b) {
                View m8875N = c0042i.m8875N();
                if (m8875N != null) {
                    boolean z2 = false;
                    if (m8875N.isAttachedToWindow() && m8875N.isShown()) {
                        View view2 = m8875N;
                        while (true) {
                            View view3 = view2;
                            if (view3 == null) {
                                z2 = true;
                                break;
                            } else if (view3.getAlpha() == 0.0f) {
                                break;
                            } else {
                                ViewParent parent = view3.getParent();
                                view2 = parent instanceof View ? (View) parent : null;
                            }
                        }
                    }
                    if (z2 && (rootView = m8875N.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                        identityHashMap.put(rootView, rootView);
                        float z3 = rootView.getZ();
                        int size = arrayList.size();
                        while (true) {
                            i = size;
                            if (i <= 0) {
                                break;
                            }
                            int i2 = i - 1;
                            if (((View) arrayList.get(i2)).getZ() <= z3) {
                                break;
                            }
                            size = i2;
                        }
                        arrayList.add(i, rootView);
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((C3015a) abstractC2483a).m2736a((View) it2.next(), this.f8731a, jSONObject);
        }
    }
}
