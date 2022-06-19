package com.google.android.material.theme;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.C0212c0;
import androidx.appcompat.widget.C0215d;
import androidx.appcompat.widget.C0226f;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;
import p086f.C2676s;
import p091f4.C2750n;
import p166m3.C3639a;
import p294y3.C5004a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/theme/MaterialComponentsViewInflater.class */
public class MaterialComponentsViewInflater extends C2676s {
    @Override // p086f.C2676s
    /* renamed from: a */
    public C0215d mo3295a(Context context, AttributeSet attributeSet) {
        return new C2750n(context, attributeSet);
    }

    @Override // p086f.C2676s
    /* renamed from: b */
    public C0226f mo3294b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // p086f.C2676s
    /* renamed from: c */
    public AppCompatCheckBox mo3293c(Context context, AttributeSet attributeSet) {
        return new C3639a(context, attributeSet);
    }

    @Override // p086f.C2676s
    /* renamed from: d */
    public AppCompatRadioButton mo3292d(Context context, AttributeSet attributeSet) {
        return new C5004a(context, attributeSet);
    }

    @Override // p086f.C2676s
    /* renamed from: e */
    public C0212c0 mo3291e(Context context, AttributeSet attributeSet) {
        return new MaterialTextView(context, attributeSet);
    }
}
