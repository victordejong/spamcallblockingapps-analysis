package dagger.android;

import dagger.internal.GwtIncompatible;
import dagger.releasablereferences.CanReleaseReferences;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE})
@GwtIncompatible
@CanReleaseReferences
@Documented
/* loaded from: classes2-dex2jar.jar:dagger/android/ReleaseReferencesAt.class */
public @interface ReleaseReferencesAt {
    int value();
}
