package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.Editable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.Log;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import p020b.p041h.p048j.C1578c;
import p020b.p041h.p049k.C1597h;
/* renamed from: androidx.core.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/k.class */
public final class C0649k {

    /* renamed from: a */
    private static Field f3105a;

    /* renamed from: b */
    private static boolean f3106b;

    /* renamed from: c */
    private static Field f3107c;

    /* renamed from: d */
    private static boolean f3108d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/k$a.class */
    public static class ActionMode$CallbackC0650a implements ActionMode.Callback {

        /* renamed from: a */
        private final ActionMode.Callback f3109a;

        /* renamed from: b */
        private final TextView f3110b;

        /* renamed from: c */
        private Class<?> f3111c;

        /* renamed from: d */
        private Method f3112d;

        /* renamed from: e */
        private boolean f3113e;

        /* renamed from: f */
        private boolean f3114f = false;

        ActionMode$CallbackC0650a(ActionMode.Callback callback, TextView textView) {
            this.f3109a = callback;
            this.f3110b = textView;
        }

        /* renamed from: a */
        private Intent m33071a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        /* renamed from: b */
        private Intent m33070b(ResolveInfo resolveInfo, TextView textView) {
            Intent putExtra = m33071a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m33068d(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return putExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        /* renamed from: c */
        private List<ResolveInfo> m33069c(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m33071a(), 0)) {
                if (m33067e(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        /* renamed from: d */
        private boolean m33068d(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        /* renamed from: e */
        private boolean m33067e(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!activityInfo.exported) {
                return false;
            }
            String str = activityInfo.permission;
            boolean z = true;
            if (str != null) {
                z = context.checkSelfPermission(str) == 0;
            }
            return z;
        }

        /* renamed from: f */
        private void m33066f(Menu menu) {
            Context context = this.f3110b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f3114f) {
                this.f3114f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f3111c = cls;
                    this.f3112d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f3113e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f3111c = null;
                    this.f3112d = null;
                    this.f3113e = false;
                }
            }
            try {
                Method declaredMethod = (!this.f3113e || !this.f3111c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f3112d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> m33069c = m33069c(context, packageManager);
                for (int i = 0; i < m33069c.size(); i++) {
                    ResolveInfo resolveInfo = m33069c.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m33070b(resolveInfo, this.f3110b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f3109a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f3109a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f3109a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m33066f(menu);
            return this.f3109a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    public static Drawable[] m33090a(TextView textView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            return textView.getCompoundDrawablesRelative();
        }
        if (i < 17) {
            return textView.getCompoundDrawables();
        }
        boolean z = true;
        if (textView.getLayoutDirection() != 1) {
            z = false;
        }
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        if (z) {
            Drawable drawable = compoundDrawables[2];
            Drawable drawable2 = compoundDrawables[0];
            compoundDrawables[0] = drawable;
            compoundDrawables[2] = drawable2;
        }
        return compoundDrawables;
    }

    /* renamed from: b */
    public static int m33089b(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* renamed from: c */
    public static int m33088c(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* renamed from: d */
    public static int m33087d(TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f3108d) {
            f3107c = m33083h("mMaxMode");
            f3108d = true;
        }
        Field field = f3107c;
        if (field == null || m33082i(field, textView) != 1) {
            return -1;
        }
        if (!f3106b) {
            f3105a = m33083h("mMaximum");
            f3106b = true;
        }
        Field field2 = f3105a;
        if (field2 == null) {
            return -1;
        }
        return m33082i(field2, textView);
    }

    /* renamed from: e */
    private static int m33086e(TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }

    /* renamed from: f */
    private static TextDirectionHeuristic m33085f(TextView textView) {
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            return TextDirectionHeuristics.LTR;
        }
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28 && (textView.getInputType() & 15) == 3) {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            return (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        if (textView.getLayoutDirection() == 1) {
            z = true;
        }
        switch (textView.getTextDirection()) {
            case 2:
                return TextDirectionHeuristics.ANYRTL_LTR;
            case 3:
                return TextDirectionHeuristics.LTR;
            case 4:
                return TextDirectionHeuristics.RTL;
            case 5:
                return TextDirectionHeuristics.LOCALE;
            case 6:
                return TextDirectionHeuristics.FIRSTSTRONG_LTR;
            case 7:
                return TextDirectionHeuristics.FIRSTSTRONG_RTL;
            default:
                return z ? TextDirectionHeuristics.FIRSTSTRONG_RTL : TextDirectionHeuristics.FIRSTSTRONG_LTR;
        }
    }

    /* renamed from: g */
    public static C1578c.C1579a m33084g(TextView textView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new C1578c.C1579a(textView.getTextMetricsParams());
        }
        C1578c.C1579a.C1580a c1580a = new C1578c.C1579a.C1580a(new TextPaint(textView.getPaint()));
        if (i >= 23) {
            c1580a.m29681b(textView.getBreakStrategy());
            c1580a.m29680c(textView.getHyphenationFrequency());
        }
        if (i >= 18) {
            c1580a.m29679d(m33085f(textView));
        }
        return c1580a.m29682a();
    }

    /* renamed from: h */
    private static Field m33083h(String str) {
        Field field = null;
        try {
            Field declaredField = TextView.class.getDeclaredField(str);
            field = declaredField;
            declaredField.setAccessible(true);
            field = declaredField;
        } catch (NoSuchFieldException e) {
            Log.e("TextViewCompat", "Could not retrieve " + str + " field.");
        }
        return field;
    }

    /* renamed from: i */
    private static int m33082i(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException e) {
            Log.d("TextViewCompat", "Could not retrieve value of " + field.getName() + " field.");
            return -1;
        }
    }

    /* renamed from: j */
    public static void m33081j(TextView textView, ColorStateList colorStateList) {
        C1597h.m29659e(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (!(textView instanceof AbstractC0655n)) {
        } else {
            ((AbstractC0655n) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: k */
    public static void m33080k(TextView textView, PorterDuff.Mode mode) {
        C1597h.m29659e(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (!(textView instanceof AbstractC0655n)) {
        } else {
            ((AbstractC0655n) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* renamed from: l */
    public static void m33079l(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else if (i < 17) {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            boolean z = true;
            if (textView.getLayoutDirection() != 1) {
                z = false;
            }
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
        }
    }

    /* renamed from: m */
    public static void m33078m(TextView textView, int i) {
        C1597h.m29661c(i);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i3 = (i2 < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i <= Math.abs(i3)) {
            return;
        }
        textView.setPadding(textView.getPaddingLeft(), i + i3, textView.getPaddingRight(), textView.getPaddingBottom());
    }

    /* renamed from: n */
    public static void m33077n(TextView textView, int i) {
        C1597h.m29661c(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: o */
    public static void m33076o(TextView textView, int i) {
        C1597h.m29661c(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    /* renamed from: p */
    public static void m33075p(TextView textView, C1578c c1578c) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(c1578c.m29688b());
        } else if (!m33084g(textView).m29687a(c1578c.m29689a())) {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        } else {
            textView.setText(c1578c);
        }
    }

    /* renamed from: q */
    public static void m33074q(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: r */
    public static void m33073r(TextView textView, C1578c.C1579a c1579a) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            textView.setTextDirection(m33086e(c1579a.m29684d()));
        }
        if (i >= 23) {
            textView.getPaint().set(c1579a.m29683e());
            textView.setBreakStrategy(c1579a.m29686b());
            textView.setHyphenationFrequency(c1579a.m29685c());
            return;
        }
        float textScaleX = c1579a.m29683e().getTextScaleX();
        textView.getPaint().set(c1579a.m29683e());
        if (textScaleX == textView.getTextScaleX()) {
            textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
        }
        textView.setTextScaleX(textScaleX);
    }

    /* renamed from: s */
    public static ActionMode.Callback m33072s(TextView textView, ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof ActionMode$CallbackC0650a) || callback == null) ? callback : new ActionMode$CallbackC0650a(callback, textView);
    }
}
