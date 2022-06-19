package p193e.p194a.p1011l.p1013c.p1014a;

import android.graphics.Typeface;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.p0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/p0.class */
public final class C16718p0 extends RecyclerView.AbstractC0313c0 implements AbstractC16684i2 {

    /* renamed from: a */
    public final g f46882a;

    /* renamed from: b */
    public final g f46883b;

    /* renamed from: c */
    public final g f46884c;

    /* renamed from: d */
    public final g f46885d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16718p0(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f46882a = C19286f.m13660s(view, 2131364203);
        this.f46883b = C19286f.m13660s(view, 2131364125);
        this.f46884c = C19286f.m13660s(view, C2752R.C2754id.subHeader1);
        this.f46885d = C19286f.m13660s(view, C2752R.C2754id.subHeader2);
    }

    /* renamed from: N4 */
    public final TextView m17089N4() {
        return (TextView) this.f46884c.getValue();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16684i2
    /* renamed from: W0 */
    public void mo17088W0(String str) {
        TextView textView = (TextView) this.f46885d.getValue();
        l.d(textView, "subHeader2View");
        C19286f.m13683U(textView, true ^ (str == null || str.length() == 0));
        TextView textView2 = (TextView) this.f46885d.getValue();
        l.d(textView2, "subHeader2View");
        textView2.setText(str);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16684i2
    /* renamed from: c1 */
    public void mo17087c1(String str) {
        TextView m17089N4 = m17089N4();
        l.d(m17089N4, "subHeader1View");
        C19286f.m13683U(m17089N4, true ^ (str == null || str.length() == 0));
        TextView m17089N42 = m17089N4();
        l.d(m17089N42, "subHeader1View");
        m17089N42.setText(str);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16684i2
    /* renamed from: k4 */
    public void mo17086k4(boolean z) {
        TextView m17089N4 = m17089N4();
        l.d(m17089N4, "subHeader1View");
        m17089N4.setTypeface(z ? Typeface.create("sans-serif-medium", 0) : Typeface.create("sans-serif", 0));
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16684i2
    /* renamed from: n */
    public void mo17085n(String str) {
        l.e(str, "text");
        TextView textView = (TextView) this.f46883b.getValue();
        l.d(textView, "headerTextView");
        textView.setText(str);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16684i2
    public void setIcon(int i) {
        ((ImageView) this.f46882a.getValue()).setImageResource(i);
    }
}
