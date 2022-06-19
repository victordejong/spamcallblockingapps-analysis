package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.core.p025g.C0527f;
/* renamed from: androidx.appcompat.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s.class */
final class C0361s {

    /* renamed from: a */
    private TextView f1489a;

    /* renamed from: b */
    private TextClassifier f1490b;

    public C0361s(TextView textView) {
        this.f1489a = (TextView) C0527f.m20644a(textView);
    }

    /* renamed from: a */
    public TextClassifier m21269a() {
        TextClassifier textClassifier;
        if (this.f1490b == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1489a.getContext().getSystemService(TextClassificationManager.class);
            textClassifier = textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
        } else {
            textClassifier = this.f1490b;
        }
        return textClassifier;
    }

    /* renamed from: a */
    public void m21268a(TextClassifier textClassifier) {
        this.f1490b = textClassifier;
    }
}
