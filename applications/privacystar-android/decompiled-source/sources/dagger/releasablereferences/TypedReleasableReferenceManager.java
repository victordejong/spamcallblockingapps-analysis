package dagger.releasablereferences;

import dagger.internal.GwtIncompatible;
import java.lang.annotation.Annotation;
@GwtIncompatible
/* loaded from: classes2-dex2jar.jar:dagger/releasablereferences/TypedReleasableReferenceManager.class */
public interface TypedReleasableReferenceManager<M extends Annotation> extends ReleasableReferenceManager {
    M metadata();
}
