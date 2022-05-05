package android.support.p004v7.view.menu;
/* renamed from: android.support.v7.view.menu.BaseWrapper */
/* loaded from: classes-dex2jar.jar:android/support/v7/view/menu/BaseWrapper.class */
class BaseWrapper<T> {
    final T mWrappedObject;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseWrapper(T t) {
        if (t == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.mWrappedObject = t;
    }

    public T getWrappedObject() {
        return this.mWrappedObject;
    }
}
