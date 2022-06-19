package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import p097g.C2788a;
import p124i4.C3102d;
import p196p0.C3992g;
/* renamed from: androidx.appcompat.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g.class */
public class C0229g extends CheckedTextView {

    /* renamed from: a */
    public final C0232h f943a;

    /* renamed from: b */
    public final C0221e f944b;

    /* renamed from: c */
    public final C0196a0 f945c;

    /* renamed from: d */
    public C0251m f946d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00da A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:3:0x007b, B:5:0x0083, B:7:0x0090, B:11:0x00a8, B:13:0x00b0, B:15:0x00bd, B:17:0x00d3, B:19:0x00da, B:21:0x00e7, B:23:0x00ee), top: B:31:0x007b }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ee A[Catch: all -> 0x0111, TryCatch #0 {all -> 0x0111, blocks: (B:3:0x007b, B:5:0x0083, B:7:0x0090, B:11:0x00a8, B:13:0x00b0, B:15:0x00bd, B:17:0x00d3, B:19:0x00da, B:21:0x00e7, B:23:0x00ee), top: B:31:0x007b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0229g(android.content.Context r9, android.util.AttributeSet r10) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0229g.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private C0251m getEmojiTextViewHelper() {
        if (this.f946d == null) {
            this.f946d = new C0251m(this);
        }
        return this.f946d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0196a0 c0196a0 = this.f945c;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
        C0221e c0221e = this.f944b;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0232h c0232h = this.f943a;
        if (c0232h != null) {
            c0232h.m8500a();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return C3992g.m1555g(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f944b;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f944b;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        C0232h c0232h = this.f943a;
        return c0232h != null ? c0232h.f949b : null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C0232h c0232h = this.f943a;
        return c0232h != null ? c0232h.f950c : null;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C3102d.m2648D(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().f1015b.f14578a.mo543c(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f944b;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f944b;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(C2788a.m3015b(getContext(), i));
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C0232h c0232h = this.f943a;
        if (c0232h != null) {
            if (c0232h.f953f) {
                c0232h.f953f = false;
                return;
            }
            c0232h.f953f = true;
            c0232h.m8500a();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3992g.m1554h(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().f1015b.f14578a.mo542d(z);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f944b;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f944b;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C0232h c0232h = this.f943a;
        if (c0232h != null) {
            c0232h.f949b = colorStateList;
            c0232h.f951d = true;
            c0232h.m8500a();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C0232h c0232h = this.f943a;
        if (c0232h != null) {
            c0232h.f950c = mode;
            c0232h.f952e = true;
            c0232h.m8500a();
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0196a0 c0196a0 = this.f945c;
        if (c0196a0 != null) {
            c0196a0.m8582f(context, i);
        }
    }
}
