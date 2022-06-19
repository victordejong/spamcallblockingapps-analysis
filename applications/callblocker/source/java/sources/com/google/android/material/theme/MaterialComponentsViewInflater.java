package com.google.android.material.theme;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.Keep;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.C0357o;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.p146e.C4640a;
import com.google.android.material.p155m.C4714a;
import com.google.android.material.textview.MaterialTextView;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/android/material/theme/MaterialComponentsViewInflater.class */
public class MaterialComponentsViewInflater extends AppCompatViewInflater {
    private static int floatingToolbarItemBackgroundResId = -1;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.appcompat.widget.AppCompatButton] */
    @Override // androidx.appcompat.app.AppCompatViewInflater
    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return shouldInflateAppCompatButton(context, attributeSet) ? new AppCompatButton(context, attributeSet) : new MaterialButton(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    protected AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new C4640a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    protected C0357o createRadioButton(Context context, AttributeSet attributeSet) {
        return new C4714a(context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatViewInflater
    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }

    protected boolean shouldInflateAppCompatButton(Context context, AttributeSet attributeSet) {
        boolean z;
        if (Build.VERSION.SDK_INT == 23 || Build.VERSION.SDK_INT == 24 || Build.VERSION.SDK_INT == 25) {
            if (floatingToolbarItemBackgroundResId == -1) {
                floatingToolbarItemBackgroundResId = context.getResources().getIdentifier("floatingToolbarItemBackgroundDrawable", "^attr-private", "android");
            }
            z = false;
            if (floatingToolbarItemBackgroundResId != 0) {
                z = false;
                if (floatingToolbarItemBackgroundResId != -1) {
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= attributeSet.getAttributeCount()) {
                            break;
                        }
                        if (attributeSet.getAttributeNameResource(i) == 16842964) {
                            if (floatingToolbarItemBackgroundResId == attributeSet.getAttributeListValue(i, null, 0)) {
                                z = true;
                                break;
                            }
                        }
                        i++;
                    }
                }
            }
        } else {
            z = false;
        }
        return z;
    }
}
