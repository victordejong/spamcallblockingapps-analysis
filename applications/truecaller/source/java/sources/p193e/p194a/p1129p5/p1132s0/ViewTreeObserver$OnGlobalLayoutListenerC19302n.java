package p193e.p194a.p1129p5.p1132s0;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import p193e.p194a.p682e.C12864a2;
/* renamed from: e.a.p5.s0.n */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/n.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC19302n implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ ImageView f53730a;

    /* renamed from: b */
    public final /* synthetic */ int f53731b;

    /* renamed from: c */
    public final /* synthetic */ boolean f53732c;

    /* renamed from: d */
    public final /* synthetic */ View f53733d;

    public ViewTreeObserver$OnGlobalLayoutListenerC19302n(ImageView imageView, int i, boolean z, View view) {
        this.f53730a = imageView;
        this.f53731b = i;
        this.f53732c = z;
        this.f53733d = view;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Bitmap decodeResource = BitmapFactory.decodeResource(this.f53730a.getResources(), this.f53731b);
        Bitmap m22545m = decodeResource != null ? this.f53732c ? C12864a2.m22545m(decodeResource, this.f53733d.getWidth(), 0) : C12864a2.m22545m(decodeResource, 0, this.f53733d.getHeight()) : null;
        if (m22545m != null) {
            decodeResource = m22545m;
        }
        if (decodeResource != null) {
            this.f53730a.setImageBitmap(decodeResource);
        } else {
            this.f53730a.setImageResource(this.f53731b);
        }
        this.f53733d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
