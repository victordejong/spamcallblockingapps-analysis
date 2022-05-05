package androidx.databinding;

import androidx.annotation.Nullable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableField.class */
public class ObservableField<T> extends BaseObservableField implements Serializable {
    public static final long serialVersionUID = 1;
    public T mValue;

    public ObservableField() {
    }

    public ObservableField(T t) {
        this.mValue = t;
    }

    public ObservableField(Observable... observableArr) {
        super(observableArr);
    }

    @Nullable
    public T get() {
        return this.mValue;
    }

    public void set(T t) {
        if (t != this.mValue) {
            this.mValue = t;
            notifyChange();
        }
    }
}
