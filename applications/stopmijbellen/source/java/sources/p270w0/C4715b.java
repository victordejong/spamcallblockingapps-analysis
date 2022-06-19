package p270w0;

import android.annotation.SuppressLint;
import android.text.Editable;
import androidx.emoji2.text.C0379n;
/* renamed from: w0.b */
/* loaded from: classes-dex2jar.jar:w0/b.class */
public final class C4715b extends Editable.Factory {

    /* renamed from: a */
    public static final Object f14567a = new Object();

    /* renamed from: b */
    public static volatile Editable.Factory f14568b;

    /* renamed from: c */
    public static Class<?> f14569c;

    @SuppressLint({"PrivateApi"})
    public C4715b() {
        try {
            f14569c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, C4715b.class.getClassLoader());
        } catch (Throwable th) {
        }
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(CharSequence charSequence) {
        Class<?> cls = f14569c;
        return cls != null ? new C0379n(cls, charSequence) : super.newEditable(charSequence);
    }
}
