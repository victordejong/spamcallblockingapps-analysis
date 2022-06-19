package p020b.p021a.p027n;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;
/* renamed from: b.a.n.a */
/* loaded from: classes-dex2jar.jar:b/a/n/a.class */
public class C1453a implements TransformationMethod {

    /* renamed from: d */
    private Locale f5832d;

    public C1453a(Context context) {
        this.f5832d = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        return charSequence != null ? charSequence.toString().toUpperCase(this.f5832d) : null;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
