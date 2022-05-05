package android.support.v4.view;

import android.content.Context;
import android.support.v4.view.g;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/h.class */
final class h {

    /* renamed from: a  reason: collision with root package name */
    private static Field f231a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f232b;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/h$a.class */
    static final class a extends g.a implements LayoutInflater.Factory2 {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(i iVar) {
            super(iVar);
        }

        @Override // android.view.LayoutInflater.Factory2
        public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f230a.a(view, str, context, attributeSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f232b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f231a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f232b = true;
        }
        if (f231a != null) {
            try {
                f231a.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }
}
