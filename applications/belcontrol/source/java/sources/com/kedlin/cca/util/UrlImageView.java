package com.kedlin.cca.util;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/util/UrlImageView.class */
public class UrlImageView extends LinearLayout {

    /* renamed from: h */
    public static qe1 f4112h;

    /* renamed from: a */
    public Context f4113a;

    /* renamed from: b */
    public Drawable f4114b;

    /* renamed from: c */
    public ProgressBar f4115c;

    /* renamed from: d */
    public ImageView f4116d;

    /* renamed from: f */
    public int f4117f = 0;

    /* renamed from: g */
    public final Handler f4118g = new Handler(new C0717b());

    /* renamed from: com.kedlin.cca.util.UrlImageView$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/util/UrlImageView$a.class */
    public class C0716a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ String f4119a;

        /* renamed from: b */
        public final /* synthetic */ int f4120b;

        public C0716a(String str, int i) {
            UrlImageView.this = r4;
            this.f4119a = str;
            this.f4120b = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                UrlImageView.this.f4114b = UrlImageView.m4072i(this.f4119a);
                UrlImageView.this.f4118g.sendEmptyMessage(0);
            } catch (IOException e) {
                UrlImageView.f4112h.m806n(this.f4119a, BitmapFactory.decodeResource(fa1.m1840j().getResources(), this.f4120b), true);
                UrlImageView.this.f4118g.sendEmptyMessage(1);
            }
        }
    }

    /* renamed from: com.kedlin.cca.util.UrlImageView$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/util/UrlImageView$b.class */
    public class C0717b implements Handler.Callback {
        public C0717b() {
            UrlImageView.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            Drawable drawable;
            ImageView imageView;
            if (message.what == 0) {
                imageView = UrlImageView.this.f4116d;
                drawable = UrlImageView.this.f4114b;
            } else if (UrlImageView.this.f4117f <= 0) {
                UrlImageView.this.f4116d.setImageDrawable(fa1.m1840j().getResources().getDrawable(17301651));
                return true;
            } else {
                imageView = UrlImageView.this.f4116d;
                drawable = fa1.m1840j().getResources().getDrawable(UrlImageView.this.f4117f);
            }
            imageView.setImageDrawable(drawable);
            UrlImageView.this.f4116d.setVisibility(0);
            UrlImageView.this.f4115c.setVisibility(8);
            return true;
        }
    }

    public UrlImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue(null, "image");
        if (attributeValue != null) {
            m4071j(context, attributeValue, this.f4117f);
        } else {
            m4071j(context, null, this.f4117f);
        }
    }

    /* renamed from: i */
    public static Drawable m4072i(String str) {
        if (f4112h == null) {
            f4112h = new qe1();
        }
        BitmapDrawable bitmapDrawable = null;
        if (!TextUtils.isEmpty(str)) {
            bitmapDrawable = f4112h.m814f(str);
            if (bitmapDrawable == null) {
                try {
                    BitmapDrawable bitmapDrawable2 = new BitmapDrawable(fa1.m1840j().getResources(), (InputStream) FirebasePerfUrlConnection.getContent(new URL(str)));
                    try {
                        f4112h.m807m(str, null);
                    } catch (OutOfMemoryError e) {
                    }
                    bitmapDrawable = bitmapDrawable2;
                } catch (OutOfMemoryError e2) {
                }
            }
        }
        return bitmapDrawable;
    }

    /* renamed from: j */
    public final void m4071j(Context context, String str, int i) {
        this.f4113a = context;
        this.f4117f = i;
        ImageView imageView = new ImageView(this.f4113a);
        this.f4116d = imageView;
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.f4116d.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f4116d.setImageResource(i);
        ProgressBar progressBar = new ProgressBar(this.f4113a);
        this.f4115c = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f4115c.setIndeterminate(true);
        addView(this.f4115c);
        addView(this.f4116d);
        setImageDrawable(str, i);
    }

    public void setImageDrawable(String str, int i) {
        this.f4117f = i;
        if (TextUtils.isEmpty(str)) {
            this.f4115c.setVisibility(8);
            this.f4116d.setImageResource(i);
            return;
        }
        this.f4114b = null;
        this.f4115c.setVisibility(0);
        this.f4116d.setVisibility(8);
        new C0716a(str, i).start();
    }
}
