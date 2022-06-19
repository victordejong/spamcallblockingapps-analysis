.class public final Lkotlin/reflect/jvm/internal/impl/builtins/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/builtins/n;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/l;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/n;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->a:Lkotlin/reflect/jvm/internal/impl/builtins/n;

    .line 36
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/m;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 124
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 36
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->getTypeName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 123
    check-cast v1, Ljava/lang/Iterable;

    .line 36
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->b:Ljava/util/Set;

    .line 37
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/l;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/l;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 128
    array-length v2, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 37
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/l;->getTypeName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 127
    check-cast v1, Ljava/lang/Iterable;

    .line 37
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->c:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->d:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->e:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/n;

    .line 41
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/l;->UBYTEARRAY:Lkotlin/reflect/jvm/internal/impl/builtins/l;

    const-string v2, "ubyteArrayOf"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    aput-object v1, v0, v3

    .line 42
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/l;->USHORTARRAY:Lkotlin/reflect/jvm/internal/impl/builtins/l;

    const-string/jumbo v2, "ushortArrayOf"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 43
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/l;->UINTARRAY:Lkotlin/reflect/jvm/internal/impl/builtins/l;

    const-string v4, "uintArrayOf"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 44
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/l;->ULONGARRAY:Lkotlin/reflect/jvm/internal/impl/builtins/l;

    const-string v4, "ulongArrayOf"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    invoke-static {v0}, Lkotlin/a/ai;->b([Lkotlin/n;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->f:Ljava/util/HashMap;

    .line 47
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/m;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 131
    array-length v2, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 47
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->getArrayClassId()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 133
    :cond_2
    check-cast v1, Ljava/util/Set;

    .line 47
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/n;->g:Ljava/util/Set;

    .line 50
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->values()[Lkotlin/reflect/jvm/internal/impl/builtins/m;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 51
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/n;->d:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->getArrayClassId()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v5

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->getClassId()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/n;->e:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->getClassId()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v5

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/m;->getArrayClassId()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    const-string v0, "arrayClassId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->g:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 3

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->noExpectedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 67
    :cond_1
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1080
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    .line 1081
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v2, :cond_2

    .line 1082
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->m:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/n;->b:Ljava/util/Set;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
