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
import androidx.core.p024f.C0507c;
import androidx.core.p025g.C0527f;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.core.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/i.class */
public final class C0628i {

    /* renamed from: a */
    private static Field f2192a;

    /* renamed from: b */
    private static boolean f2193b;

    /* renamed from: c */
    private static Field f2194c;

    /* renamed from: d */
    private static boolean f2195d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.widget.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/i$a.class */
    public static class ActionMode$CallbackC0629a implements ActionMode.Callback {

        /* renamed from: a */
        private final ActionMode.Callback f2196a;

        /* renamed from: b */
        private final TextView f2197b;

        /* renamed from: c */
        private Class f2198c;

        /* renamed from: d */
        private Method f2199d;

        /* renamed from: e */
        private boolean f2200e;

        /* renamed from: f */
        private boolean f2201f = false;

        ActionMode$CallbackC0629a(ActionMode.Callback callback, TextView textView) {
            this.f2196a = callback;
            this.f2197b = textView;
        }

        /* renamed from: a */
        private Intent m20127a() {
            return new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain");
        }

        /* renamed from: a */
        private Intent m20124a(ResolveInfo resolveInfo, TextView textView) {
            return m20127a().putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !m20122a(textView)).setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
        }

        /* renamed from: a */
        private List<ResolveInfo> m20126a(Context context, PackageManager packageManager) {
            ArrayList arrayList = new ArrayList();
            if (context instanceof Activity) {
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(m20127a(), 0)) {
                    if (m20125a(resolveInfo, context)) {
                        arrayList.add(resolveInfo);
                    }
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        private void m20123a(Menu menu) {
            Context context = this.f2197b.getContext();
            PackageManager packageManager = context.getPackageManager();
            if (!this.f2201f) {
                this.f2201f = true;
                try {
                    this.f2198c = Class.forName("com.android.internal.view.menu.MenuBuilder");
                    this.f2199d = this.f2198c.getDeclaredMethod("removeItemAt", Integer.TYPE);
                    this.f2200e = true;
                } catch (ClassNotFoundException | NoSuchMethodException e) {
                    this.f2198c = null;
                    this.f2199d = null;
                    this.f2200e = false;
                }
            }
            try {
                Method declaredMethod = (!this.f2200e || !this.f2198c.isInstance(menu)) ? menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE) : this.f2199d;
                for (int size = menu.size() - 1; size >= 0; size--) {
                    MenuItem item = menu.getItem(size);
                    if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                        declaredMethod.invoke(menu, Integer.valueOf(size));
                    }
                }
                List<ResolveInfo> m20126a = m20126a(context, packageManager);
                for (int i = 0; i < m20126a.size(); i++) {
                    ResolveInfo resolveInfo = m20126a.get(i);
                    menu.add(0, 0, i + 100, resolveInfo.loadLabel(packageManager)).setIntent(m20124a(resolveInfo, this.f2197b)).setShowAsAction(1);
                }
            } catch (IllegalAccessException e2) {
            } catch (NoSuchMethodException e3) {
            } catch (InvocationTargetException e4) {
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
            if (r5.checkSelfPermission(r4.activityInfo.permission) == 0) goto L13;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean m20125a(android.content.pm.ResolveInfo r4, android.content.Context r5) {
            /*
                r3 = this;
                r0 = 0
                r6 = r0
                r0 = r5
                java.lang.String r0 = r0.getPackageName()
                r1 = r4
                android.content.pm.ActivityInfo r1 = r1.activityInfo
                java.lang.String r1 = r1.packageName
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L19
                r0 = 1
                r7 = r0
            L16:
                r0 = r7
                return r0
            L19:
                r0 = r6
                r7 = r0
                r0 = r4
                android.content.pm.ActivityInfo r0 = r0.activityInfo
                boolean r0 = r0.exported
                if (r0 == 0) goto L16
                r0 = r4
                android.content.pm.ActivityInfo r0 = r0.activityInfo
                java.lang.String r0 = r0.permission
                if (r0 == 0) goto L41
                r0 = r6
                r7 = r0
                r0 = r5
                r1 = r4
                android.content.pm.ActivityInfo r1 = r1.activityInfo
                java.lang.String r1 = r1.permission
                int r0 = r0.checkSelfPermission(r1)
                if (r0 != 0) goto L16
            L41:
                r0 = 1
                r7 = r0
                goto L16
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.C0628i.ActionMode$CallbackC0629a.m20125a(android.content.pm.ResolveInfo, android.content.Context):boolean");
        }

        /* renamed from: a */
        private boolean m20122a(TextView textView) {
            return (textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled();
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f2196a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f2196a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f2196a.onDestroyActionMode(actionMode);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            m20123a(menu);
            return this.f2196a.onPrepareActionMode(actionMode, menu);
        }
    }

    /* renamed from: a */
    private static int m20146a(TextDirectionHeuristic textDirectionHeuristic) {
        int i;
        if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
            i = 1;
        } else {
            i = 1;
            if (textDirectionHeuristic != TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                if (textDirectionHeuristic == TextDirectionHeuristics.ANYRTL_LTR) {
                    i = 2;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.LTR) {
                    i = 3;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.RTL) {
                    i = 4;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.LOCALE) {
                    i = 5;
                } else if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_LTR) {
                    i = 6;
                } else {
                    i = 1;
                    if (textDirectionHeuristic == TextDirectionHeuristics.FIRSTSTRONG_RTL) {
                        i = 7;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public static int m20145a(TextView textView) {
        int i;
        if (Build.VERSION.SDK_INT >= 16) {
            i = textView.getMaxLines();
        } else {
            if (!f2195d) {
                f2194c = m20137a("mMaxMode");
                f2195d = true;
            }
            if (f2194c != null && m20136a(f2194c, textView) == 1) {
                if (!f2193b) {
                    f2192a = m20137a("mMaximum");
                    f2193b = true;
                }
                if (f2192a != null) {
                    i = m20136a(f2192a, textView);
                }
            }
            i = -1;
        }
        return i;
    }

    /* renamed from: a */
    private static int m20136a(Field field, TextView textView) {
        int i;
        try {
            i = field.getInt(textView);
        } catch (IllegalAccessException e) {
            Log.d("TextViewCompat", "Could not retrieve value of " + field.getName() + " field.");
            i = -1;
        }
        return i;
    }

    /* renamed from: a */
    public static ActionMode.Callback m20140a(TextView textView, ActionMode.Callback callback) {
        ActionMode$CallbackC0629a actionMode$CallbackC0629a = callback;
        if (Build.VERSION.SDK_INT >= 26) {
            actionMode$CallbackC0629a = callback;
            if (Build.VERSION.SDK_INT <= 27) {
                actionMode$CallbackC0629a = callback instanceof ActionMode$CallbackC0629a ? callback : new ActionMode$CallbackC0629a(callback, textView);
            }
        }
        return actionMode$CallbackC0629a;
    }

    /* renamed from: a */
    private static Field m20137a(String str) {
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
    public static void m20144a(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: a */
    public static void m20143a(TextView textView, ColorStateList colorStateList) {
        C0527f.m20644a(textView);
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setCompoundDrawableTintList(colorStateList);
        } else if (!(textView instanceof AbstractC0631k)) {
        } else {
            ((AbstractC0631k) textView).setSupportCompoundDrawablesTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m20142a(TextView textView, PorterDuff.Mode mode) {
        C0527f.m20644a(textView);
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setCompoundDrawableTintMode(mode);
        } else if (!(textView instanceof AbstractC0631k)) {
        } else {
            ((AbstractC0631k) textView).setSupportCompoundDrawablesTintMode(mode);
        }
    }

    /* renamed from: a */
    public static void m20141a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else if (Build.VERSION.SDK_INT < 17) {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            boolean z = textView.getLayoutDirection() == 1;
            Drawable drawable5 = z ? drawable3 : drawable;
            if (!z) {
                drawable = drawable3;
            }
            textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
        }
    }

    /* renamed from: a */
    public static void m20139a(TextView textView, C0507c.C0508a c0508a) {
        if (Build.VERSION.SDK_INT >= 18) {
            textView.setTextDirection(m20146a(c0508a.m20665b()));
        }
        if (Build.VERSION.SDK_INT >= 23) {
            textView.getPaint().set(c0508a.m20667a());
            textView.setBreakStrategy(c0508a.m20664c());
            textView.setHyphenationFrequency(c0508a.m20663d());
            return;
        }
        float textScaleX = c0508a.m20667a().getTextScaleX();
        textView.getPaint().set(c0508a.m20667a());
        if (textScaleX == textView.getTextScaleX()) {
            textView.setTextScaleX((textScaleX / 2.0f) + 1.0f);
        }
        textView.setTextScaleX(textScaleX);
    }

    /* renamed from: a */
    public static void m20138a(TextView textView, C0507c c0507c) {
        if (!m20129e(textView).m20666a(c0507c.m20668a())) {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
        textView.setText(c0507c);
    }

    /* renamed from: b */
    public static void m20134b(TextView textView, int i) {
        C0527f.m20645a(i);
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
    public static Drawable[] m20135b(TextView textView) {
        Drawable[] compoundDrawables;
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 18) {
            compoundDrawables = textView.getCompoundDrawablesRelative();
        } else if (Build.VERSION.SDK_INT >= 17) {
            if (textView.getLayoutDirection() != 1) {
                z = false;
            }
            compoundDrawables = textView.getCompoundDrawables();
            if (z) {
                Drawable drawable = compoundDrawables[2];
                Drawable drawable2 = compoundDrawables[0];
                compoundDrawables[0] = drawable;
                compoundDrawables[2] = drawable2;
            }
        } else {
            compoundDrawables = textView.getCompoundDrawables();
        }
        return compoundDrawables;
    }

    /* renamed from: c */
    public static int m20133c(TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    /* renamed from: c */
    public static void m20132c(TextView textView, int i) {
        C0527f.m20645a(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = (Build.VERSION.SDK_INT < 16 || textView.getIncludeFontPadding()) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: d */
    public static int m20131d(TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    /* renamed from: d */
    public static void m20130d(TextView textView, int i) {
        C0527f.m20645a(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    /* renamed from: e */
    public static C0507c.C0508a m20129e(TextView textView) {
        C0507c.C0508a m20662a;
        if (Build.VERSION.SDK_INT >= 28) {
            m20662a = new C0507c.C0508a(textView.getTextMetricsParams());
        } else {
            C0507c.C0508a.C0509a c0509a = new C0507c.C0508a.C0509a(new TextPaint(textView.getPaint()));
            if (Build.VERSION.SDK_INT >= 23) {
                c0509a.m20661a(textView.getBreakStrategy());
                c0509a.m20659b(textView.getHyphenationFrequency());
            }
            if (Build.VERSION.SDK_INT >= 18) {
                c0509a.m20660a(m20128f(textView));
            }
            m20662a = c0509a.m20662a();
        }
        return m20662a;
    }

    /* renamed from: f */
    private static TextDirectionHeuristic m20128f(TextView textView) {
        TextDirectionHeuristic textDirectionHeuristic;
        boolean z = true;
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (Build.VERSION.SDK_INT < 28 || (textView.getInputType() & 15) != 3) {
            if (textView.getLayoutDirection() != 1) {
                z = false;
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
                case 7:
                    textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                    break;
                default:
                    if (!z) {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                        break;
                    } else {
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    }
            }
        } else {
            byte directionality = Character.getDirectionality(DecimalFormatSymbols.getInstance(textView.getTextLocale()).getDigitStrings()[0].codePointAt(0));
            textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
        }
        return textDirectionHeuristic;
    }
}
