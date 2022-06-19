package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.p036e.C0833d;
/* renamed from: androidx.appcompat.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
final class C0398k {

    /* renamed from: a */
    TextClassifier f1597a;

    /* renamed from: b */
    private TextView f1598b;

    public C0398k(TextView textView) {
        this.f1598b = (TextView) C0833d.m44410a(textView);
    }

    /* renamed from: a */
    public final TextClassifier m45706a() {
        TextClassifier textClassifier = this.f1597a;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1598b.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }
}
