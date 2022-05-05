package androidx.appcompat.widget;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatTextClassifierHelper.class */
final class AppCompatTextClassifierHelper {
    @NonNull

    /* renamed from: a */
    private TextView f1002a;
    @Nullable

    /* renamed from: b */
    private TextClassifier f1003b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatTextClassifierHelper(@NonNull TextView textView) {
        Preconditions.m19337d(textView);
        this.f1002a = textView;
    }

    @NonNull
    @RequiresApi
    /* renamed from: a */
    public TextClassifier m21580a() {
        TextClassifier textClassifier = this.f1003b;
        TextClassifier textClassifier2 = textClassifier;
        if (textClassifier == null) {
            TextClassificationManager textClassificationManager = (TextClassificationManager) this.f1002a.getContext().getSystemService(TextClassificationManager.class);
            if (textClassificationManager != null) {
                return textClassificationManager.getTextClassifier();
            }
            textClassifier2 = TextClassifier.NO_OP;
        }
        return textClassifier2;
    }

    @RequiresApi
    /* renamed from: b */
    public void m21579b(@Nullable TextClassifier textClassifier) {
        this.f1003b = textClassifier;
    }
}
