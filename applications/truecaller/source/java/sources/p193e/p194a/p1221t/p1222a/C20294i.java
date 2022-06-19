package p193e.p194a.p1221t.p1222a;

import android.text.Editable;
import android.view.KeyEvent;
import android.widget.EditText;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.android.truemoji.keyboard.EmojiView;
import p193e.p194a.p1221t.p1222a.ViewTreeObserver$OnGlobalLayoutListenerC20285h;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import s1.z.c.l;
/* renamed from: e.a.t.a.i */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/i.class */
public final class C20294i implements AbstractC20300o {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListenerC20285h f57102a;

    public C20294i(ViewTreeObserver$OnGlobalLayoutListenerC20285h viewTreeObserver$OnGlobalLayoutListenerC20285h) {
        this.f57102a = viewTreeObserver$OnGlobalLayoutListenerC20285h;
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
    /* renamed from: b */
    public void mo11246b() {
        EditText editText = this.f57102a.f57088l;
        l.e(editText, "$this$dispatchBackspace");
        editText.dispatchKeyEvent(new KeyEvent(0L, 0L, 0, 67, 0, 0, 0, 0, 6));
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
    /* renamed from: c */
    public boolean mo11245c(EmojiView emojiView, C20309d c20309d) {
        l.e(emojiView, ViewAction.VIEW);
        l.e(c20309d, "emoji");
        if (c20309d.f57120b.length == 0) {
            return false;
        }
        this.f57102a.f57083g.m11249a(emojiView, c20309d);
        return true;
    }

    @Override // p193e.p194a.p1221t.p1222a.AbstractC20300o
    /* renamed from: d */
    public void mo11244d(C20309d c20309d) {
        l.e(c20309d, "emoji");
        EditText editText = this.f57102a.f57088l;
        l.e(c20309d, "$this$emojiString");
        l.e(c20309d, "emoji");
        int[] iArr = c20309d.f57119a;
        String str = new String(iArr, 0, iArr.length);
        l.e(editText, "$this$insertAtSelection");
        l.e(str, "newText");
        Editable text = editText.getText();
        l.d(text, "text");
        int selectionStart = editText.getSelectionStart();
        int selectionEnd = editText.getSelectionEnd();
        if (selectionStart != -1 && selectionEnd != -1) {
            text.replace(selectionStart, selectionEnd, str);
        }
        this.f57102a.f57089m.mo11258c(c20309d);
        ViewTreeObserver$OnGlobalLayoutListenerC20285h.AbstractC20286a abstractC20286a = this.f57102a.f57093q;
        if (abstractC20286a != null) {
            abstractC20286a.m11267a();
        }
    }
}
