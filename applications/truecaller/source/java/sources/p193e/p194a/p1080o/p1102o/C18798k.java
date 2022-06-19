package p193e.p194a.p1080o.p1102o;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.contextcall.C3771R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.o.o.k */
/* loaded from: classes8-dex2jar.jar:e/a/o/o/k.class */
public final class C18798k implements AbstractC26410a {

    /* renamed from: a */
    public final ConstraintLayout f52815a;

    /* renamed from: b */
    public final ImageView f52816b;

    /* renamed from: c */
    public final TextView f52817c;

    public C18798k(ConstraintLayout constraintLayout, ImageView imageView, TextView textView) {
        this.f52815a = constraintLayout;
        this.f52816b = imageView;
        this.f52817c = textView;
    }

    /* renamed from: a */
    public static C18798k m14463a(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C3771R.layout.context_call_on_demand_reason_item, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        int i = C3771R.C3773id.editMessageIcon;
        ImageView imageView = (ImageView) inflate.findViewById(i);
        if (imageView != null) {
            i = C3771R.C3773id.messageTextView;
            TextView textView = (TextView) inflate.findViewById(i);
            if (textView != null) {
                return new C18798k((ConstraintLayout) inflate, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }
}
