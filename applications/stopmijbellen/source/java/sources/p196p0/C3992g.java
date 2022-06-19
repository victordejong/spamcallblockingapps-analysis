package p196p0;

import android.graphics.Paint;
import android.icu.text.DecimalFormatSymbols;
import android.os.Build;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.Objects;
import p124i4.C3102d;
import p141k0.C3310b;
/* renamed from: p0.g */
/* loaded from: classes-dex2jar.jar:p0/g.class */
public final class C3992g {

    /* renamed from: p0.g$a */
    /* loaded from: classes-dex2jar.jar:p0/g$a.class */
    public static class ActionMode$CallbackC3993a implements ActionMode.Callback {

        /* renamed from: a */
        public final ActionMode.Callback f12542a;

        /* renamed from: b */
        public final TextView f12543b;

        /* renamed from: c */
        public Class<?> f12544c;

        /* renamed from: d */
        public Method f12545d;

        /* renamed from: e */
        public boolean f12546e;

        /* renamed from: f */
        public boolean f12547f = false;

        public ActionMode$CallbackC3993a(ActionMode.Callback callback, TextView textView) {
            this.f12542a = callback;
            this.f12543b = textView;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f12542a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f12542a.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f12542a.onDestroyActionMode(actionMode);
        }

        /* JADX WARN: Removed duplicated region for block: B:65:0x0168 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0105 A[SYNTHETIC] */
        @Override // android.view.ActionMode.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onPrepareActionMode(android.view.ActionMode r9, android.view.Menu r10) {
            /*
                Method dump skipped, instructions count: 545
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p196p0.C3992g.ActionMode$CallbackC3993a.onPrepareActionMode(android.view.ActionMode, android.view.Menu):boolean");
        }
    }

    /* renamed from: a */
    public static C3310b.C3311a m1561a(TextView textView) {
        int i;
        int i2;
        TextDirectionHeuristic textDirectionHeuristic;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 28) {
            return new C3310b.C3311a(textView.getTextMetricsParams());
        }
        TextPaint textPaint = new TextPaint(textView.getPaint());
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 23) {
            i = 1;
            i2 = 1;
        } else {
            i = 0;
            i2 = 0;
        }
        TextDirectionHeuristic textDirectionHeuristic2 = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        if (i3 >= 23) {
            i = textView.getBreakStrategy();
            i2 = textView.getHyphenationFrequency();
        }
        if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else if (i3 < 28 || (textView.getInputType() & 15) != 3) {
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
        return new C3310b.C3311a(textPaint, textDirectionHeuristic, i, i2);
    }

    /* renamed from: b */
    public static void m1560b(TextView textView, int i) {
        C3102d.m2630i(i);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setFirstBaselineToTopHeight(i);
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.top : fontMetricsInt.ascent;
        if (i <= Math.abs(i2)) {
            return;
        }
        textView.setPadding(textView.getPaddingLeft(), i + i2, textView.getPaddingRight(), textView.getPaddingBottom());
    }

    /* renamed from: c */
    public static void m1559c(TextView textView, int i) {
        C3102d.m2630i(i);
        Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i2 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i > Math.abs(i2)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i - i2);
        }
    }

    /* renamed from: d */
    public static void m1558d(TextView textView, int i) {
        C3102d.m2630i(i);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i != fontMetricsInt) {
            textView.setLineSpacing(i - fontMetricsInt, 1.0f);
        }
    }

    /* renamed from: e */
    public static void m1557e(TextView textView, C3310b c3310b) {
        if (Build.VERSION.SDK_INT >= 29) {
            Objects.requireNonNull(c3310b);
            textView.setText((CharSequence) null);
            return;
        }
        C3310b.C3311a m1561a = m1561a(textView);
        Objects.requireNonNull(c3310b);
        if (!m1561a.m2390a(null)) {
            throw new IllegalArgumentException("Given text can not be applied to TextView.");
        }
        textView.setText(c3310b);
    }

    /* renamed from: f */
    public static void m1556f(TextView textView, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            textView.setTextAppearance(i);
        } else {
            textView.setTextAppearance(textView.getContext(), i);
        }
    }

    /* renamed from: g */
    public static ActionMode.Callback m1555g(ActionMode.Callback callback) {
        ActionMode.Callback callback2 = callback;
        if (callback instanceof ActionMode$CallbackC3993a) {
            callback2 = callback;
            if (Build.VERSION.SDK_INT >= 26) {
                callback2 = ((ActionMode$CallbackC3993a) callback).f12542a;
            }
        }
        return callback2;
    }

    /* renamed from: h */
    public static ActionMode.Callback m1554h(TextView textView, ActionMode.Callback callback) {
        int i = Build.VERSION.SDK_INT;
        return (i < 26 || i > 27 || (callback instanceof ActionMode$CallbackC3993a) || callback == null) ? callback : new ActionMode$CallbackC3993a(callback, textView);
    }
}
