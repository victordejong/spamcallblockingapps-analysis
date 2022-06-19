package p270w0;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.C0354d;
/* renamed from: w0.h */
/* loaded from: classes-dex2jar.jar:w0/h.class */
public class C4728h implements TransformationMethod {

    /* renamed from: a */
    public final TransformationMethod f14588a;

    public C4728h(TransformationMethod transformationMethod) {
        this.f14588a = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f14588a;
        CharSequence charSequence2 = charSequence;
        if (transformationMethod != null) {
            charSequence2 = transformationMethod.getTransformation(charSequence, view);
        }
        CharSequence charSequence3 = charSequence2;
        if (charSequence2 != null) {
            charSequence3 = C0354d.m8255a().m8254b() != 1 ? charSequence2 : C0354d.m8255a().m8248h(charSequence2);
        }
        return charSequence3;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
        TransformationMethod transformationMethod = this.f14588a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z, i, rect);
        }
    }
}
