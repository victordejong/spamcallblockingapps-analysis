package androidx.appcompat.p011d;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;
/* renamed from: androidx.appcompat.d.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/d/a.class */
public class C0153a implements TransformationMethod {

    /* renamed from: a */
    private Locale f523a;

    public C0153a(Context context) {
        this.f523a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        return charSequence != null ? charSequence.toString().toUpperCase(this.f523a) : null;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
