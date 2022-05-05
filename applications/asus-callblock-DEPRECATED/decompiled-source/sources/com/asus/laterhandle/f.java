package com.asus.laterhandle;

import android.animation.AnimatorSet;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.asus.laterhandle.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/asus/laterhandle/f.class */
public abstract class f implements c {
    protected Context f;
    protected WindowManager g;
    protected Bitmap i;
    protected FrameLayout j;
    protected Intent k;
    protected View l;
    protected d m;
    protected b.a n = null;
    protected AnimatorSet h = new AnimatorSet();

    /* JADX INFO: Access modifiers changed from: protected */
    public f(Context context, View view) {
        this.f = context;
        this.l = view;
        this.g = (WindowManager) this.f.getApplicationContext().getSystemService("window");
        this.j = new FrameLayout(this.f);
        this.j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        b();
        a();
        c();
    }

    protected abstract void a();

    protected abstract void b();

    protected abstract void c();

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        this.f = null;
        this.k = null;
        this.l = null;
        this.n = null;
        this.g.removeView(this.j);
        this.g = null;
        if (this.i != null) {
            this.i.recycle();
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        if (this.m != null) {
            Bundle bundle = this.m.f2925a;
            if (!bundle.containsKey("extra_boolean_issaveimage") || bundle.getBoolean("extra_boolean_issaveimage")) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    this.i = a.a(this.f, this.i);
                    Bitmap bitmap = this.i;
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream2);
                    bundle.putByteArray("extra_later_image", byteArrayOutputStream2.toByteArray());
                    byteArrayOutputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            this.m.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Bitmap f() {
        Bitmap createBitmap = Bitmap.createBitmap(this.l.getWidth(), this.l.getHeight(), Bitmap.Config.ARGB_8888);
        this.l.draw(new Canvas(createBitmap));
        return a.a(this.f, createBitmap);
    }
}
