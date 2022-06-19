package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import p117h8.C3035k;
import p270w0.C4722f;
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public class C0251m {

    /* renamed from: a */
    public final TextView f1014a;

    /* renamed from: b */
    public final C4722f f1015b;

    public C0251m(TextView textView) {
        this.f1014a = textView;
        this.f1015b = new C4722f(textView, false);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public void m8467a(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.f1014a.getContext().obtainStyledAttributes(attributeSet, C3035k.f10222i, i, 0);
        try {
            boolean z = true;
            if (obtainStyledAttributes.hasValue(14)) {
                z = obtainStyledAttributes.getBoolean(14, true);
            }
            obtainStyledAttributes.recycle();
            m8466b(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: b */
    public void m8466b(boolean z) {
        this.f1015b.f14578a.mo542d(z);
    }
}
