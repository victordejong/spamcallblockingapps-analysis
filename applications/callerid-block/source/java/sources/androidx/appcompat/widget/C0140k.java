package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import d.h.l.h;
/* renamed from: androidx.appcompat.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
final class C0140k {

    /* renamed from: a */
    private TextView f637a;

    /* renamed from: b */
    private TextClassifier f638b;

    C0140k(TextView textView) {
        h.c(textView);
        this.f637a = textView;
    }

    /* renamed from: a */
    public TextClassifier m14563a() {
        TextClassifier textClassifier = this.f638b;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f637a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }

    /* renamed from: b */
    public void m14562b(TextClassifier textClassifier) {
        this.f638b = textClassifier;
    }
}
