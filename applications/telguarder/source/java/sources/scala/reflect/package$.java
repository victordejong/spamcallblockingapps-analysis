package scala.reflect;

import java.lang.reflect.AccessibleObject;
/* loaded from: classes3-dex2jar.jar:scala/reflect/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;
    private final ClassManifestFactory$ ClassManifest = ClassManifestFactory$.MODULE$;
    private final ManifestFactory$ Manifest = ManifestFactory$.MODULE$;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public ClassManifestFactory$ ClassManifest() {
        return this.ClassManifest;
    }

    public ManifestFactory$ Manifest() {
        return this.Manifest;
    }

    public <T> ClassTag<T> classTag(ClassTag<T> classTag) {
        return classTag;
    }

    public <T extends AccessibleObject> T ensureAccessible(T t) {
        if (!t.isAccessible()) {
            try {
                t.setAccessible(true);
            } catch (SecurityException e) {
            }
        }
        return t;
    }
}
