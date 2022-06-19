package com.bytedance.sdk.openadsdk.component.p147a;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
/* renamed from: com.bytedance.sdk.openadsdk.component.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/c.class */
class C4361c extends FrameLayout {

    /* renamed from: a */
    private ImageView f16020a;

    /* renamed from: b */
    private final Context f16021b;

    /* renamed from: c */
    private C4557i f16022c;

    public C4361c(Context context) {
        super(context);
        this.f16021b = context;
        m35721c();
    }

    /* renamed from: c */
    private void m35721c() {
        ImageView imageView = new ImageView(this.f16021b);
        this.f16020a = imageView;
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f16020a.setScaleType(ImageView.ScaleType.FIT_XY);
        addView(this.f16020a);
    }

    /* renamed from: a */
    public C4557i m35725a() {
        return this.f16022c;
    }

    /* renamed from: a */
    public void m35724a(Bitmap bitmap) {
        this.f16020a.setImageBitmap(bitmap);
    }

    /* renamed from: a */
    public void m35723a(C4557i c4557i) {
        this.f16022c = c4557i;
    }

    /* renamed from: b */
    public void m35722b() {
        this.f16020a.setImageBitmap(null);
        setOnClickListener(null);
        this.f16022c = null;
    }
}
