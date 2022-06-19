package p193e.p1512i.p1516b.p1529r1;

import android.view.View;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import p193e.p1512i.p1516b.p1531s2.C23078c;
import p193e.p1512i.p1516b.p1531s2.C23080f;
/* renamed from: e.i.b.r1.e */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/e.class */
public class C23042e {

    /* renamed from: a */
    public final Map<View, WeakReference<ImageView>> f63836a = new WeakHashMap();

    /* renamed from: b */
    public final C23080f f63837b;

    /* renamed from: c */
    public final C23078c f63838c;

    public C23042e(C23080f c23080f, C23078c c23078c) {
        this.f63837b = c23080f;
        this.f63838c = c23078c;
    }

    /* renamed from: a */
    public ImageView m7577a(View view) {
        WeakReference<ImageView> weakReference = this.f63836a.get(view);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
