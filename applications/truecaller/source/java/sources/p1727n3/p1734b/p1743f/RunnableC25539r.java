package p1727n3.p1734b.p1743f;

import android.graphics.Typeface;
import android.widget.TextView;
/* renamed from: n3.b.f.r */
/* loaded from: classes-dex2jar.jar:n3/b/f/r.class */
public class RunnableC25539r implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ TextView f71462a;

    /* renamed from: b */
    public final /* synthetic */ Typeface f71463b;

    /* renamed from: c */
    public final /* synthetic */ int f71464c;

    public RunnableC25539r(C25536q c25536q, TextView textView, Typeface typeface, int i) {
        this.f71462a = textView;
        this.f71463b = typeface;
        this.f71464c = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f71462a.setTypeface(this.f71463b, this.f71464c);
    }
}
