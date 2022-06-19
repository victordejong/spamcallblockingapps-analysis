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
import androidx.core.p035d.C0815c;
import androidx.core.p036e.C0833d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* renamed from: androidx.core.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public final class C0959h {

    /* renamed from: a */
    private static Field f3868a;

    /* renamed from: b */
    private static boolean f3869b;

    /* renamed from: c */
    private static Field f3870c;

    /* renamed from: d */
    private static boolean f3871d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.widget.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/h$a.class */
    public static final class ActionMode$CallbackC0960a implements ActionMode.Callback {

        /* renamed from: a */
        private final ActionMode.Callback f3872a;

        /* renamed from: b */
        private final TextView f3873b;

        /* renamed from: c */
        private Class<?> f3874c;

        /* renamed from: d */
        private Method f3875d;

        /* renamed from: e */
        private boolean f3876e;

        /* renamed from: f */
        private boolean f3877f = false;

        ActionMode$CallbackC0960a(ActionMode.Callback callback, TextView textView) {
            this.f3872a = callback;
            this.f3873b = textView;
        }

        /* renamed from: a */
        private static Intent m43952a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f3872a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f3872a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.f3872a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            Context context = this.f3873b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f3877f) {
                this.f3877f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f3874c = cls;
                    this.f3875d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f3876e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f3874c = null;
                    this.f3875d = null;
                    this.f3876e = false;
                }
            }
            try {
                Method declaredMethod = (!this.f3876e || !this.f3874c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f3875d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                ArrayList arrayList = new ArrayList();
                if (context instanceof Activity) {
                    for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m43952a(), 0)) {
                        if (context.getPackageName().equals(resolveInfo.activityInfo.packageName) || (resolveInfo.activityInfo.exported && (resolveInfo.activityInfo.permission == null || context.checkSelfPermission(resolveInfo.activityInfo.permission) == 0))) {
                            arrayList.add(resolveInfo);
                        }
                    }
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    ResolveInfo resolveInfo2 = (ResolveInfo) arrayList.get(i);
                    MenuItem add = menu.add(0, 0, i + 100, resolveInfo2.loadLabel(packageManager));
                    TextView textView = this.f3873b;
                    add.setIntent(m43952a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !((textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled())).setClassName(resolveInfo2.activityInfo.packageName, resolveInfo2.activityInfo.name)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            }
            return this.f3872a.onPrepareActionMode(actionMode, menu);
        }
    }

    private C0959h() {
    }

    /* renamed from: a */
    public static int m43966a(TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f3871d) {
            f3870c = m43959a("mMaxMode");
            f3871d = true;
        }
        Field field = f3870c;
        if (field == null || m43958a(field, textView) != 1) {
            return -1;
        }
        if (!f3869b) {
            f3868a = m43959a("mMaximum");
            f3869b = true;
        }
        Field field2 = f3868a;
        if (field2 == null) {
            return -1;
        }
        return m43958a(field2, textView);
    }

    /* renamed from: a */
    private static int m43958a(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException e) {
            StringBuilder sb = new StringBuilder("Could not retrieve value of ");
            sb.append(field.getName());
            sb.append(" field.");
            return -1;
        }
    }

    /* renamed from: a */
    public static ActionMode.Callback m43961a(TextView textView, ActionMode.Callback callback) {
        return (Build.VERSION.SDK_INT < 26 || Build.VERSION.SDK_INT > 27 || (callback instanceof ActionMode$CallbackC0960a)) ? callback : new ActionMode$CallbackC0960a(callback, textView);
    }

    /* renamed from: a */
    private static Field m43959a(String str) {
        Field field;
        try {
            field = TextView.class.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            field = null;
        }
        try {
            field.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            Log.e("TextViewCompat", "Could not retrieve " + str + " field.");
            return field;
        }
        return field;
    }

    /* renamed from: a */
    public static void m43965a(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: a */
    public static void m43964a(TextView textView, ColorStateList colorStateList) {
        C0833d.m44410a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (!(textView instanceof AbstractC0962j)) {
        } else {
            ((AbstractC0962j) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m43963a(TextView textView, PorterDuff.Mode mode) {
        C0833d.m44410a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (!(textView instanceof AbstractC0962j)) {
        } else {
            ((AbstractC0962j) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m43962a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
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
    public static void m43960a(TextView textView, C0815c c0815c) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(c0815c.m44422a());
        } else if (!m43955c(textView).m44421a(c0815c.f3530a)) {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        } else {
            textView.setText(c0815c);
        }
    }

    /* renamed from: b */
    public static void m43956b(TextView textView, int i) {
        C0833d.m44411a(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i <= Math.abs(i2)) {
            return;
        }
        textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
    }

    /* renamed from: b */
    public static Drawable[] m43957b(TextView textView) {
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
    private static C0815c.C0816a m43955c(TextView textView) {
        TextDirectionHeuristic textDirectionHeuristic;
        if (Build.VERSION.SDK_INT >= 28) {
            return new C0815c.C0816a(textView.getTextMetricsParams());
        }
        C0815c.C0816a.C0817a c0817a = new C0815c.C0816a.C0817a(new TextPaint(textView.getPaint()));
        if (Build.VERSION.SDK_INT >= 23) {
            c0817a.f3541c = textView.getBreakStrategy();
            c0817a.f3542d = textView.getHyphenationFrequency();
        }
        if (Build.VERSION.SDK_INT >= 18) {
            if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            } else {
                boolean z = false;
                if (Build.VERSION.SDK_INT < 28 || (textView.getInputType() & 15) != 3) {
                    if (textView.getLayoutDirection() == 1) {
                        z = true;
                    }
                    switch (textView.getTextDirection()) {
                        case 2:
                            textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                            break;
                        case 3:
                            textDirectionHeuristic = TextDirectionHeuristics.LTR;
                            break;
                        case 4:
                            textDirectionHeuristic = TextDirectionHeuristics.RTL;
                            break;
                        case 5:
                            textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                            break;
                        case 6:
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                            break;
                        default:
                            if (!z) {
                                textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                                break;
                            }
                        case 7:
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                    }
                } else {
                    byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
                    textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                }
            }
            c0817a.f3540b = textDirectionHeuristic;
        }
        return new C0815c.C0816a(c0817a.f3539a, c0817a.f3540b, c0817a.f3541c, c0817a.f3542d);
    }

    /* renamed from: c */
    public static void m43954c(TextView textView, int i) {
        C0833d.m44411a(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: d */
    public static void m43953d(TextView textView, int i) {
        C0833d.m44411a(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }
}
