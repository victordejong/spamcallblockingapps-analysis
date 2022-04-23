package p012b.p016b.p026q;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import p012b.p042i.p053o.C0948h;
/* renamed from: b.b.q.k */
/* loaded from: classes-dex2jar.jar:b/b/q/k.class */
public final class C0704k {

    /* renamed from: a */
    public TextView f3469a;

    /* renamed from: b */
    public TextClassifier f3470b;

    public C0704k(TextView textView) {
        C0948h.m35442a(textView);
        this.f3469a = textView;
    }

    /* renamed from: a */
    public TextClassifier m36352a() {
        TextClassifier textClassifier = this.f3470b;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f3469a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }

    /* renamed from: a */
    public void m36351a(TextClassifier textClassifier) {
        this.f3470b = textClassifier;
    }
}
