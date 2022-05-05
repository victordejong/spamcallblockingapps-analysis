package androidx.databinding;
/* loaded from: classes-dex2jar.jar:androidx/databinding/Observable.class */
public interface Observable {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/Observable$OnPropertyChangedCallback.class */
    public static abstract class OnPropertyChangedCallback {
        public abstract void onPropertyChanged(Observable observable, int i);
    }

    void addOnPropertyChangedCallback(OnPropertyChangedCallback onPropertyChangedCallback);

    void removeOnPropertyChangedCallback(OnPropertyChangedCallback onPropertyChangedCallback);
}
