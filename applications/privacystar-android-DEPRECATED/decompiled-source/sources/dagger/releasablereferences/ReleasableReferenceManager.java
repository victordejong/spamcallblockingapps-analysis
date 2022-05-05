package dagger.releasablereferences;

import dagger.internal.GwtIncompatible;
import java.lang.annotation.Annotation;
@GwtIncompatible
/* loaded from: classes2-dex2jar.jar:dagger/releasablereferences/ReleasableReferenceManager.class */
public interface ReleasableReferenceManager {
    void releaseStrongReferences();

    void restoreStrongReferences();

    Class<? extends Annotation> scope();
}
