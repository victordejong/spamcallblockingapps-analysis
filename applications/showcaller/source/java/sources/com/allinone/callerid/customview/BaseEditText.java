package com.allinone.callerid.customview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import java.lang.reflect.Field;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/BaseEditText.class */
public class BaseEditText extends EditText {

    /* renamed from: d */
    private static Field f8445d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mParent");
            f8445d = declaredField;
            declaredField.setAccessible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public BaseEditText(Context context) {
        super(context);
    }

    public BaseEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BaseEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        try {
            Field field = f8445d;
            if (field != null) {
                field.set(this, null);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        }
        super.onDetachedFromWindow();
    }
}
