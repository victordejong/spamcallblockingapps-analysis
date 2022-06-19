package p270w0;

import android.os.Bundle;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
import androidx.emoji2.text.C0354d;
/* renamed from: w0.c */
/* loaded from: classes-dex2jar.jar:w0/c.class */
public final class C4716c extends InputConnectionWrapper {

    /* renamed from: a */
    public final TextView f14570a;

    /* renamed from: b */
    public final C4717a f14571b;

    /* renamed from: w0.c$a */
    /* loaded from: classes-dex2jar.jar:w0/c$a.class */
    public static class C4717a {
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00bd, code lost:
            if (java.lang.Character.isHighSurrogate(r0) != false) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0131, code lost:
            if (r14 != false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x014b, code lost:
            if (java.lang.Character.isLowSurrogate(r0) != false) goto L65;
         */
        /* JADX WARN: Removed duplicated region for block: B:75:0x018b  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean m546a(android.view.inputmethod.InputConnection r6, android.text.Editable r7, int r8, int r9, boolean r10) {
            /*
                Method dump skipped, instructions count: 585
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p270w0.C4716c.C4717a.m546a(android.view.inputmethod.InputConnection, android.text.Editable, int, int, boolean):boolean");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4716c(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        super(inputConnection, false);
        C4717a c4717a = new C4717a();
        this.f14570a = textView;
        this.f14571b = c4717a;
        if (C0354d.m8253c()) {
            C0354d m8255a = C0354d.m8255a();
            if (!m8255a.m8252d() || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            m8255a.f1584e.mo8243c(editorInfo);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i, int i2) {
        return this.f14571b.m546a(this, this.f14570a.getEditableText(), i, i2, false) || super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        return this.f14571b.m546a(this, this.f14570a.getEditableText(), i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2);
    }
}
