package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/g.class */
final class g {

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/g$a.class */
    static class a implements LayoutInflater.Factory {

        /* renamed from: a  reason: collision with root package name */
        final i f230a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(i iVar) {
            this.f230a = iVar;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f230a.a(null, str, context, attributeSet);
        }

        public String toString() {
            return getClass().getName() + "{" + this.f230a + "}";
        }
    }
}
