package androidx.core.widget;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
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
import androidx.core.p021e.C0483c;
import androidx.core.p022f.C0502e;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/i.class */
public final class C0605i {

    /* renamed from: a */
    private static Field f2035a;

    /* renamed from: b */
    private static boolean f2036b;

    /* renamed from: c */
    private static Field f2037c;

    /* renamed from: d */
    private static boolean f2038d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/i$a.class */
    public static class ActionMode$CallbackC0606a implements ActionMode.Callback {

        /* renamed from: a */
        private final ActionMode.Callback f2039a;

        /* renamed from: b */
        private final TextView f2040b;

        /* renamed from: c */
        private Class f2041c;

        /* renamed from: d */
        private Method f2042d;

        /* renamed from: e */
        private boolean f2043e;

        /* renamed from: f */
        private boolean f2044f = false;

        ActionMode$CallbackC0606a(ActionMode.Callback callback, TextView textView) {
            this.f2039a = callback;
            this.f2040b = textView;
        }

        /* renamed from: a */
        private Intent m5962a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        /* renamed from: a */
        private Intent m5959a(ResolveInfo resolveInfo, TextView textView) {
            return m5962a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m5957a(textView)).setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }

        /* renamed from: a */
        private List<ResolveInfo> m5961a(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (!(context instanceof Activity)) {
                return arrayList;
            }
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m5962a(), 0)) {
                if (m5960a(resolveInfo, context)) {
                    arrayList.add(resolveInfo);
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        private void m5958a(Menu menu) {
            Context context = this.f2040b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f2044f) {
                this.f2044f = true;
                try {
                    this.f2041c = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f2042d = this.f2041c.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f2043e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f2041c = null;
                    this.f2042d = null;
                    this.f2043e = false;
                }
            }
            try {
                Method declaredMethod = (!this.f2043e || !this.f2041c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f2042d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> m5961a = m5961a(context, packageManager);
                for (int i = 0; i < m5961a.size(); i++) {
                    ResolveInfo resolveInfo = m5961a.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m5959a(resolveInfo, this.f2040b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            }
        }

        /* renamed from: a */
        private boolean m5960a(ResolveInfo resolveInfo, Context context) {
            if (context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            if (!resolveInfo.activityInfo.exported) {
                return false;
            }
            boolean z = true;
            if (resolveInfo.activityInfo.permission != null) {
                z = context.checkSelfPermission(resolveInfo.activityInfo.permission) == 0;
            }
            return z;
        }

        /* renamed from: a */
        private boolean m5957a(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f2039a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f2039a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f2039a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m5958a(menu);
            return this.f2039a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    private static int m5981a(TextDirectionHeuristic textDirectionHeuristic) {
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

    /* renamed from: a */
    public static int m5980a(TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f2038d) {
            f2037c = m5972a("mMaxMode");
            f2038d = true;
        }
        Field field = f2037c;
        if (field == null || m5971a(field, textView) != 1) {
            return -1;
        }
        if (!f2036b) {
            f2035a = m5972a("mMaximum");
            f2036b = true;
        }
        Field field2 = f2035a;
        if (field2 == null) {
            return -1;
        }
        return m5971a(field2, textView);
    }

    /* renamed from: a */
    private static int m5971a(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException e) {
            Log.d("TextViewCompat", "Could not retrieve value of " + field.getName() + " field.");
            return -1;
        }
    }

    /* renamed from: a */
    public static ActionMode.Callback m5975a(TextView textView, ActionMode.Callback callback) {
        return (Build.VERSION.SDK_INT < 26 || Build.VERSION.SDK_INT > 27 || (callback instanceof ActionMode$CallbackC0606a)) ? callback : new ActionMode$CallbackC0606a(callback, textView);
    }

    /* renamed from: a */
    private static Field m5972a(String str) {
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

    /* renamed from: a */
    public static void m5979a(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: a */
    public static void m5978a(TextView textView, ColorStateList colorStateList) {
        C0502e.m6462a(textView);
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (!(textView instanceof AbstractC0608k)) {
        } else {
            ((AbstractC0608k) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m5977a(TextView textView, PorterDuff.Mode mode) {
        C0502e.m6462a(textView);
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (!(textView instanceof AbstractC0608k)) {
        } else {
            ((AbstractC0608k) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m5976a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else if (Build.VERSION.SDK_INT < 17) {
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

    /* renamed from: a */
    public static void m5974a(TextView textView, C0483c.C0484a c0484a) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setTextDirection(m5981a(c0484a.m6485b()));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            textView.getPaint().set(c0484a.m6487a());
            textView.setBreakStrategy(c0484a.m6484c());
            textView.setHyphenationFrequency(c0484a.m6483d());
            return;
        }
        float textScaleX = c0484a.m6487a().getTextScaleX();
        textView.getPaint().set(c0484a.m6487a());
        if (textScaleX == textView.getTextScaleX()) {
            textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
        }
        textView.setTextScaleX(textScaleX);
    }

    /* renamed from: a */
    public static void m5973a(TextView textView, C0483c c0483c) {
        if (m5964e(textView).m6486a(c0483c.m6488a())) {
            textView.setText(c0483c);
            return;
        }
        throw new IllegalArgumentException("Given text can not be applied to TextView.");
    }

    /* renamed from: b */
    public static void m5969b(TextView textView, int i) {
        C0502e.m6463a(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i <= Math.abs(i2)) {
            return;
        }
        textView.setPadding(textView.getPaddingLeft(), i - (-i2), textView.getPaddingRight(), textView.getPaddingBottom());
    }

    /* renamed from: b */
    public static Drawable[] m5970b(TextView textView) {
        if (Build.VERSION.SDK_INT >= 18) {
            return textView.getCompoundDrawablesRelative();
        }
        if (Build.VERSION.SDK_INT < 17) {
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

    /* renamed from: c */
    public static int m5968c(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* renamed from: c */
    public static void m5967c(TextView textView, int i) {
        C0502e.m6463a(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: d */
    public static int m5966d(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* renamed from: d */
    public static void m5965d(TextView textView, int i) {
        C0502e.m6463a(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    /* renamed from: e */
    public static C0483c.C0484a m5964e(TextView textView) {
        if (Build.VERSION.SDK_INT >= 28) {
            return new C0483c.C0484a(textView.getTextMetricsParams());
        }
        C0483c.C0484a.C0485a c0485a = new C0483c.C0484a.C0485a(new TextPaint(textView.getPaint()));
        if (Build.VERSION.SDK_INT >= 23) {
            c0485a.m6481a(textView.getBreakStrategy());
            c0485a.m6479b(textView.getHyphenationFrequency());
        }
        if (Build.VERSION.SDK_INT >= 18) {
            c0485a.m6480a(m5963f(textView));
        }
        return c0485a.m6482a();
    }

    /* renamed from: f */
    private static TextDirectionHeuristic m5963f(TextView textView) {
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
}
