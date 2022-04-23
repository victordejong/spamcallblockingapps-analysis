package com.criteo.publisher.advancednative;

import android.view.View;
import android.widget.ImageView;
import com.criteo.publisher.m0.c;
import com.criteo.publisher.m0.g;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    final Map<View, WeakReference<ImageView>> f17152a = new WeakHashMap();

    /* renamed from: b  reason: collision with root package name */
    final c f17153b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17154c;

    public b(g gVar, c cVar) {
        this.f17154c = gVar;
        this.f17153b = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ImageView a(View view) {
        WeakReference<ImageView> weakReference = this.f17152a.get(view);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
