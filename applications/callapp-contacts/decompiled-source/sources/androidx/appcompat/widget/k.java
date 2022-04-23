package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.e.d;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
final class k {

    /* renamed from: a  reason: collision with root package name */
    TextClassifier f1106a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f1107b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(TextView textView) {
        this.f1107b = (TextView) d.a(textView);
    }

    public final TextClassifier a() {
        TextClassifier textClassifier = this.f1106a;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1107b.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }
}
