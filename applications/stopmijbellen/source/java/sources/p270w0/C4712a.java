package p270w0;

import android.text.method.KeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.emoji2.text.C0354d;
import java.util.Objects;
import p124i4.C3102d;
/* renamed from: w0.a */
/* loaded from: classes-dex2jar.jar:w0/a.class */
public final class C4712a {

    /* renamed from: a */
    public final C4714b f14564a;

    /* renamed from: w0.a$a */
    /* loaded from: classes-dex2jar.jar:w0/a$a.class */
    public static class C4713a extends C4714b {

        /* renamed from: a */
        public final EditText f14565a;

        /* renamed from: b */
        public final C4726g f14566b;

        public C4713a(EditText editText, boolean z) {
            this.f14565a = editText;
            C4726g c4726g = new C4726g(editText, z);
            this.f14566b = c4726g;
            editText.addTextChangedListener(c4726g);
            if (C4715b.f14568b == null) {
                synchronized (C4715b.f14567a) {
                    if (C4715b.f14568b == null) {
                        C4715b.f14568b = new C4715b();
                    }
                }
            }
            editText.setEditableFactory(C4715b.f14568b);
        }

        @Override // p270w0.C4712a.C4714b
        /* renamed from: a */
        public KeyListener mo549a(KeyListener keyListener) {
            if (keyListener instanceof C4720e) {
                return keyListener;
            }
            if (keyListener != null) {
                return new C4720e(keyListener);
            }
            return null;
        }

        @Override // p270w0.C4712a.C4714b
        /* renamed from: b */
        public InputConnection mo548b(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection instanceof C4716c ? inputConnection : new C4716c(this.f14565a, inputConnection, editorInfo);
        }

        @Override // p270w0.C4712a.C4714b
        /* renamed from: c */
        public void mo547c(boolean z) {
            C4726g c4726g = this.f14566b;
            if (c4726g.f14586d != z) {
                if (c4726g.f14585c != null) {
                    C0354d m8255a = C0354d.m8255a();
                    C0354d.AbstractC0360e abstractC0360e = c4726g.f14585c;
                    Objects.requireNonNull(m8255a);
                    C3102d.m2628k(abstractC0360e, "initCallback cannot be null");
                    m8255a.f1580a.writeLock().lock();
                    try {
                        m8255a.f1581b.remove(abstractC0360e);
                    } finally {
                        m8255a.f1580a.writeLock().unlock();
                    }
                }
                c4726g.f14586d = z;
                if (!z) {
                    return;
                }
                C4726g.m539a(c4726g.f14583a, C0354d.m8255a().m8254b());
            }
        }
    }

    /* renamed from: w0.a$b */
    /* loaded from: classes-dex2jar.jar:w0/a$b.class */
    public static class C4714b {
        /* renamed from: a */
        public KeyListener mo549a(KeyListener keyListener) {
            throw null;
        }

        /* renamed from: b */
        public InputConnection mo548b(InputConnection inputConnection, EditorInfo editorInfo) {
            throw null;
        }

        /* renamed from: c */
        public void mo547c(boolean z) {
            throw null;
        }
    }

    public C4712a(EditText editText, boolean z) {
        C3102d.m2628k(editText, "editText cannot be null");
        this.f14564a = new C4713a(editText, z);
    }
}
