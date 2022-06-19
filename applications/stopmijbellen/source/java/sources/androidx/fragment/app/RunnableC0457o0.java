package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.C0459p0;
import java.util.ArrayList;
import p226s.C4251a;
/* renamed from: androidx.fragment.app.o0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/o0.class */
public class RunnableC0457o0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0471r0 f1884a;

    /* renamed from: b */
    public final /* synthetic */ C4251a f1885b;

    /* renamed from: c */
    public final /* synthetic */ Object f1886c;

    /* renamed from: d */
    public final /* synthetic */ C0459p0.C0461b f1887d;

    /* renamed from: e */
    public final /* synthetic */ ArrayList f1888e;

    /* renamed from: f */
    public final /* synthetic */ View f1889f;

    /* renamed from: g */
    public final /* synthetic */ Fragment f1890g;

    /* renamed from: h */
    public final /* synthetic */ Fragment f1891h;

    /* renamed from: i */
    public final /* synthetic */ boolean f1892i;

    /* renamed from: j */
    public final /* synthetic */ ArrayList f1893j;

    /* renamed from: k */
    public final /* synthetic */ Object f1894k;

    /* renamed from: l */
    public final /* synthetic */ Rect f1895l;

    public RunnableC0457o0(AbstractC0471r0 abstractC0471r0, C4251a c4251a, Object obj, C0459p0.C0461b c0461b, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.f1884a = abstractC0471r0;
        this.f1885b = c4251a;
        this.f1886c = obj;
        this.f1887d = c0461b;
        this.f1888e = arrayList;
        this.f1889f = view;
        this.f1890g = fragment;
        this.f1891h = fragment2;
        this.f1892i = z;
        this.f1893j = arrayList2;
        this.f1894k = obj2;
        this.f1895l = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        C4251a<String, View> m8085e = C0459p0.m8085e(this.f1884a, this.f1885b, this.f1886c, this.f1887d);
        if (m8085e != null) {
            this.f1888e.addAll(m8085e.values());
            this.f1888e.add(this.f1889f);
        }
        C0459p0.m8087c(this.f1890g, this.f1891h, this.f1892i, m8085e, false);
        Object obj = this.f1886c;
        if (obj != null) {
            this.f1884a.mo2285x(obj, this.f1893j, this.f1888e);
            View m8079k = C0459p0.m8079k(m8085e, this.f1887d, this.f1894k, this.f1892i);
            if (m8079k == null) {
                return;
            }
            this.f1884a.m8067j(m8079k, this.f1895l);
        }
    }
}
