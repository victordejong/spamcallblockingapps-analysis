package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.PaintDrawable;
import androidx.appcompat.widget.AppCompatTextView;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.ExpandableEmojiTextView;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.g6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g6.class */
public final class C5326g6 extends m implements a<AppCompatTextView> {

    /* renamed from: b */
    public final /* synthetic */ ExpandableEmojiTextView f18256b;

    /* renamed from: c */
    public final /* synthetic */ Context f18257c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5326g6(ExpandableEmojiTextView expandableEmojiTextView, Context context) {
        super(0);
        this.f18256b = expandableEmojiTextView;
        this.f18257c = context;
    }

    public Object invoke() {
        int textColor;
        int bgColor;
        float dimension = this.f18256b.getResources().getDimension(2131166517);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this.f18257c, null);
        appCompatTextView.setLayoutDirection(this.f18256b.getLayoutDirection());
        appCompatTextView.setText(2131889323);
        appCompatTextView.setTextAppearance(C2752R.style.MessageBubble_Incoming_Text);
        textColor = this.f18256b.getTextColor();
        appCompatTextView.setTextColor(textColor);
        boolean z = false;
        appCompatTextView.setPaddingRelative((int) dimension, 0, 0, 0);
        appCompatTextView.measure(0, 0);
        appCompatTextView.layout(0, 0, appCompatTextView.getMeasuredWidth(), appCompatTextView.getMeasuredHeight());
        PaintDrawable paintDrawable = new PaintDrawable();
        if (this.f18256b.getLayoutDirection() == 1) {
            z = true;
        }
        Paint paint = paintDrawable.getPaint();
        l.d(paint, "paint");
        float measuredWidth = z ? appCompatTextView.getMeasuredWidth() : 0.0f;
        float f = dimension;
        if (z) {
            f = appCompatTextView.getMeasuredWidth() - dimension;
        }
        bgColor = this.f18256b.getBgColor();
        paint.setShader(new LinearGradient(measuredWidth, 0.0f, f, 0.0f, 0, bgColor, Shader.TileMode.CLAMP));
        paintDrawable.setAutoMirrored(true);
        appCompatTextView.setBackground(paintDrawable);
        return appCompatTextView;
    }
}
