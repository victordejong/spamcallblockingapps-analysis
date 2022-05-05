package gogolook.callgogolook2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.AutoCompleteTextView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ImeStatusAwarableEditText.class */
public class ImeStatusAwarableEditText extends AutoCompleteTextView {

    /* renamed from: a */
    public AbstractC5276b f13060a;

    /* renamed from: gogolook.callgogolook2.view.ImeStatusAwarableEditText$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ImeStatusAwarableEditText$a.class */
    public class RunnableC5275a implements Runnable {
        public RunnableC5275a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!ImeStatusAwarableEditText.this.isPopupShowing()) {
                ImeStatusAwarableEditText.this.showDropDown();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.view.ImeStatusAwarableEditText$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ImeStatusAwarableEditText$b.class */
    public interface AbstractC5276b {
        /* renamed from: a */
        void mo25917a(ImeStatusAwarableEditText imeStatusAwarableEditText);
    }

    public ImeStatusAwarableEditText(Context context) {
        super(context);
    }

    public ImeStatusAwarableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ImeStatusAwarableEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void m25919a() {
        performFiltering(getText(), 0);
        postDelayed(new RunnableC5275a(), 200L);
    }

    /* renamed from: a */
    public void m25918a(AbstractC5276b bVar) {
        this.f13060a = bVar;
    }

    @Override // android.widget.AutoCompleteTextView
    public boolean enoughToFilter() {
        return true;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        AbstractC5276b bVar;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1 && (bVar = this.f13060a) != null) {
            bVar.mo25917a(this);
        }
        return super.dispatchKeyEvent(keyEvent);
    }
}
