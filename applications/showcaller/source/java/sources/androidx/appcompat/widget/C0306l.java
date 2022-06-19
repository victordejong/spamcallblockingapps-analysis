package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import p020b.p041h.p049k.C1597h;
/* renamed from: androidx.appcompat.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l.class */
final class C0306l {

    /* renamed from: a */
    private TextView f1324a;

    /* renamed from: b */
    private TextClassifier f1325b;

    public C0306l(TextView textView) {
        this.f1324a = (TextView) C1597h.m29659e(textView);
    }

    /* renamed from: a */
    public TextClassifier m34867a() {
        TextClassifier textClassifier = this.f1325b;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1324a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }

    /* renamed from: b */
    public void m34866b(TextClassifier textClassifier) {
        this.f1325b = textClassifier;
    }
}
