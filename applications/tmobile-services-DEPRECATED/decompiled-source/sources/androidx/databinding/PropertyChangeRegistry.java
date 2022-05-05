package androidx.databinding;

import androidx.databinding.CallbackRegistry;
import androidx.databinding.Observable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/PropertyChangeRegistry.class */
public class PropertyChangeRegistry extends CallbackRegistry<Observable.OnPropertyChangedCallback, Observable, Void> {

    /* renamed from: k */
    private static final CallbackRegistry.NotifierCallback<Observable.OnPropertyChangedCallback, Observable, Void> f3539k = new CallbackRegistry.NotifierCallback<Observable.OnPropertyChangedCallback, Observable, Void>() { // from class: androidx.databinding.PropertyChangeRegistry.1
        /* renamed from: b */
        public void mo18605a(Observable.OnPropertyChangedCallback onPropertyChangedCallback, Observable observable, int i, Void r8) {
            onPropertyChangedCallback.mo18593d(observable, i);
        }
    };

    public PropertyChangeRegistry() {
        super(f3539k);
    }
}
