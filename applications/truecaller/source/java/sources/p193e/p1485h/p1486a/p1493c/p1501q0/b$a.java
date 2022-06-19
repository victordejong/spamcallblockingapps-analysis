package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.widget.RelativeLayout;
import com.clevertap.android.sdk.customviews.CloseImageView;
/* renamed from: e.h.a.c.q0.b$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/b$a.class */
public class b$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ CloseImageView f63156a;

    /* renamed from: b */
    public final /* synthetic */ RelativeLayout f63157b;

    public b$a(b bVar, CloseImageView closeImageView, RelativeLayout relativeLayout) {
        this.f63156a = closeImageView;
        this.f63157b = relativeLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        int measuredWidth = this.f63156a.getMeasuredWidth() / 2;
        this.f63156a.setX(this.f63157b.getRight() - measuredWidth);
        this.f63156a.setY(this.f63157b.getTop() - measuredWidth);
    }
}
