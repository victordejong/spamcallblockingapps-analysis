package androidx.appcompat.text;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.annotation.RestrictTo;
import java.util.Locale;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/text/AllCapsTransformationMethod.class */
public class AllCapsTransformationMethod implements TransformationMethod {

    /* renamed from: f */
    private Locale f440f;

    public AllCapsTransformationMethod(Context context) {
        this.f440f = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        return charSequence != null ? charSequence.toString().toUpperCase(this.f440f) : null;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
