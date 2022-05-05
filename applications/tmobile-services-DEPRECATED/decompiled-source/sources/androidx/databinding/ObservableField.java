package androidx.databinding;

import androidx.annotation.Nullable;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableField.class */
public class ObservableField<T> extends BaseObservableField implements Serializable {
    static final long serialVersionUID = 1;

    /* renamed from: g */
    private T f3534g;

    public ObservableField() {
    }

    public ObservableField(T t) {
        this.f3534g = t;
    }

    @Nullable
    /* renamed from: c */
    public T m18647c() {
        return this.f3534g;
    }
}
