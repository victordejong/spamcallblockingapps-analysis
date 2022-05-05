package dagger.android;

import com.google.errorprone.annotations.DoNotMock;
import dagger.BindsInstance;
@DoNotMock("Faked versions of AndroidInjector are much clearer than a mock. See https://google.github.io/dagger/testing")
/* loaded from: classes2-dex2jar.jar:dagger/android/AndroidInjector.class */
public interface AndroidInjector<T> {

    @DoNotMock
    /* loaded from: classes2-dex2jar.jar:dagger/android/AndroidInjector$Builder.class */
    public static abstract class Builder<T> implements Factory<T> {
        public abstract AndroidInjector<T> build();

        @Override // dagger.android.AndroidInjector.Factory
        public final AndroidInjector<T> create(T t) {
            seedInstance(t);
            return build();
        }

        @BindsInstance
        public abstract void seedInstance(T t);
    }

    @DoNotMock
    /* loaded from: classes2-dex2jar.jar:dagger/android/AndroidInjector$Factory.class */
    public interface Factory<T> {
        AndroidInjector<T> create(T t);
    }

    void inject(T t);
}
