package carbon.widget;

import android.graphics.Paint;
/* loaded from: classes-dex2jar.jar:carbon/widget/TextView$a.class */
public class TextView$a extends Paint {

    /* renamed from: a */
    public final /* synthetic */ TextView f2335a;

    public TextView$a(TextView textView) {
        this.f2335a = textView;
    }

    @Override // android.graphics.Paint
    public void setColor(int i) {
        if (this.f2335a.getSelectionStart() == this.f2335a.getSelectionEnd()) {
            i = this.f2335a.b;
        }
        super.setColor(i);
    }
}
