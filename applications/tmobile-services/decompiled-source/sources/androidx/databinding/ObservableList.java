package androidx.databinding;

import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableList.class */
public interface ObservableList<T> extends List<T> {

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ObservableList$OnListChangedCallback.class */
    public static abstract class OnListChangedCallback<T extends ObservableList> {
        /* renamed from: a */
        public abstract void mo18584a(T t);

        /* renamed from: d */
        public abstract void mo18583d(T t, int i, int i2);

        /* renamed from: e */
        public abstract void mo18582e(T t, int i, int i2);

        /* renamed from: f */
        public abstract void mo18581f(T t, int i, int i2, int i3);

        /* renamed from: g */
        public abstract void mo18580g(T t, int i, int i2);
    }

    /* renamed from: i */
    void mo18642i(OnListChangedCallback<? extends ObservableList<T>> onListChangedCallback);
}
