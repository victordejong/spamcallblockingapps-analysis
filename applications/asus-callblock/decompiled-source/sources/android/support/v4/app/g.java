package android.support.v4.app;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/g.class */
abstract class g extends f {
    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View a2 = a(view, str, context, attributeSet);
        View view2 = a2;
        if (a2 == null) {
            view2 = a2;
            if (Build.VERSION.SDK_INT >= 11) {
                view2 = super.onCreateView(view, str, context, attributeSet);
            }
        }
        return view2;
    }
}
