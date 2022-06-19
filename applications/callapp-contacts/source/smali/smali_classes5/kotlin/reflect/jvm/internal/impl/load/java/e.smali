.class public final Lkotlin/reflect/jvm/internal/impl/load/java/e;
.super Lkotlin/reflect/jvm/internal/impl/load/java/y;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/e;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/y;-><init>()V

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "functionDescriptor.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/e$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/e$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/e;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/load/java/y$b;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2096
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->c()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 66
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/e$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/e;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "builtinSignature"

    .line 69
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3056
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->a()Ljava/util/List;

    move-result-object v0

    .line 3033
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->ONE_COLLECTION_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    return-object p0

    .line 3095
    :cond_3
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->b()Ljava/util/Map;

    move-result-object v0

    .line 3035
    invoke-static {v0, p0}, Lkotlin/a/ai;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 3037
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->NULL:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    if-ne p0, v0, :cond_4

    .line 3039
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->OBJECT_PARAMETER_GENERIC:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    return-object p0

    .line 3041
    :cond_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->OBJECT_PARAMETER_NON_GENERIC:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->c()Ljava/util/Set;

    move-result-object v0

    .line 55
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z
    .locals 1

    .line 4097
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->d()Ljava/util/Set;

    move-result-object v0

    .line 4036
    check-cast v0, Ljava/lang/Iterable;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
