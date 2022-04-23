package dagger.android;
/* renamed from: dagger.android.AutoAnnotation_ReleaseReferencesAtCreator_createReleaseReferencesAt */
/* loaded from: classes2-dex2jar.jar:dagger/android/AutoAnnotation_ReleaseReferencesAtCreator_createReleaseReferencesAt.class */
final class C1800x2f53ae92 implements ReleaseReferencesAt {
    private final int value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1800x2f53ae92(int i) {
        this.value = i;
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends ReleaseReferencesAt> annotationType() {
        return ReleaseReferencesAt.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ReleaseReferencesAt)) {
            return false;
        }
        if (this.value != ((ReleaseReferencesAt) obj).value()) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return this.value ^ 1335633679;
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        return "@dagger.android.ReleaseReferencesAt(" + this.value + ')';
    }

    @Override // dagger.android.ReleaseReferencesAt
    public int value() {
        return this.value;
    }
}
