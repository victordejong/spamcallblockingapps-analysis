package p000;

import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.DialerKeyListener;
import android.view.KeyEvent;
import android.view.View;
import com.kedlin.cca.p007ui.CallScreenLayout;
/* renamed from: vb1 */
/* loaded from: classes3-dex2jar.jar:vb1.class */
public class vb1 extends DialerKeyListener {

    /* renamed from: b */
    public static final char[] f8362b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '#', '*'};

    /* renamed from: c */
    public static final Spannable f8363c = new SpannableString("");

    /* renamed from: a */
    public final CallScreenLayout f8364a;

    public vb1(CallScreenLayout callScreenLayout) {
        this.f8364a = callScreenLayout;
    }

    /* renamed from: a */
    public boolean m338a(KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        char lookup = (char) lookup(keyEvent, f8363c);
        if (!DialerKeyListener.ok(getAcceptedChars(), lookup)) {
            return false;
        }
        this.f8364a.m4230p0(lookup);
        return true;
    }

    /* renamed from: b */
    public boolean m337b(KeyEvent keyEvent) {
        if (keyEvent == null) {
            return true;
        }
        if (!DialerKeyListener.ok(getAcceptedChars(), (char) lookup(keyEvent, f8363c))) {
            return false;
        }
        this.f8364a.m4280C0();
        return true;
    }

    @Override // android.text.method.BaseKeyListener
    public boolean backspace(View view, Editable editable, int i, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.text.method.DialerKeyListener, android.text.method.NumberKeyListener
    public char[] getAcceptedChars() {
        return f8362b;
    }

    @Override // android.text.method.NumberKeyListener, android.text.method.BaseKeyListener, android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(view, editable, i, keyEvent)) {
            return false;
        }
        return m338a(keyEvent);
    }

    @Override // android.text.method.MetaKeyKeyListener, android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        super.onKeyUp(view, editable, i, keyEvent);
        return m337b(keyEvent);
    }
}
