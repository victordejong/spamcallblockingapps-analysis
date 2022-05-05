package android.support.v4.view;

import android.content.Context;
import android.text.method.SingleLineTransformationMethod;
import android.view.View;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/q.class */
final class q {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/view/q$a.class */
    public static final class a extends SingleLineTransformationMethod {

        /* renamed from: a  reason: collision with root package name */
        private Locale f238a;

        public a(Context context) {
            this.f238a = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public final CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            return transformation != null ? transformation.toString().toUpperCase(this.f238a) : null;
        }
    }
}
