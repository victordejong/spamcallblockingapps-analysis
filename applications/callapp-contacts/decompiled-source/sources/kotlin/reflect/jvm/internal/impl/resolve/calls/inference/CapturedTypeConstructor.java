package kotlin.reflect.jvm.internal.impl.resolve.calls.inference;

import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructor.class */
public interface CapturedTypeConstructor extends TypeConstructor, CapturedTypeConstructorMarker {
    TypeProjection getProjection();
}
