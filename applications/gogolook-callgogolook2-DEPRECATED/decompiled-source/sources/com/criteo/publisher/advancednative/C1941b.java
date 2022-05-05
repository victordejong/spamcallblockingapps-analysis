package com.criteo.publisher.advancednative;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p020a0.C1910c;
import com.criteo.publisher.p020a0.C1917h;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.criteo.publisher.advancednative.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/b.class */
public class C1941b {
    @NonNull

    /* renamed from: a */
    public final Map<View, WeakReference<ImageView>> f2070a = new WeakHashMap();
    @NonNull

    /* renamed from: b */
    public final C1917h f2071b;
    @NonNull

    /* renamed from: c */
    public final C1910c f2072c;

    public C1941b(@NonNull C1917h hVar, @NonNull C1910c cVar) {
        this.f2071b = hVar;
        this.f2072c = cVar;
    }

    @NonNull
    @SuppressLint({"RtlHardcoded"})
    /* renamed from: a */
    public ViewGroup m35984a(@NonNull View view) {
        Context context = view.getContext();
        ImageView imageView = new ImageView(context);
        FrameLayout frameLayout = new FrameLayout(context);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            frameLayout.setLayoutParams(layoutParams);
        }
        frameLayout.addView(view);
        frameLayout.addView(imageView);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams2.gravity = 5;
        layoutParams2.width = this.f2072c.m36042a(this.f2071b.m36035b());
        layoutParams2.height = this.f2072c.m36042a(this.f2071b.m36036a());
        imageView.setMinimumWidth(layoutParams2.width);
        imageView.setMinimumHeight(layoutParams2.height);
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setElevation(1000.0f);
            imageView.setOutlineProvider(null);
        }
        this.f2070a.put(frameLayout, new WeakReference<>(imageView));
        return frameLayout;
    }

    @Nullable
    /* renamed from: b */
    public ImageView m35983b(@NonNull View view) {
        WeakReference<ImageView> weakReference = this.f2070a.get(view);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Nullable
    /* renamed from: c */
    public View m35982c(@NonNull View view) {
        if (m35983b(view) == null) {
            return null;
        }
        return ((ViewGroup) view).getChildAt(0);
    }
}
