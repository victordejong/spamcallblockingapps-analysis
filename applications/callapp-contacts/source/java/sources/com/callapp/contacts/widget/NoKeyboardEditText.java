package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.autofill.AutofillValue;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.lang.reflect.Field;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/NoKeyboardEditText.class */
public class NoKeyboardEditText extends ResizingTextEditText {
    public NoKeyboardEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26692a(context, this);
    }

    public NoKeyboardEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26692a(context, this);
    }

    /* renamed from: a */
    private static void m26692a(Context context, NoKeyboardEditText noKeyboardEditText) {
        try {
            Field declaredField = TextView.class.getDeclaredField("mEditor");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(noKeyboardEditText);
            Field declaredField2 = obj.getClass().getDeclaredField("mSelectHandleRight");
            Field declaredField3 = obj.getClass().getDeclaredField("mSelectHandleCenter");
            Field declaredField4 = obj.getClass().getDeclaredField("mSelectHandleLeft");
            declaredField2.setAccessible(true);
            declaredField3.setAccessible(true);
            declaredField4.setAccessible(true);
            int m27386a = ThemeUtils.isCurrentDefaultTheme() ? ThemeUtils.m27386a(context, 2131099784) : -1;
            Drawable drawable = ViewUtils.getDrawable(2131232224);
            drawable.setColorFilter(m27386a, PorterDuff.Mode.SRC_IN);
            declaredField2.set(obj, drawable);
            Drawable drawable2 = ViewUtils.getDrawable(2131232223);
            drawable2.setColorFilter(m27386a, PorterDuff.Mode.SRC_IN);
            declaredField3.set(obj, drawable2);
            Drawable drawable3 = ViewUtils.getDrawable(2131232222);
            drawable3.setColorFilter(m27386a, PorterDuff.Mode.SRC_IN);
            declaredField4.set(obj, drawable3);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            CLog.m27609a(NoKeyboardEditText.class, e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void autofill(AutofillValue autofillValue) {
        AutofillValue autofillValue2 = autofillValue;
        if (autofillValue != null) {
            autofillValue2 = autofillValue;
            if (autofillValue.isText()) {
                autofillValue2 = AutofillValue.forText(T9Helper.m30360a((CharSequence) autofillValue.getTextValue().toString()));
            }
        }
        super.autofill(autofillValue2);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        boolean onTextContextMenuItem = super.onTextContextMenuItem(i);
        if (i == 16908322 || i == 16908337) {
            setText(T9Helper.m30360a((CharSequence) getText().toString()));
        }
        return onTextContextMenuItem;
    }
}
