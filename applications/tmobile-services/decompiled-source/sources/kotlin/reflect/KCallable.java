package kotlin.reflect;

import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u00022\u00020\u0003J'\u0010\u0007\u001a\u00028��2\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H&¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\u000b\u001a\u00028��2\u0014\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\tH&¢\u0006\u0004\b\u000b\u0010\fR\u001c\u0010\u000e\u001a\u00020\r8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0012\u001a\u00020\r8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0011\u001a\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0014\u001a\u00020\r8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\u0011\u001a\u0004\b\u0014\u0010\u000fR\u001c\u0010\u0016\u001a\u00020\r8&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0011\u001a\u0004\b\u0016\u0010\u000fR\u0016\u0010\u001b\u001a\u00020\u00188&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\u001c8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\"\u0010'\u001a\b\u0012\u0004\u0012\u00020$0\u001c8&@'X§\u0004¢\u0006\f\u0012\u0004\b&\u0010\u0011\u001a\u0004\b%\u0010\u001eR\u001e\u0010,\u001a\u0004\u0018\u00010(8&@'X§\u0004¢\u0006\f\u0012\u0004\b+\u0010\u0011\u001a\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lkotlin/reflect/KCallable;", "R", "Lkotlin/reflect/KAnnotatedElement;", "Lkotlin/Any;", "", "", "args", "call", "([Ljava/lang/Object;)Ljava/lang/Object;", "", "Lkotlin/reflect/KParameter;", "callBy", "(Ljava/util/Map;)Ljava/lang/Object;", "", "isAbstract", "()Z", "isAbstract$annotations", "()V", "isFinal", "isFinal$annotations", "isOpen", "isOpen$annotations", "isSuspend", "isSuspend$annotations", "", "getName", "()Ljava/lang/String;", "name", "", "getParameters", "()Ljava/util/List;", "parameters", "Lkotlin/reflect/KType;", "getReturnType", "()Lkotlin/reflect/KType;", "returnType", "Lkotlin/reflect/KTypeParameter;", "getTypeParameters", "getTypeParameters$annotations", "typeParameters", "Lkotlin/reflect/KVisibility;", "getVisibility", "()Lkotlin/reflect/KVisibility;", "getVisibility$annotations", "visibility", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/KCallable.class */
public interface KCallable<R> extends KAnnotatedElement {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/reflect/KCallable$DefaultImpls.class */
    public static final class DefaultImpls {
    }

    R call(@NotNull Object... objArr);

    R callBy(@NotNull Map<KParameter, ? extends Object> map);

    @NotNull
    List<KParameter> getParameters();

    @NotNull
    KType getReturnType();

    @NotNull
    List<KTypeParameter> getTypeParameters();

    @Nullable
    KVisibility getVisibility();

    boolean isAbstract();

    boolean isFinal();

    boolean isOpen();

    boolean isSuspend();
}
