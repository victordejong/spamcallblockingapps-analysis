package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import gogolook.callgogolook2.R$string;
import javax.annotation.Nullable;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.b */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/b.class */
public class C12143b {
    /* renamed from: a */
    public static String m7030a(Resources resources, String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            m7031a(resources, c, sb);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m7031a(Resources resources, char c, StringBuilder sb) {
        switch (c) {
            case '0':
                sb.append(resources.getString(R$string.content_description_for_number_zero));
                sb.append(" ");
                return;
            case '1':
                sb.append(resources.getString(R$string.content_description_for_number_one));
                sb.append(" ");
                return;
            case '2':
                sb.append(resources.getString(R$string.content_description_for_number_two));
                sb.append(" ");
                return;
            case '3':
                sb.append(resources.getString(R$string.content_description_for_number_three));
                sb.append(" ");
                return;
            case '4':
                sb.append(resources.getString(R$string.content_description_for_number_four));
                sb.append(" ");
                return;
            case '5':
                sb.append(resources.getString(R$string.content_description_for_number_five));
                sb.append(" ");
                return;
            case '6':
                sb.append(resources.getString(R$string.content_description_for_number_six));
                sb.append(" ");
                return;
            case '7':
                sb.append(resources.getString(R$string.content_description_for_number_seven));
                sb.append(" ");
                return;
            case '8':
                sb.append(resources.getString(R$string.content_description_for_number_eight));
                sb.append(" ");
                return;
            case '9':
                sb.append(resources.getString(R$string.content_description_for_number_nine));
                sb.append(" ");
                return;
            default:
                sb.append(c);
                return;
        }
    }

    /* renamed from: a */
    public static void m7028a(View view, @Nullable AccessibilityManager accessibilityManager, int i) {
        m7027a(view, accessibilityManager, AbstractC11516a.m9413n().mo9412a().getResources().getString(i));
    }

    /* renamed from: a */
    public static void m7027a(View view, @Nullable AccessibilityManager accessibilityManager, CharSequence charSequence) {
        Context applicationContext = view.getContext().getApplicationContext();
        AccessibilityManager accessibilityManager2 = accessibilityManager;
        if (accessibilityManager == null) {
            accessibilityManager2 = (AccessibilityManager) applicationContext.getSystemService("accessibility");
        }
        if (accessibilityManager2.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
            obtain.getText().add(charSequence);
            obtain.setEnabled(view.isEnabled());
            obtain.setClassName(view.getClass().getName());
            obtain.setPackageName(applicationContext.getPackageName());
            AccessibilityEventCompat.asRecord(obtain).setSource(view);
            accessibilityManager2.sendAccessibilityEvent(obtain);
        }
    }

    /* renamed from: a */
    public static boolean m7032a(Context context) {
        return ((AccessibilityManager) context.getSystemService("accessibility")).isTouchExplorationEnabled();
    }

    /* renamed from: a */
    public static boolean m7029a(View view) {
        boolean z = true;
        if (1 != view.getLayoutDirection()) {
            z = false;
        }
        return z;
    }
}
