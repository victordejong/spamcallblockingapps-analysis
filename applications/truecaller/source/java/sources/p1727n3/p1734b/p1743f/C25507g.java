package p1727n3.p1734b.p1743f;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import androidx.appcompat.C0032R;
import p1727n3.p1734b.p1736b.p1737a.C25440a;
/* renamed from: n3.b.f.g */
/* loaded from: classes-dex2jar.jar:n3/b/f/g.class */
public class C25507g extends MultiAutoCompleteTextView {

    /* renamed from: c */
    public static final int[] f71376c = {16843126};

    /* renamed from: a */
    public final C25499c f71377a;

    /* renamed from: b */
    public final C25536q f71378b;

    public C25507g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.autoCompleteTextViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25507g(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C25533o0.m3337a(context);
        C25529m0.m3344a(this, getContext());
        C25540r0 m3306q = C25540r0.m3306q(getContext(), attributeSet, f71376c, i, 0);
        if (m3306q.m3308o(0)) {
            setDropDownBackgroundDrawable(m3306q.m3316g(0));
        }
        m3306q.f71466b.recycle();
        C25499c c25499c = new C25499c(this);
        this.f71377a = c25499c;
        c25499c.m3390d(attributeSet, i);
        C25536q c25536q = new C25536q(this);
        this.f71378b = c25536q;
        c25536q.m3331e(attributeSet, i);
        c25536q.m3334b();
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C25499c c25499c = this.f71377a;
        if (c25499c != null) {
            c25499c.m3393a();
        }
        C25536q c25536q = this.f71378b;
        if (c25536q != null) {
            c25536q.m3334b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C25499c c25499c = this.f71377a;
        return c25499c != null ? c25499c.m3392b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C25499c c25499c = this.f71377a;
        return c25499c != null ? c25499c.m3391c() : null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        MediaSessionCompat.m43254a1(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C25499c c25499c = this.f71377a;
        if (c25499c != null) {
            c25499c.m3389e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C25499c c25499c = this.f71377a;
        if (c25499c != null) {
            c25499c.m3388f(i);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i) {
        setDropDownBackgroundDrawable(C25440a.m3540a(getContext(), i));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C25499c c25499c = this.f71377a;
        if (c25499c != null) {
            c25499c.m3386h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C25499c c25499c = this.f71377a;
        if (c25499c != null) {
            c25499c.m3385i(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C25536q c25536q = this.f71378b;
        if (c25536q != null) {
            c25536q.m3330f(context, i);
        }
    }
}
