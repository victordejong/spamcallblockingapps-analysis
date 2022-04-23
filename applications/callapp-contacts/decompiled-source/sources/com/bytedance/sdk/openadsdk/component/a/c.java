package com.bytedance.sdk.openadsdk.component.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.e.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/c.class */
class c extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f8560a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f8561b;

    /* renamed from: c  reason: collision with root package name */
    private i f8562c;

    public c(Context context) {
        super(context);
        this.f8561b = context;
        c();
    }

    private void c() {
        ImageView imageView = new ImageView(this.f8561b);
        this.f8560a = imageView;
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f8560a.setScaleType(ImageView.ScaleType.FIT_XY);
        addView(this.f8560a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i a() {
        return this.f8562c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Bitmap bitmap) {
        this.f8560a.setImageBitmap(bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(i iVar) {
        this.f8562c = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f8560a.setImageBitmap(null);
        setOnClickListener(null);
        this.f8562c = null;
    }
}
