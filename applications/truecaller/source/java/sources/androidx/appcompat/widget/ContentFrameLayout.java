package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import java.util.Objects;
import p1727n3.p1734b.p1735a.C25422m;
import p1727n3.p1734b.p1735a.LayoutInflater$Factory2C25408k;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.AbstractC25547u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    public TypedValue f299a;

    /* renamed from: b */
    public TypedValue f300b;

    /* renamed from: c */
    public TypedValue f301c;

    /* renamed from: d */
    public TypedValue f302d;

    /* renamed from: e */
    public TypedValue f303e;

    /* renamed from: f */
    public TypedValue f304f;

    /* renamed from: g */
    public final Rect f305g = new Rect();

    /* renamed from: h */
    public AbstractC0056a f306h;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0056a {
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f303e == null) {
            this.f303e = new TypedValue();
        }
        return this.f303e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f304f == null) {
            this.f304f = new TypedValue();
        }
        return this.f304f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f301c == null) {
            this.f301c = new TypedValue();
        }
        return this.f301c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f302d == null) {
            this.f302d = new TypedValue();
        }
        return this.f302d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f299a == null) {
            this.f299a = new TypedValue();
        }
        return this.f299a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f300b == null) {
            this.f300b = new TypedValue();
        }
        return this.f300b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0056a abstractC0056a = this.f306h;
        if (abstractC0056a != null) {
            Objects.requireNonNull((C25422m) abstractC0056a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0056a abstractC0056a = this.f306h;
        if (abstractC0056a != null) {
            LayoutInflater$Factory2C25408k layoutInflater$Factory2C25408k = ((C25422m) abstractC0056a).f70945a;
            AbstractC25547u abstractC25547u = layoutInflater$Factory2C25408k.f70896k;
            if (abstractC25547u != null) {
                abstractC25547u.m3282i();
            }
            if (layoutInflater$Factory2C25408k.f70901p != null) {
                layoutInflater$Factory2C25408k.f70888e.getDecorView().removeCallbacks(layoutInflater$Factory2C25408k.f70902q);
                if (layoutInflater$Factory2C25408k.f70901p.isShowing()) {
                    try {
                        layoutInflater$Factory2C25408k.f70901p.dismiss();
                    } catch (IllegalArgumentException e) {
                    }
                }
                layoutInflater$Factory2C25408k.f70901p = null;
            }
            layoutInflater$Factory2C25408k.m3639L();
            C25469g c25469g = layoutInflater$Factory2C25408k.m3633R(0).f70933h;
            if (c25469g == null) {
                return;
            }
            c25469g.m3481c(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(AbstractC0056a abstractC0056a) {
        this.f306h = abstractC0056a;
    }
}
