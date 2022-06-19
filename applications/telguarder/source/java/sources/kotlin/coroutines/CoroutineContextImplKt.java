package kotlin.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0018\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a+\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0007¨\u0006\b"}, m400d2 = {"getPolymorphicElement", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Element;", SDKConstants.PARAM_KEY, "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusPolymorphicKey", "Lkotlin/coroutines/CoroutineContext;", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/coroutines/CoroutineContextImplKt.class */
public final class CoroutineContextImplKt {
    public static final <E extends CoroutineContext.Element> E getPolymorphicElement(CoroutineContext.Element getPolymorphicElement, CoroutineContext.Key<E> key) {
        Intrinsics.checkNotNullParameter(getPolymorphicElement, "$this$getPolymorphicElement");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!(key instanceof AbstractCoroutineContextKey)) {
            if (getPolymorphicElement.getKey() != key) {
                getPolymorphicElement = null;
            }
            return (E) getPolymorphicElement;
        }
        AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
        E e = null;
        if (abstractCoroutineContextKey.isSubKey$kotlin_stdlib(getPolymorphicElement.getKey())) {
            e = abstractCoroutineContextKey.tryCast$kotlin_stdlib(getPolymorphicElement);
            if (!(e instanceof CoroutineContext.Element)) {
                e = null;
            }
        }
        return e;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [kotlin.coroutines.EmptyCoroutineContext] */
    /* JADX WARN: Type inference failed for: r0v9, types: [kotlin.coroutines.EmptyCoroutineContext] */
    public static final CoroutineContext minusPolymorphicKey(CoroutineContext.Element minusPolymorphicKey, CoroutineContext.Key<?> key) {
        Intrinsics.checkNotNullParameter(minusPolymorphicKey, "$this$minusPolymorphicKey");
        Intrinsics.checkNotNullParameter(key, "key");
        if (!(key instanceof AbstractCoroutineContextKey)) {
            CoroutineContext.Element element = minusPolymorphicKey;
            if (minusPolymorphicKey.getKey() == key) {
                element = EmptyCoroutineContext.INSTANCE;
            }
            return element;
        }
        AbstractCoroutineContextKey abstractCoroutineContextKey = (AbstractCoroutineContextKey) key;
        CoroutineContext.Element element2 = minusPolymorphicKey;
        if (abstractCoroutineContextKey.isSubKey$kotlin_stdlib(minusPolymorphicKey.getKey())) {
            element2 = minusPolymorphicKey;
            if (abstractCoroutineContextKey.tryCast$kotlin_stdlib(minusPolymorphicKey) != null) {
                element2 = EmptyCoroutineContext.INSTANCE;
            }
        }
        return element2;
    }
}
