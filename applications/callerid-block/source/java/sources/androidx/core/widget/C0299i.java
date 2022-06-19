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
import d.h.k.c;
import d.h.l.h;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/i.class */
public final class C0299i {

    /* renamed from: a */
    private static Field f1742a;

    /* renamed from: b */
    private static boolean f1743b;

    /* renamed from: c */
    private static Field f1744c;

    /* renamed from: d */
    private static boolean f1745d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/i$a.class */
    public static class ActionMode$CallbackC0300a implements ActionMode.Callback {

        /* renamed from: a */
        private final ActionMode.Callback f1746a;

        /* renamed from: b */
        private final TextView f1747b;

        /* renamed from: c */
        private Class<?> f1748c;

        /* renamed from: d */
        private Method f1749d;

        /* renamed from: e */
        private boolean f1750e;

        /* renamed from: f */
        private boolean f1751f = false;

        ActionMode$CallbackC0300a(ActionMode.Callback callback, TextView textView) {
            this.f1746a = callback;
            this.f1747b = textView;
        }

        /* renamed from: a */
        private Intent m13385a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        /* renamed from: b */
        private Intent m13384b(ResolveInfo resolveInfo, TextView textView) {
            Intent putExtra = m13385a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m13382d(textView));
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            return putExtra.setClassName(activityInfo.packageName, activityInfo.name);
        }

        /* renamed from: c */
        private List<ResolveInfo> m13383c(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m13385a(), 0)) {
                if (m13381e(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        /* renamed from: d */
        private boolean m13382d(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        /* renamed from: e */
        private boolean m13381e(ResolveInfo resolveInfo, Context context) {
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
        private void m13380f(Menu menu) {
            Context context = this.f1747b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f1751f) {
                this.f1751f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f1748c = cls;
                    this.f1749d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f1750e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f1748c = null;
                    this.f1749d = null;
                    this.f1750e = false;
                }
            }
            try {
                Method declaredMethod = (!this.f1750e || !this.f1748c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f1749d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> m13383c = m13383c(context, packageManager);
                for (int i = 0; i < m13383c.size(); i++) {
                    ResolveInfo resolveInfo = m13383c.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m13384b(resolveInfo, this.f1747b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            }
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f1746a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f1746a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f1746a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m13380f(menu);
            return this.f1746a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    public static Drawable[] m13404a(TextView textView) {
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
    public static int m13403b(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* renamed from: c */
    public static int m13402c(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* renamed from: d */
    public static int m13401d(TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f1745d) {
            f1744c = m13397h("mMaxMode");
            f1745d = true;
        }
        Field field = f1744c;
        if (field == null || m13396i(field, textView) != 1) {
            return -1;
        }
        if (!f1743b) {
            f1742a = m13397h("mMaximum");
            f1743b = true;
        }
        Field field2 = f1742a;
        if (field2 == null) {
            return -1;
        }
        return m13396i(field2, textView);
    }

    /* renamed from: e */
    private static int m13400e(TextDirectionHeuristic textDirectionHeuristic) {
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
    private static TextDirectionHeuristic m13399f(TextView textView) {
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
    public static c.a m13398g(TextView textView) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return new c.a(textView.getTextMetricsParams());
        }
        c.a.a aVar = new c.a.a(new TextPaint(textView.getPaint()));
        if (i >= 23) {
            aVar.b(textView.getBreakStrategy());
            aVar.c(textView.getHyphenationFrequency());
        }
        if (i >= 18) {
            aVar.d(m13399f(textView));
        }
        return aVar.a();
    }

    /* renamed from: h */
    private static Field m13397h(String str) {
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
    private static int m13396i(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException e) {
            Log.d("TextViewCompat", "Could not retrieve value of " + field.getName() + " field.");
            return -1;
        }
    }

    /* renamed from: j */
    public static void m13395j(TextView textView, ColorStateList colorStateList) {
        h.c(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (!(textView instanceof AbstractC0302k)) {
        } else {
            ((AbstractC0302k) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: k */
    public static void m13394k(TextView textView, PorterDuff.Mode mode) {
        h.c(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (!(textView instanceof AbstractC0302k)) {
        } else {
            ((AbstractC0302k) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* renamed from: l */
    public static void m13393l(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
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
    public static void m13392m(TextView textView, int i) {
        h.b(i);
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
    public static void m13391n(TextView textView, int i) {
        h.b(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: o */
    public static void m13390o(TextView textView, int i) {
        h.b(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    /* renamed from: p */
    public static void m13389p(TextView textView, c cVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            cVar = cVar.b();
        } else if (!m13398g(textView).a(cVar.a())) {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
        textView.setText((CharSequence) cVar);
    }

    /* renamed from: q */
    public static void m13388q(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: r */
    public static void m13387r(TextView textView, c.a aVar) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18) {
            textView.setTextDirection(m13400e(aVar.d()));
        }
        if (i >= 23) {
            textView.getPaint().set(aVar.e());
            textView.setBreakStrategy(aVar.b());
            textView.setHyphenationFrequency(aVar.c());
            return;
        }
        float textScaleX = aVar.e().getTextScaleX();
        textView.getPaint().set(aVar.e());
        if (textScaleX == textView.getTextScaleX()) {
            textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
        }
        textView.setTextScaleX(textScaleX);
    }

    /* renamed from: s */
    public static ActionMode.Callback m13386s(TextView textView, ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof ActionMode$CallbackC0300a)) ? callback : new ActionMode$CallbackC0300a(callback, textView);
    }
}
