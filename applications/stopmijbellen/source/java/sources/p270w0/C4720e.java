package p270w0;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.emoji2.text.C0354d;
import androidx.emoji2.text.C0368h;
import java.util.Objects;
/* renamed from: w0.e */
/* loaded from: classes-dex2jar.jar:w0/e.class */
public final class C4720e implements KeyListener {

    /* renamed from: a */
    public final KeyListener f14576a;

    /* renamed from: b */
    public final C4721a f14577b;

    /* renamed from: w0.e$a */
    /* loaded from: classes-dex2jar.jar:w0/e$a.class */
    public static class C4721a {
    }

    public C4720e(KeyListener keyListener) {
        C4721a c4721a = new C4721a();
        this.f14576a = keyListener;
        this.f14577b = c4721a;
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i) {
        this.f14576a.clearMetaKeyState(view, editable, i);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.f14576a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        boolean z;
        Objects.requireNonNull(this.f14577b);
        Object obj = C0354d.f1578j;
        if (i != 67 ? i != 112 ? false : C0368h.m8234a(editable, keyEvent, true) : C0368h.m8234a(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z = true;
        } else {
            z = false;
        }
        boolean z2 = true;
        if (!z) {
            z2 = this.f14576a.onKeyDown(view, editable, i, keyEvent);
        }
        return z2;
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f14576a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.f14576a.onKeyUp(view, editable, i, keyEvent);
    }
}
