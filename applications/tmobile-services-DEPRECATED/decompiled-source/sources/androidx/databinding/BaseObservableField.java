package androidx.databinding;

import androidx.databinding.Observable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/BaseObservableField.class */
abstract class BaseObservableField extends BaseObservable {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/BaseObservableField$DependencyCallback.class */
    class DependencyCallback extends Observable.OnPropertyChangedCallback {

        /* renamed from: a */
        final /* synthetic */ BaseObservableField f3511a;

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        /* renamed from: d */
        public void mo18593d(Observable observable, int i) {
            this.f3511a.m18690b();
        }
    }
}
