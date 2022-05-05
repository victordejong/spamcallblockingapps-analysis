package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/core/view/LayoutInflaterCompat.class */
public final class LayoutInflaterCompat {

    /* renamed from: a */
    private static Field f3260a;

    /* renamed from: b */
    private static boolean f3261b;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/LayoutInflaterCompat$Factory2Wrapper.class */
    static class Factory2Wrapper implements LayoutInflater.Factory2 {

        /* renamed from: f */
        final LayoutInflaterFactory f3262f;

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f3262f.onCreateView(view, str, context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f3262f.onCreateView(null, str, context, attributeSet);
        }

        @NonNull
        public String toString() {
            return Factory2Wrapper.class.getName() + "{" + this.f3262f + "}";
        }
    }

    private LayoutInflaterCompat() {
    }

    /* renamed from: a */
    private static void m19297a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f3261b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f3260a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f3261b = true;
        }
        Field field = f3260a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    /* renamed from: b */
    public static void m19296b(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                m19297a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                m19297a(layoutInflater, factory2);
            }
        }
    }
}
