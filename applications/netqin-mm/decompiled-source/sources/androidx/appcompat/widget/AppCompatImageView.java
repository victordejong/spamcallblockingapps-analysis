package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import p012b.p016b.p026q.C0675a0;
import p012b.p016b.p026q.C0684c0;
import p012b.p016b.p026q.C0685d;
import p012b.p016b.p026q.C0696h;
import p012b.p042i.p054p.AbstractC1001t;
import p012b.p042i.p056q.AbstractC1036l;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageView.class */
public class AppCompatImageView extends ImageView implements AbstractC1001t, AbstractC1036l {

    /* renamed from: a */
    public final C0685d f554a;

    /* renamed from: b */
    public final C0696h f555b;

    public AppCompatImageView(Context context) {
        this(context, null);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(Context context, AttributeSet attributeSet, int i) {
        super(C0684c0.m36459b(context), attributeSet, i);
        C0675a0.m36481a(this, getContext());
        C0685d dVar = new C0685d(this);
        this.f554a = dVar;
        dVar.m36453a(attributeSet, i);
        C0696h hVar = new C0696h(this);
        this.f555b = hVar;
        hVar.m36381a(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0685d dVar = this.f554a;
        if (dVar != null) {
            dVar.m36458a();
        }
        C0696h hVar = this.f555b;
        if (hVar != null) {
            hVar.m36386a();
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public ColorStateList getSupportBackgroundTintList() {
        C0685d dVar = this.f554a;
        return dVar != null ? dVar.m36452b() : null;
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0685d dVar = this.f554a;
        return dVar != null ? dVar.m36449c() : null;
    }

    @Override // p012b.p042i.p056q.AbstractC1036l
    public ColorStateList getSupportImageTintList() {
        C0696h hVar = this.f555b;
        return hVar != null ? hVar.m36380b() : null;
    }

    @Override // p012b.p042i.p056q.AbstractC1036l
    public PorterDuff.Mode getSupportImageTintMode() {
        C0696h hVar = this.f555b;
        return hVar != null ? hVar.m36379c() : null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f555b.m36378d() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0685d dVar = this.f554a;
        if (dVar != null) {
            dVar.m36450b(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0685d dVar = this.f554a;
        if (dVar != null) {
            dVar.m36457a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0696h hVar = this.f555b;
        if (hVar != null) {
            hVar.m36386a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0696h hVar = this.f555b;
        if (hVar != null) {
            hVar.m36386a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        C0696h hVar = this.f555b;
        if (hVar != null) {
            hVar.m36385a(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0696h hVar = this.f555b;
        if (hVar != null) {
            hVar.m36386a();
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0685d dVar = this.f554a;
        if (dVar != null) {
            dVar.m36451b(colorStateList);
        }
    }

    @Override // p012b.p042i.p054p.AbstractC1001t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0685d dVar = this.f554a;
        if (dVar != null) {
            dVar.m36455a(mode);
        }
    }

    @Override // p012b.p042i.p056q.AbstractC1036l
    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0696h hVar = this.f555b;
        if (hVar != null) {
            hVar.m36384a(colorStateList);
        }
    }

    @Override // p012b.p042i.p056q.AbstractC1036l
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0696h hVar = this.f555b;
        if (hVar != null) {
            hVar.m36383a(mode);
        }
    }
}
