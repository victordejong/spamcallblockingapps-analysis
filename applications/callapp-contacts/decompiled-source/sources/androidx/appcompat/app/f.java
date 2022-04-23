package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import androidx.core.view.f;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f.class */
public class f extends Dialog implements d {

    /* renamed from: a  reason: collision with root package name */
    private e f654a;

    /* renamed from: b  reason: collision with root package name */
    private final f.a f655b;

    public f(Context context) {
        this(context, 0);
    }

    public f(Context context, int i) {
        super(context, a(context, i));
        this.f655b = new f.a() { // from class: androidx.appcompat.app.f.1
            @Override // androidx.core.view.f.a
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return f.this.a(keyEvent);
            }
        };
        e b2 = b();
        b2.a(a(context, i));
        b2.c();
    }

    public f(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.f655b = new f.a() { // from class: androidx.appcompat.app.f.1
            @Override // androidx.core.view.f.a
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return f.this.a(keyEvent);
            }
        };
    }

    private static int a(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(a.C0018a.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        }
        return i2;
    }

    private e b() {
        if (this.f654a == null) {
            this.f654a = e.a(this, this);
        }
        return this.f654a;
    }

    public final boolean a() {
        return b().d(1);
    }

    final boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        b().b(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        b().i();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return androidx.core.view.f.a(this.f655b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) b().b(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        b().h();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        b().k();
        super.onCreate(bundle);
        b().c();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        b().f();
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeFinished(b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeStarted(b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public b onWindowStartingSupportActionMode(b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        b().c(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        b().a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        b().a(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        b().a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        b().a(charSequence);
    }
}
