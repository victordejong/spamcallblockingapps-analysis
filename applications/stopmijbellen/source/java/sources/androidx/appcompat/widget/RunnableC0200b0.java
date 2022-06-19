package androidx.appcompat.widget;

import android.graphics.Typeface;
import android.widget.TextView;
/* renamed from: androidx.appcompat.widget.b0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b0.class */
public class RunnableC0200b0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ TextView f838a;

    /* renamed from: b */
    public final /* synthetic */ Typeface f839b;

    /* renamed from: c */
    public final /* synthetic */ int f840c;

    public RunnableC0200b0(C0196a0 c0196a0, TextView textView, Typeface typeface, int i) {
        this.f838a = textView;
        this.f839b = typeface;
        this.f840c = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f838a.setTypeface(this.f839b, this.f840c);
    }
}
