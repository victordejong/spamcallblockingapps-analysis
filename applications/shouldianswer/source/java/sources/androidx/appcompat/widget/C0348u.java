package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.p022f.C0502e;
/* renamed from: androidx.appcompat.widget.u */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/u.class */
final class C0348u {

    /* renamed from: a */
    private TextView f1403a;

    /* renamed from: b */
    private TextClassifier f1404b;

    public C0348u(TextView textView) {
        this.f1403a = (TextView) C0502e.m6462a(textView);
    }

    /* renamed from: a */
    public TextClassifier m7030a() {
        TextClassifier textClassifier = this.f1404b;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1403a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }

    /* renamed from: a */
    public void m7029a(TextClassifier textClassifier) {
        this.f1404b = textClassifier;
    }
}
