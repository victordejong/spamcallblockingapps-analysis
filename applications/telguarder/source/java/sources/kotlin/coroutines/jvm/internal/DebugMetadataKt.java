package kotlin.coroutines.jvm.internal;

import com.google.android.gms.plus.PlusShare;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��0\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\bH\u0002\u001a\f\u0010\t\u001a\u00020\u0001*\u00020\bH\u0002\u001a\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b*\u00020\bH\u0001¢\u0006\u0002\u0010\r\u001a\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\bH\u0001¢\u0006\u0002\b\u0010\"\u000e\u0010��\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��¨\u0006\u0011"}, m400d2 = {"COROUTINES_DEBUG_METADATA_VERSION", "", "checkDebugMetadataVersion", "", "expected", "actual", "getDebugMetadataAnnotation", "Lkotlin/coroutines/jvm/internal/DebugMetadata;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "getLabel", "getSpilledVariableFieldMapping", "", "", "(Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)[Ljava/lang/String;", "getStackTraceElementImpl", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/coroutines/jvm/internal/DebugMetadataKt.class */
public final class DebugMetadataKt {
    private static final int COROUTINES_DEBUG_METADATA_VERSION = 1;

    private static final void checkDebugMetadataVersion(int i, int i2) {
        if (i2 <= i) {
            return;
        }
        throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i + ", got " + i2 + ". Please update the Kotlin standard library.").toString());
    }

    private static final DebugMetadata getDebugMetadataAnnotation(BaseContinuationImpl baseContinuationImpl) {
        return (DebugMetadata) baseContinuationImpl.getClass().getAnnotation(DebugMetadata.class);
    }

    private static final int getLabel(BaseContinuationImpl baseContinuationImpl) {
        int i;
        try {
            Field field = baseContinuationImpl.getClass().getDeclaredField(PlusShare.KEY_CALL_TO_ACTION_LABEL);
            Intrinsics.checkNotNullExpressionValue(field, "field");
            field.setAccessible(true);
            Object obj = field.get(baseContinuationImpl);
            Object obj2 = obj;
            if (!(obj instanceof Integer)) {
                obj2 = null;
            }
            Integer num = (Integer) obj2;
            i = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception e) {
            i = -1;
        }
        return i;
    }

    public static final String[] getSpilledVariableFieldMapping(BaseContinuationImpl getSpilledVariableFieldMapping) {
        Intrinsics.checkNotNullParameter(getSpilledVariableFieldMapping, "$this$getSpilledVariableFieldMapping");
        DebugMetadata debugMetadataAnnotation = getDebugMetadataAnnotation(getSpilledVariableFieldMapping);
        if (debugMetadataAnnotation != null) {
            checkDebugMetadataVersion(1, debugMetadataAnnotation.m385v());
            ArrayList arrayList = new ArrayList();
            int label = getLabel(getSpilledVariableFieldMapping);
            int[] m390i = debugMetadataAnnotation.m390i();
            int length = m390i.length;
            for (int i = 0; i < length; i++) {
                if (m390i[i] == label) {
                    arrayList.add(debugMetadataAnnotation.m386s()[i]);
                    arrayList.add(debugMetadataAnnotation.m387n()[i]);
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return (String[]) array;
        }
        return null;
    }

    public static final StackTraceElement getStackTraceElement(BaseContinuationImpl getStackTraceElementImpl) {
        String str;
        Intrinsics.checkNotNullParameter(getStackTraceElementImpl, "$this$getStackTraceElementImpl");
        DebugMetadata debugMetadataAnnotation = getDebugMetadataAnnotation(getStackTraceElementImpl);
        if (debugMetadataAnnotation != null) {
            checkDebugMetadataVersion(1, debugMetadataAnnotation.m385v());
            int label = getLabel(getStackTraceElementImpl);
            int i = label < 0 ? -1 : debugMetadataAnnotation.m389l()[label];
            String moduleName = ModuleNameRetriever.INSTANCE.getModuleName(getStackTraceElementImpl);
            if (moduleName == null) {
                str = debugMetadataAnnotation.m392c();
            } else {
                str = moduleName + '/' + debugMetadataAnnotation.m392c();
            }
            return new StackTraceElement(str, debugMetadataAnnotation.m388m(), debugMetadataAnnotation.m391f(), i);
        }
        return null;
    }
}
