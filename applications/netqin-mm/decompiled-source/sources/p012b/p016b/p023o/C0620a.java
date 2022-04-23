package p012b.p016b.p023o;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;
/* renamed from: b.b.o.a */
/* loaded from: classes-dex2jar.jar:b/b/o/a.class */
public class C0620a implements TransformationMethod {

    /* renamed from: a */
    public Locale f3072a;

    public C0620a(Context context) {
        this.f3072a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        return charSequence != null ? charSequence.toString().toUpperCase(this.f3072a) : null;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
