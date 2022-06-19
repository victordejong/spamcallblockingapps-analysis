package p193e.p194a.p1080o.p1102o;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.contextcall.C3771R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.o.o.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/o/f.class */
public final class C18793f implements AbstractC26410a {

    /* renamed from: a */
    public final CardView f52792a;

    /* renamed from: b */
    public final Button f52793b;

    /* renamed from: c */
    public final View f52794c;

    public C18793f(CardView cardView, ConstraintLayout constraintLayout, TextView textView, Button button, View view, AppCompatImageView appCompatImageView, TextView textView2, TextView textView3) {
        this.f52792a = cardView;
        this.f52793b = button;
        this.f52794c = view;
    }

    /* renamed from: a */
    public static C18793f m14464a(View view) {
        int i = C3771R.C3773id.container;
        ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
        if (constraintLayout != null) {
            i = C3771R.C3773id.description;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = C3771R.C3773id.gotItBtn;
                Button button = (Button) view.findViewById(i);
                if (button != null) {
                    i = C3771R.C3773id.gotItDivider;
                    View findViewById = view.findViewById(i);
                    if (findViewById != null) {
                        i = C3771R.C3773id.infoImage;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(i);
                        if (appCompatImageView != null) {
                            i = C3771R.C3773id.subtitle;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = C3771R.C3773id.title;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    return new C18793f((CardView) view, constraintLayout, textView, button, findViewById, appCompatImageView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
