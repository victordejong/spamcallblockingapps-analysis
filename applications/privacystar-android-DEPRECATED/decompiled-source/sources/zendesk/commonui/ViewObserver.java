package zendesk.commonui;

import android.support.annotation.RestrictTo;
import android.view.View;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/ViewObserver.class */
public abstract class ViewObserver<T> implements ViewListener<T> {
    public static <T> View.OnClickListener clicks(final T t, ViewObserver<T> viewObserver) {
        return new View.OnClickListener() { // from class: zendesk.commonui.ViewObserver.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewObserver.this.onAction(t);
            }
        };
    }

    public static View.OnClickListener clicks(ViewObserver<Void> viewObserver) {
        return clicks(null, viewObserver);
    }

    public static <T> ViewObserver<T> create() {
        return new DefaultViewObserver();
    }

    public abstract void addListener(ViewListener<T> viewListener);
}
