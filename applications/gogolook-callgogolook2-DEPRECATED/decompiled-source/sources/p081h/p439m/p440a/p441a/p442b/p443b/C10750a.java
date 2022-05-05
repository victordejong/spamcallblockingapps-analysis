package p081h.p439m.p440a.p441a.p442b.p443b;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.samsung.android.cocktailbar.CocktailBarManager;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import p081h.p439m.p440a.p441a.p442b.C10749a;
/* renamed from: h.m.a.a.b.b.a */
/* loaded from: classes2-dex2jar.jar:h/m/a/a/b/b/a.class */
public final class C10750a {

    /* renamed from: c */
    public static WeakHashMap<Context, WeakReference<C10750a>> f24511c = new WeakHashMap<>();

    /* renamed from: a */
    public C10749a f24512a = new C10749a();

    /* renamed from: b */
    public CocktailBarManager f24513b;

    public C10750a(Context context) {
        if (this.f24512a.m10739a(7)) {
            this.f24513b = CocktailBarManager.getInstance(context);
        }
    }

    /* renamed from: a */
    public static C10750a m10736a(Context context) {
        C10750a aVar;
        synchronized (f24511c) {
            if (context != null) {
                if ((context instanceof ContextWrapper) && ((ContextWrapper) context).getBaseContext() == null) {
                    throw new IllegalArgumentException("Base context is null.");
                }
                WeakReference<C10750a> weakReference = f24511c.get(context);
                C10750a aVar2 = null;
                if (weakReference != null) {
                    aVar2 = weakReference.get();
                }
                aVar = aVar2;
                if (aVar2 == null) {
                    aVar = new C10750a(context);
                    f24511c.put(context, new WeakReference<>(aVar));
                }
            } else {
                throw new IllegalArgumentException("context is null.");
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public void m10738a(int i, RemoteViews remoteViews) {
        if (!this.f24512a.m10739a(7)) {
            return;
        }
        if (remoteViews != null) {
            this.f24513b.updateCocktail(i, 1, 1, remoteViews, (Bundle) null);
            return;
        }
        throw new IllegalArgumentException("view is null.");
    }

    /* renamed from: a */
    public int[] m10737a(ComponentName componentName) {
        return this.f24512a.m10739a(7) ? this.f24513b.getCocktailIds(componentName) : new int[0];
    }
}
