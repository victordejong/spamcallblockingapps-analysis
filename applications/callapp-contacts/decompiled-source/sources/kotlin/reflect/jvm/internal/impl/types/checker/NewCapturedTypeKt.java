package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeKt.class */
public final class NewCapturedTypeKt {
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        if (r0.isEmpty() == false) goto L_0x0047;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.util.List<kotlin.reflect.jvm.internal.impl.types.TypeProjection> captureArguments(kotlin.reflect.jvm.internal.impl.types.UnwrappedType r7, kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus r8) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeKt.captureArguments(kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus):java.util.List");
    }

    public static final SimpleType captureFromArguments(SimpleType type, CaptureStatus status) {
        p.d(type, "type");
        p.d(status, "status");
        SimpleType simpleType = type;
        List<TypeProjection> captureArguments = captureArguments(simpleType, status);
        if (captureArguments == null) {
            return null;
        }
        return replaceArguments(simpleType, captureArguments);
    }

    private static final SimpleType replaceArguments(UnwrappedType unwrappedType, List<? extends TypeProjection> list) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.simpleType$default(unwrappedType.getAnnotations(), unwrappedType.getConstructor(), list, unwrappedType.isMarkedNullable(), null, 16, null);
    }
}
