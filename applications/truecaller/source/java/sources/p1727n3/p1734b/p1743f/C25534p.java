package p1727n3.p1734b.p1743f;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
/* renamed from: n3.b.f.p */
/* loaded from: classes-dex2jar.jar:n3/b/f/p.class */
public final class C25534p {

    /* renamed from: a */
    public TextView f71439a;

    /* renamed from: b */
    public TextClassifier f71440b;

    public C25534p(TextView textView) {
        this.f71439a = textView;
    }

    /* renamed from: a */
    public TextClassifier m3336a() {
        TextClassifier textClassifier = this.f71440b;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f71439a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }
}
