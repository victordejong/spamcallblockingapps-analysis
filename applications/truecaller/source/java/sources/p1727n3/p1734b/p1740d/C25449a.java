package p1727n3.p1734b.p1740d;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;
/* renamed from: n3.b.d.a */
/* loaded from: classes-dex2jar.jar:n3/b/d/a.class */
public class C25449a implements TransformationMethod {

    /* renamed from: a */
    public Locale f71094a;

    public C25449a(Context context) {
        this.f71094a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        return charSequence != null ? charSequence.toString().toUpperCase(this.f71094a) : null;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
