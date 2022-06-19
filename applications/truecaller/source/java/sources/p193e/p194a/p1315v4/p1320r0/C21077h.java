package p193e.p194a.p1315v4.p1320r0;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import com.truecaller.sdk.C4417R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.v4.r0.h */
/* loaded from: classes12-dex2jar.jar:e/a/v4/r0/h.class */
public final class C21077h implements AbstractC26410a {

    /* renamed from: a */
    public final LinearLayout f59151a;

    /* renamed from: b */
    public final AppCompatCheckedTextView f59152b;

    /* renamed from: c */
    public final View f59153c;

    public C21077h(LinearLayout linearLayout, AppCompatCheckedTextView appCompatCheckedTextView, View view) {
        this.f59151a = linearLayout;
        this.f59152b = appCompatCheckedTextView;
        this.f59153c = view;
    }

    /* renamed from: a */
    public static C21077h m10375a(View view) {
        int i = C4417R.C4419id.checkbox;
        AppCompatCheckedTextView appCompatCheckedTextView = (AppCompatCheckedTextView) view.findViewById(i);
        if (appCompatCheckedTextView != null) {
            i = C4417R.C4419id.divider;
            View findViewById = view.findViewById(i);
            if (findViewById != null) {
                return new C21077h((LinearLayout) view, appCompatCheckedTextView, findViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
