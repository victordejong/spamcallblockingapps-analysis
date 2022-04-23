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
import androidx.core.d.c;
import androidx.core.e.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static Field f2066a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2067b;

    /* renamed from: c  reason: collision with root package name */
    private static Field f2068c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f2069d;

    /* loaded from: classes-dex2jar.jar:androidx/core/widget/h$a.class */
    static final class a implements ActionMode.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final ActionMode.Callback f2070a;

        /* renamed from: b  reason: collision with root package name */
        private final TextView f2071b;

        /* renamed from: c  reason: collision with root package name */
        private Class<?> f2072c;

        /* renamed from: d  reason: collision with root package name */
        private Method f2073d;
        private boolean e;
        private boolean f = false;

        a(ActionMode.Callback callback, TextView textView) {
            this.f2070a = callback;
            this.f2071b = textView;
        }

        private static Intent a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f2070a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f2070a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.f2070a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            Context context = this.f2071b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f) {
                this.f = true;
                try {
                    Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f2072c = cls;
                    this.f2073d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f2072c = null;
                    this.f2073d = null;
                    this.e = false;
                }
            }
            try {
                Method declaredMethod = (!this.e || !this.f2072c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f2073d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                ArrayList arrayList = new ArrayList();
                if (context instanceof Activity) {
                    for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(a(), 0)) {
                        if (context.getPackageName().equals(resolveInfo.activityInfo.packageName) || (resolveInfo.activityInfo.exported && (resolveInfo.activityInfo.permission == null || context.checkSelfPermission(resolveInfo.activityInfo.permission) == 0))) {
                            arrayList.add(resolveInfo);
                        }
                    }
                }
                for (int i = 0; i < arrayList.size(); i++) {
                    ResolveInfo resolveInfo2 = (ResolveInfo) arrayList.get(i);
                    MenuItem add = menu.add(0, 0, i + 100, resolveInfo2.loadLabel(packageManager));
                    TextView textView = this.f2071b;
                    add.setIntent(a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !((textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled())).setClassName(resolveInfo2.activityInfo.packageName, resolveInfo2.activityInfo.name)).setShowAsAction(1);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            }
            return this.f2070a.onPrepareActionMode(actionMode, menu);
        }
    }

    private h() {
    }

    public static int a(TextView textView) {
        if (Build.VERSION.SDK_INT >= 16) {
            return textView.getMaxLines();
        }
        if (!f2069d) {
            f2068c = a("mMaxMode");
            f2069d = true;
        }
        Field field = f2068c;
        if (field == null || a(field, textView) != 1) {
            return -1;
        }
        if (!f2067b) {
            f2066a = a("mMaximum");
            f2067b = true;
        }
        Field field2 = f2066a;
        if (field2 != null) {
            return a(field2, textView);
        }
        return -1;
    }

    private static int a(Field field, TextView textView) {
        try {
            return field.getInt(textView);
        } catch (IllegalAccessException e) {
            StringBuilder sb = new StringBuilder("Could not retrieve value of ");
            sb.append(field.getName());
            sb.append(" field.");
            return -1;
        }
    }

    public static ActionMode.Callback a(TextView textView, ActionMode.Callback callback) {
        return (Build.VERSION.SDK_INT < 26 || Build.VERSION.SDK_INT > 27 || (callback instanceof a)) ? callback : new a(callback, textView);
    }

    private static Field a(String str) {
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

    public static void a(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    public static void a(TextView textView, ColorStateList colorStateList) {
        d.a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (textView instanceof j) {
            ((j) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    public static void a(TextView textView, PorterDuff.Mode mode) {
        d.a(textView);
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (textView instanceof j) {
            ((j) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    public static void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else if (Build.VERSION.SDK_INT >= 17) {
            boolean z = true;
            if (textView.getLayoutDirection() != 1) {
                z = false;
            }
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
        } else {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        }
    }

    public static void a(TextView textView, c cVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            textView.setText(cVar.a());
        } else if (c(textView).a(cVar.f1868a)) {
            textView.setText(cVar);
        } else {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
    }

    public static void b(TextView textView, int i) {
        d.a(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
        }
    }

    public static Drawable[] b(TextView textView) {
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

    private static c.a c(TextView textView) {
        TextDirectionHeuristic textDirectionHeuristic;
        if (Build.VERSION.SDK_INT >= 28) {
            return new c.a(textView.getTextMetricsParams());
        }
        c.a.C0047a aVar = new c.a.C0047a(new TextPaint(textView.getPaint()));
        if (Build.VERSION.SDK_INT >= 23) {
            aVar.f1876c = textView.getBreakStrategy();
            aVar.f1877d = textView.getHyphenationFrequency();
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
            aVar.f1875b = textDirectionHeuristic;
        }
        return new c.a(aVar.f1874a, aVar.f1875b, aVar.f1876c, aVar.f1877d);
    }

    public static void c(TextView textView, int i) {
        d.a(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    public static void d(TextView textView, int i) {
        d.a(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }
}
