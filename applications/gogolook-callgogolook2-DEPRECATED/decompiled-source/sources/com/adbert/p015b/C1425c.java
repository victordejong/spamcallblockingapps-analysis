package com.adbert.p015b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.adbert.p009a.p012c.EnumC1385e;
/* renamed from: com.adbert.b.c */
/* loaded from: classes-dex2jar.jar:com/adbert/b/c.class */
public class C1425c extends RelativeLayout {

    /* renamed from: a */
    public int f703a;

    /* renamed from: b */
    public boolean f704b = false;

    public C1425c(Context context, int i) {
        super(context);
        this.f703a = (int) (i * 0.6d);
        m37084a();
    }

    /* renamed from: a */
    private void m37084a() {
        ImageView imageView = new ImageView(getContext());
        addView(imageView);
        imageView.setImageDrawable(EnumC1385e.delete.m37186a(getContext()));
        ((RelativeLayout.LayoutParams) imageView.getLayoutParams()).addRule(13);
        imageView.getLayoutParams().width = this.f703a;
        imageView.getLayoutParams().height = this.f703a;
        if (this.f704b) {
            Drawable drawable = imageView.getDrawable();
            drawable.setAlpha(180);
            imageView.setImageDrawable(drawable);
        }
    }
}
