package com.criteo.publisher.advancednative;

import android.view.View;
import android.widget.ImageView;
import com.criteo.publisher.p256m0.C8429c;
import com.criteo.publisher.p256m0.C8433g;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.criteo.publisher.advancednative.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/advancednative/b.class */
public class C8227b {

    /* renamed from: a */
    final Map<View, WeakReference<ImageView>> f29756a = new WeakHashMap();

    /* renamed from: b */
    final C8429c f29757b;

    /* renamed from: c */
    private final C8433g f29758c;

    public C8227b(C8433g c8433g, C8429c c8429c) {
        this.f29758c = c8433g;
        this.f29757b = c8429c;
    }

    /* renamed from: a */
    public final ImageView m25982a(View view) {
        WeakReference<ImageView> weakReference = this.f29756a.get(view);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }
}
