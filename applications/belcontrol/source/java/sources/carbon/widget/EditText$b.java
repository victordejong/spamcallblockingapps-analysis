package carbon.widget;

import android.graphics.Paint;
/* loaded from: classes-dex2jar.jar:carbon/widget/EditText$b.class */
public class EditText$b extends Paint {

    /* renamed from: a */
    public final /* synthetic */ int f2268a;

    /* renamed from: b */
    public final /* synthetic */ EditText f2269b;

    public EditText$b(EditText editText, int i) {
        this.f2269b = editText;
        this.f2268a = i;
    }

    @Override // android.graphics.Paint
    public void setColor(int i) {
        if (this.f2269b.getSelectionStart() == this.f2269b.getSelectionEnd()) {
            i = this.f2268a;
        }
        super.setColor(i);
    }
}
