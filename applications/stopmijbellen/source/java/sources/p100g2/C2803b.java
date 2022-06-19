package p100g2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.C0245k;
import java.lang.reflect.Field;
import me.zhanghai.android.materialprogressbar.C3681R;
import p066d0.C2134a;
import p098g0.C2789a;
import p111h2.C3003b;
@SuppressLint({"PrivateResource"})
/* renamed from: g2.b */
/* loaded from: classes-dex2jar.jar:g2/b.class */
public class C2803b {
    /* JADX WARN: Type inference failed for: r3v7, types: [int[], int[][]] */
    /* renamed from: a */
    public static void m2996a(CheckBox checkBox, int i) {
        int m2765c = C3003b.m2765c(checkBox.getContext());
        m2995b(checkBox, new ColorStateList(new int[]{new int[]{16842910, -16842912}, new int[]{16842910, 16842912}, new int[]{-16842910, -16842912}, new int[]{-16842910, 16842912}}, new int[]{C3003b.m2761g(checkBox.getContext(), C3681R.attr.colorControlNormal), i, m2765c, m2765c}));
    }

    /* renamed from: b */
    public static void m2995b(CheckBox checkBox, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 22) {
            checkBox.setButtonTintList(colorStateList);
            return;
        }
        Context context = checkBox.getContext();
        Object obj = C2134a.f7832a;
        Drawable m3007h = C2789a.m3007h(C2134a.C2136b.m3841b(context, C3681R.C3683drawable.abc_btn_check_material));
        m3007h.setTintList(colorStateList);
        checkBox.setButtonDrawable(m3007h);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: c */
    public static void m2994c(EditText editText, int i) {
        Context context = editText.getContext();
        ColorStateList colorStateList = new ColorStateList(new int[]{new int[]{-16842910}, new int[]{-16842919, -16842908}, new int[0]}, new int[]{C3003b.m2760h(context, C3681R.attr.colorControlNormal, 0), C3003b.m2760h(context, C3681R.attr.colorControlNormal, 0), i});
        if (editText instanceof C0245k) {
            ((C0245k) editText).setSupportBackgroundTintList(colorStateList);
        } else {
            editText.setBackgroundTintList(colorStateList);
        }
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Context context2 = editText.getContext();
            Object obj2 = C2134a.f7832a;
            Drawable[] drawableArr = {C2134a.C2136b.m3841b(context2, i2), C2134a.C2136b.m3841b(editText.getContext(), i2)};
            drawableArr[0].setColorFilter(i, PorterDuff.Mode.SRC_IN);
            drawableArr[1].setColorFilter(i, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, drawableArr);
        } catch (NoSuchFieldException e) {
            e.getMessage();
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m2993d(RadioButton radioButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 22) {
            radioButton.setButtonTintList(colorStateList);
            return;
        }
        Context context = radioButton.getContext();
        Object obj = C2134a.f7832a;
        Drawable m3007h = C2789a.m3007h(C2134a.C2136b.m3841b(context, C3681R.C3683drawable.abc_btn_radio_material));
        m3007h.setTintList(colorStateList);
        radioButton.setButtonDrawable(m3007h);
    }

    /* renamed from: e */
    public static void m2992e(SeekBar seekBar, int i) {
        ColorStateList valueOf = ColorStateList.valueOf(i);
        seekBar.setThumbTintList(valueOf);
        seekBar.setProgressTintList(valueOf);
    }
}
