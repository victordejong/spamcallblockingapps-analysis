.class final Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 194
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "currentClass.componentType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->f:Lkotlin/reflect/jvm/internal/impl/c/c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    const-string v2, "topLevel(StandardNames.FqNames.unit.toSafe())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;I)V

    return-object p0

    .line 202
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->get(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getPrimitiveType()Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object p0

    const-string v1, "get(currentClass.name).primitiveType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_2

    .line 204
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/h;->getArrayTypeFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p0

    const-string v2, "topLevel(primitiveType.arrayTypeFqName)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;I)V

    return-object v1

    .line 206
    :cond_2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/h;->getTypeFqName()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p0

    const-string v2, "topLevel(primitiveType.typeFqName)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;I)V

    return-object v1

    .line 209
    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p0

    .line 210
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "javaClassId.asSingleFqName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v1

    .line 211
    :goto_1
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    invoke-direct {v1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;I)V

    return-object v1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V
    .locals 4

    .line 215
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 217
    const-class v1, Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    check-cast p3, Ljava/lang/Class;

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    return-void

    .line 220
    :cond_0
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/h;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V

    return-void

    .line 223
    :cond_1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->b(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-string v1, "if (clazz.isEnum) clazz else clazz.enclosingClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    .line 226
    check-cast p3, Ljava/lang/Enum;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p3

    const-string v1, "identifier((value as Enum<*>).name)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-void

    :cond_3
    const-class v1, Ljava/lang/annotation/Annotation;

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clazz.interfaces"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/a/i;->f([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v1, "annotationClass"

    .line 230
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 231
    :cond_4
    check-cast p3, Ljava/lang/annotation/Annotation;

    invoke-virtual {p0, p1, p3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    return-void

    .line 233
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 234
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    .line 235
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 237
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v0, "componentType"

    .line 238
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p2

    .line 239
    check-cast p3, [Ljava/lang/Object;

    array-length v0, p3

    :goto_1
    if-ge v1, v0, :cond_9

    aget-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    const-string v3, "null cannot be cast to non-null type kotlin.Enum<*>"

    .line 240
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    const-string v3, "identifier((element as Enum<*>).name)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    goto :goto_1

    .line 243
    :cond_7
    const-class v0, Ljava/lang/Class;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    check-cast p3, [Ljava/lang/Object;

    array-length p2, p3

    :goto_2
    if-ge v1, p2, :cond_9

    aget-object v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "null cannot be cast to non-null type java.lang.Class<*>"

    .line 244
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;)V

    goto :goto_2

    .line 246
    :cond_8
    check-cast p3, [Ljava/lang/Object;

    array-length p2, p3

    :goto_3
    if-ge v1, p2, :cond_9

    aget-object v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    .line 247
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 250
    :cond_9
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$b;->a()V

    return-void

    .line 253
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported annotation argument value ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;",
            ")V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "visitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    const-string v0, "klass.declaredAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    const-string v3, "annotation"

    .line 84
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;->b()V

    return-void
.end method

.method final a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 174
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p3

    const-string v0, "annotationType.declaredMethods"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    :try_start_0
    new-array v4, v1, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    const-string v5, "identifier(method.name)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;->a()V

    return-void
.end method

.method final a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;Ljava/lang/annotation/Annotation;)V
    .locals 3

    .line 163
    invoke-static {p2}, Lkotlin/jvm/a;->a(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/b;

    invoke-direct {v2, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/b;-><init>(Ljava/lang/annotation/Annotation;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-interface {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/c;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
