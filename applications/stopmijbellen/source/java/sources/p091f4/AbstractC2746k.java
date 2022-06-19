package p091f4;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
/* renamed from: f4.k */
/* loaded from: classes-dex2jar.jar:f4/k.class */
public abstract class AbstractC2746k {

    /* renamed from: a */
    public TextInputLayout f9403a;

    /* renamed from: b */
    public Context f9404b;

    /* renamed from: c */
    public CheckableImageButton f9405c;

    /* renamed from: d */
    public final int f9406d;

    public AbstractC2746k(TextInputLayout textInputLayout, int i) {
        this.f9403a = textInputLayout;
        this.f9404b = textInputLayout.getContext();
        this.f9405c = textInputLayout.getEndIconView();
        this.f9406d = i;
    }

    /* renamed from: a */
    public abstract void mo3168a();

    /* renamed from: b */
    public boolean mo3184b(int i) {
        return true;
    }

    /* renamed from: c */
    public void mo3183c(boolean z) {
    }
}
